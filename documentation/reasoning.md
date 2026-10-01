# Noiser: Design Reasoning

Noiser (top cell `heichips26_noise_gen`, HeiChips 2026 small slot, 500 × 200 µm) is a set of on-chip noise generators against power side-channel attacks. It draws extra, configurable and partly random switching current from the shared supply. This makes the secret-dependent current of computations on the eFPGA harder to extract from a power trace. Two mechanisms are implemented (see [Noiser.pdf](Noiser.pdf)):

1. **Ring oscillators (ROs)** that drive large inverter loads.
2. **Glitch amplification**: one oscillator edge is turned into many transitions, which then drive a load.

All parameters can be set from the FPGA through a small register interface. A basic on-chip PRNG can re-randomise any subset of them every clock cycle.

## Architecture Overview

```
                   ┌─────────────────────────── ctrl ───────────────────────────┐
 ui_in[7:0] ──────►│ ctrl_regs: 4 byte-wise shift registers                     │
 uio_in[3:0] ─────►│ xorshift32 PRNG ──► per-bit force/PRNG mux ──► config[31:0]│──► uo_out[0] = config[7]
 clk, rst_n ──────►│                                                            │
                   └──────┬────────────────┬─────────────────┬──────────────┬───┘
                   en_ros[0], [3]    en_load[2:0]    sel_load_src[5:0]   config[31:0]
                          │                │                 │              ├─ [6:0]   ──► d_ro_tapped (invsel, ffsel)
                  ┌───────┴───────┐        │                 │              ├─ [21:16] ──► a_ro.invsel
                  ▼               ▼        │                 │              ├─ [15:8]  ──► load enables (e, f, g)
                a_ro         d_ro_tapped   │                 │              └─ [31:24] ──► e enables in a_ro tap mode
          (3 … 1011, + 8 taps) (15 … 139, ÷1 … ÷8)           │
                  └───────┬───────┘        ▼                 ▼
                          │          ┌──────────────────────────────────────────┐
                          └─────────►│ 3 × source select (top-level std cells)  │◄── uio_in[7] z_osc
                                     │ RO mux → AND en_load → z_osc bypass      │◄── uio_in[6] z_osc_sel
                                     └──────┬───────────────┬───────────────┬───┘
                                            ▼               ▼               ▼
                                     e_load_uniform   f_load_binary      g_glitch
```

`ctrl` is the only block on the `clk` clock. Everything after it is asynchronous to `clk`. The ROs and the source selection are combinational. Two macros contain flip-flops clocked by an oscillator: the divider of `d_ro_tapped` (clocked by its own ring) and the LFSRs of `f_load_binary` (clocked by the selected source).

## Design Decisions

### Control Logic

The ctrl macro (`macros/ctrl/`) holds all configuration state and the PRNG.

#### Inputs

| Pin | Signal | Function |
|---|---|---|
| `ui_in[7:0]` | `ctrl_din_i` | Data byte for register writes |
| `uio_in[0]` | `en_i` | Global enable for all ROs and loads |
| `uio_in[1]` | `ctrl_we_i` | Write enable. While high, one byte is shifted in per clock cycle |
| `uio_in[3:2]` | `ctrl_adr_i` | Register address |
| `uio_in[5:4]` | – | Unused |
| `uio_in[6]` | `z_osc_sel_i` | Drive all loads from the external oscillator instead of the on-chip ROs |
| `uio_in[7]` | `z_osc_i` | External oscillator input |
| `clk` | `clk_i` | Clock for ctrl and the PRNG. ctrl and the top level are constrained to 10 ns (100 MHz) |
| `rst_n` | `rst_in` | Synchronous, active-low reset |

`ena` is unused.

#### Outputs

| Pin | Function |
|---|---|
| `uo_out[0]` | `tst_o` = `config[7]`, a test output for bring-up |
| `uo_out[7:1]`, `uio_out[7:0]` | Tied to 0 |
| `uio_oe[7:0]` | Tied to 0, so all `uio` pins are inputs |

`tst_o` is the only view of the ctrl state from outside. With bit 7 forced, it reads back the forced value, which checks the write path. With bit 7 left to the PRNG, it toggles pseudo-randomly, which shows that the PRNG is running. No oscillator is routed to a pin (see [Open Points](#open-points)).

#### Register Map

Writes are byte-wise shift registers. Every clock cycle with `we` high shifts `din` into the register at `adr` from the LSB side. A register wider than 8 bits is written with several consecutive bytes, most significant byte first. `we` can stay high for all the bytes of one register (as `write_reg32` in the cocotb testbench does). There is no read-back.

| `adr` | Register | Width | Bytes | Reset | Content |
|---|---|---|---|---|---|
| `00` | PRNG seed | 32 | 4 | `0x12B9B0A1` (314159265) | Shifted directly into the xorshift32 state. The PRNG doesn't advance while it is being loaded |
| `01` | Force enable | 32 | 4 | `0xFFFFFFFF` | Per config bit: 1 = use the forced value, 0 = use the PRNG |
| `10` | Force value | 32 | 4 | `0x00000000` | Static value for the forced config bits |
| `11` | Control | 19 | 3 | `0` | `[3:0]` `en_ros` (a, b, c, d; the b and c bits are unused), `[6:4]` `en_load` (e, f, g), `[8:7]` / `[10:9]` / `[12:11]` source select for e / f / g, `[18:13]` `prng_div` (PRNG update rate) |

The 32-bit configuration word that parameterises the ROs and loads is built bit by bit:

```
config = (force_en & force_val) | (~force_en & prng)
```

Each parameter bit can therefore be static or re-randomised every clock cycle, independently of the others. For example, the load strength can stay fixed while the RO frequency hops, or the other way round. After reset every bit is forced to 0 and the control register is 0. The chip starts with all noise sources off and in a deterministic state.

| `config` bits | Used by |
|---|---|
| `[4:0]` | `d_ro_tapped.invsel` (loop length) |
| `[6:5]` | `d_ro_tapped.ffsel` (divider output) |
| `[7]` | `tst_o` → `uo_out[0]` |
| `[15:8]` | `e_load_uniform.en[7:0]` (normal mode) and `g_glitch.en[7:0]` |
| `[12:8]` | `f_load_binary.en[4:0]` |
| `[21:16]` | `a_ro.invsel` (loop length) |
| `[23:22]` | Unused |
| `[31:24]` | `e_load_uniform.en[7:0]` in a_ro tap mode: one enable per tap→branch connection |

**PRNG.** `xorshift32` is Marsaglia's 32-bit xorshift with shifts 13/17/5. It does at most one step per clock cycle (see PRNG rate below). If the state ever reaches the all-zero fixed point, a guard reloads the reset seed. All 32 bits are used. It was chosen for its small area and single-cycle update, not for cryptographic strength (the slides call it a "basic" PRNG). The seed can be loaded from the FPGA, so each run can use a different sequence.

**PRNG rate.** `prng_div` (control register `[18:13]`) sets how often the PRNG steps: every `prng_div + 1` clock cycles, so 1 … 64. All PRNG-driven config bits (RO tap selects, load enables, a_ro tap enables) therefore hold their value for `prng_div + 1` cycles. The reset value 0 steps every cycle. Loading a seed takes effect immediately, whatever the rate.

**Enable gating.** `en_ros` and `en_load` are ANDed with `en_i & ~we_i` (commit 4464480):

- `en_i` works as a global kill switch. The registers can be written while `en_i` is low, and all configured sources then start together when `en_i` goes high.
- `~we_i` stops all ROs and loads while a register is being shifted, so half-written values never switch sources on.
- A write while `en_i` is high stops the ROs only while `we_i` is high (1–4 clock cycles). That is shorter than a long a_ro loop needs to flush (up to ~1000 stages). The ring can then restart with several edges circulating, i.e. at a multiple of its normal frequency. This follows from the structure; it has not been simulated. For reproducible frequency measurements, write the registers with `en_i` low, then raise `en_i`.

The PRNG and `config` keep running whatever the value of `en_i`.

#### Connections between ROs and Loads

Each of the three loads has its own source path, built from standard cells in `noise_gen_top` (not a macro):

```
osc_at_X = z_osc_sel ? z_osc : (RO[sel_X] & en_load[X])     sel_X: 0 = a_ro, 3 = d_ro_tapped, 1 / 2 = constant 0
```

- b_ro and c_ro were removed, so codes 1 and 2 select a constant 0 for f and g (no oscillation). For e, code 1 is the a_ro tap mode (below) and code 2 is constant 0.
- Either RO can drive any load, and several loads can share one RO. Each RO/load pair can be measured on its own, or loads can be stacked for more current.
- The external-oscillator bypass (`z_osc_sel` / `z_osc`) is the fallback if the on-chip ROs don't oscillate, or oscillate at an unusable frequency. The FPGA then drives the loads directly with a clock of known frequency. `z_osc_sel` switches all three loads at once.
- The load strength comes from `config[15:8]` and is shared by all loads (see [Open Points](#open-points)).
- **a_ro tap mode (load e only).** `sel_X = 1` for load e (the code of the removed b_ro) drives each of the 8 e_load_uniform branches from its own a_ro intermediate output: branch *b* gets `a_ro.osc_tap[b]`. The branches are then enabled by `config[31:24]` instead of `config[15:8]`, so each tap→branch connection can be forced (e.g. all on) or switched by the PRNG. `en_load[0]` and the `z_osc` bypass work as in normal mode. a_ro must be enabled (`en_ros[0]`).

```
osc_at_e[b] = z_osc_sel ? z_osc : ((tap_mode ? a_ro.osc_tap[b] : RO[sel_e]) & en_load[0])
en_at_e     = tap_mode ? config[31:24] : config[15:8]          tap_mode = (sel_e == 1)
```

### Ring-Oscillators

- Two ROs are on the chip: the tapped and divided `d_ro_tapped` (main RO) and the long tapped `a_ro`, which also provides 8 phase-shifted outputs. The fixed ROs `b_ro` and `c_ro` were removed to make room; their directories are still in the repository but are not built or placed.
- Both share one structure: a chain of `sg13cmos5l_inv_1` cells, a tap mux, and an AND gate with `enable` that closes the loop (`inv_wire[0] = tap & enable`). With `enable` low, the loop sits at a static level. A disabled RO draws only leakage and restarts from a defined state once the chain has settled (see the enable-gating note above).
- Every tap is an odd number of inverters from the AND gate, so every code gives an oscillator. The mux and the AND don't invert.

| Macro | Loop length | Settings | Output | Role |
|---|---|---|---|---|
| `a_ro` | 3 + 16·invsel = 3 … 1011 inverters | 64 (`config[21:16]`) | `osc` = `inv_wire[2]`, plus 8 intermediate outputs `osc_tap[7:0]` | Wide frequency range, drives e_load_uniform per branch in tap mode |
| `d_ro_tapped` | 15 + 4·invsel = 15 … 139 inverters, then ÷1 / ÷2 / ÷4 / ÷8 | 32 × 4 (`config[4:0]`, `config[6:5]`) | `osc` = divider output selected by `ffsel`, ANDed with `enable` | Main RO, frequency hopping |

**Tapped and divided RO (d).**

- *Tap selection:* a 139-inverter chain with 32 taps at 15 + 4·k (k = `invsel[4:0]`). The minimum of 15 stages keeps the fastest setting slow enough for the divider flip-flops.
- *Divider:* a 3-stage ripple counter of `sg13cmos5l_dfrbp_1` cells, reset by `enable`, divides the tap-mux output by 2, 4 and 8. `ffsel[1:0]` selects ÷1, ÷2, ÷4 or ÷8.
- *Frequency hopping:* `invsel` and `ffsel` are `config[6:0]`. When these bits are left to the PRNG, the RO frequency hops randomly every `prng_div + 1` clock cycles. A hopping frequency is harder to remove by filtering or averaging than the fixed tone of a plain RO. This is why d is the main RO.
- *Current:* all 139 inverters toggle on every edge, not only the ones inside the loop.
- *Non-linearity:* the 32:1 tap mux (several gate levels) sits inside the loop. At short settings it dominates the loop delay, so the frequency range is much narrower than the 15 … 139 stage count suggests (see Verification).
- *Flow setting:* `osc` comes after the whole chain and the mux, so the flow sees a long virtual-clock path `enable → chain → mux → osc`. Without `set_false_path -to [get_ports osc]` in `impl.sdc` and `signoff.sdc`, post-CTS timing repair upsized 107 of the 139 ring inverters to `inv_4`/`inv_8`. `(* keep *)` keeps cells, but not their drive strength. a_ro has the same kind of false path on `osc_tap[*]`.

**Long tapped RO (a).**

- *Tap selection:* a 1011-inverter chain with 64 taps at 3 + 16·k (k = `invsel[5:0]`). The 64:1 tap mux sits inside the loop.
- *Intermediate outputs:* `osc_tap[7:0]` are buffered (`buf_1`) copies of the fixed chain nodes `inv_wire[112, 224, 337, 449, 561, 674, 786, 898]`, spread evenly over the chain. None of them is a loop tap, so each node carries at most one extra load. The whole chain is driven from the loop, so the taps toggle for every `invsel`, at the RO frequency and delayed by about p·t_inv. The PEX simulation confirms this for invsel 0, 21 and 63. The phase between taps therefore depends on `invsel`.
- *Output:* `osc` is taken at `inv_wire[2]`, two stages after the AND gate. The reason for this choice isn't documented (Open Point 7).

### Loads

The ROs are built from minimum-size `inv_1` cells and draw little current themselves. The loads turn an oscillator signal into a large, controllable supply current. The loads have no outputs. Their only job is the current they draw.

- `e_load_uniform` and the waster branches of `g_glitch` use the same building block: an enable-gated (`osc & en[b]`) tapered inverter chain `inv_1 → inv_2 → inv_4 → inv_8 → inv_16`, followed by more `inv_16` stages. Growing the drive strength about 2× per stage lets a minimum-size signal switch a large capacitance quickly without loading the RO.
- `f_load_binary` is a sequential load: identical LFSR branches whose flip-flops switch with pseudo-random data. (The name is historical. The macro used to hold binary-weighted inverter chains.)

| Macro | Structure | Enable bits | Strength steps | Die |
|---|---|---|---|---|
| `e_load_uniform` | 8 identical branches, each a taper plus a fan-out tree of 14 × `inv_16`. Each branch has its own `osc[b]` input | `config[15:8]` (tap mode: `config[31:24]`) | ∝ popcount(en): 0 … 8 | 150 × 55 µm |
| `f_load_binary` | 5 identical branches, each a 12-bit De Bruijn LFSR (60 flip-flops in total). Branch *b* is clocked by `osc & en[b]` and cleared asynchronously while `en[b]` is low | `config[12:8]` | ∝ popcount(en): 0 … 5 | 150 × 50 µm |
| `g_glitch` | Glitch generator (see below), then 8 branches of taper plus 4 × `inv_16` | `config[15:8]` | ∝ popcount(en): 0 … 8 | 150 × 30 µm |

- **Two kinds of load.**
  - `e` switches a large static CMOS capacitance on every oscillator edge, so its current follows the oscillator exactly.
  - `f` switches flip-flops with pseudo-random data, so its current pattern also depends on the LFSR state, not only on the oscillator.
  - Both are on the chip so that their effectiveness can be compared after tapeout (`submission.yaml`: "evaluate the effectiveness of different configurations").
  - When the enable bits come from the PRNG, the noise amplitude changes randomly every `prng_div + 1` clock cycles, in addition to the switching of the RO itself.
- **LFSR load (`f_load_binary`).**
  - *Feedback:* taps 12, 6, 4, 1 (XAPP052) plus the De Bruijn term, so the period is 4096 and the all-zero reset state is part of the sequence. There is no lock-up state: a runt clock or a timing error can corrupt the sequence, but it can never stop a branch.
  - *Timing:* the macro is timed with `osc` as a 400 MHz clock (`CLOCK_PERIOD: 2.5`). `en` is asynchronous to `osc` (`set_false_path -from en[*]`). Above about 400 MHz (slow corner), or about 660 MHz (typical), the sequence is no longer guaranteed, but the branch keeps switching. The fastest on-chip source in the PEX simulations is a_ro at invsel 0 with 0.52 GHz (typical), so it stays within the typical-corner limit.
- **Glitch amplification (`g_glitch`, "Noiser 2" in the slides).**
  - *Delay line:* the oscillator goes through an `inv_1 → inv_4` buffer into a delay line of 12 stages × 4 `inv_1`. That is 48 inverters, and each stage is non-inverting.
  - *XOR of the taps:* the 13 taps `w[0..12]` are XOR'd. An edge at the input ripples down the line and flips the XOR output once at every tap. One input edge thus becomes up to 13 transitions, spaced 4 inverter delays apart.
  - *Intended effect:* this multiplies the switching activity of a slow source and makes the current waveform spikier (simulation on slide 4). The glitchy signal then drives the waster branches.
  - *PEX result at 1.2 V (typical):* the multiplication does not happen. The XOR tree does not resolve transitions only 4 inverter delays apart.
    - The XOR output toggles at most about 2 times per input edge (0.25–0.45 GHz) and not at all at 0.77–1.0 GHz.
    - The waster branches switched only for inputs up to about 0.45 GHz, at no more than 2 transitions per input edge (see Open Point 8).
  - *Enables:* the buffer, delay line and XOR toggle whenever the input toggles. Only the waster branches are enable-gated.
- **Strength tuning (commit 02a5889).** One more `inv_16` was added to every inverter chain in the loads to increase the drawn current. The same commit widened the load macros from 130 µm to 150 µm and moved them from x = 360 to x = 340, to fix antenna violations.

### Implementation

- **One hard macro per block.** ctrl, every RO and every load are hardened separately with LibreLane. They are integrated as black boxes through the `MACROS` section of `macros/heichips26_digital_project/flow/librelane/config.yaml`. There are three reasons:
  - The ROs are combinational loops. Hardening them separately keeps the loops out of top-level synthesis and STA.
  - The loads have no outputs, so normal synthesis would remove them. Inside the macros every inverter is an explicitly instantiated `sg13cmos5l_inv_*` cell marked `(* keep *)`. This fixes the cell type and count. It does not stop the resizer from changing the drive strength, so every path into an RO output is a false path (see d_ro_tapped). The loads have no outputs, hence no timing endpoints, and keep their sizes.
  - Each macro has a fixed die and its own layout, so it can be extracted (Magic PEX) and simulated at transistor level on its own.
- **Simulation models.** An event-driven RTL simulator can't simulate a loop of zero-delay cells, so every RO has an `ifdef SIM` behavioural model. The a model toggles every 1 ps, and the d model every (invsel + 1)·2^ffsel ps. These models are only for functional simulation and don't reflect the real frequencies. The loads have no model: e and g need the standard-cell Verilog models, and the f RTL simulates as is.
- **Floorplan.** The design uses the small slot (500 × 200 µm, `heichips26_template_small.def`), and all I/O pins are on the left edge.
  - The `DIE_AREA` of each macro config and the `MACROS` locations in the top config are authoritative. At the time of writing:
  - *ctrl:* 180 × 160 µm, placed at (30, 30) next to the pins.
  - *ROs:* in the middle, with d (100 × 60 µm) at (220, 30) and a (100 × 100 µm) directly above it at (220, 90).
  - *Loads:* a column on the right at x = 340, with g at y = 25, f at y = 60 and e at y = 120.
  - *Glue logic:* the top-level source muxes and gating are standard cells in the remaining space.
  - *Metal layers:* routing is limited to Metal4. TopMetal1 stays empty, as the HeiChips integration requires.
- **Timing.**
  - ctrl is timed at 10 ns with a real clock tree. Its build shows setup WS +4.6 ns (slow corner) and hold WS +0.28 ns (fast corner).
  - The RO and load macros use the template's virtual clock. The paths to RO outputs are false paths, and f_load is timed with `osc` as a 400 MHz clock (setup WS +0.14 ns slow, +0.99 ns typical).
  - The top level is timed at 10 ns: setup WS +4.8 ns (slow corner), hold WS +1.97 ns (fast corner).
  - The flows only stop on typical-corner setup violations (`TIMING_VIOLATION_CORNERS` default `*typ*`), so check slow-corner setup in each run's `final/metrics.json`.
- **Signoff.** Each block and the top level are checked in their LibreLane runs: Magic and KLayout DRC, Netgen LVS, and OpenROAD antenna checks. The reports are copied to each block's `verification/`. The antenna violations of the loads were fixed as described under [Loads](#loads). The KLayout antenna check of the HeiChips precheck (`make precheck`) runs only in the precheck.
  - *Status (runs of 2026-10-01, 18:35–18:55):* all six macros and the top level have 0 Magic DRC, 0 KLayout DRC and 0 LVS errors, and no antenna-violating nets.
  - Both RO macros contain only `inv_1` inverters in these builds (a_ro: 1013, d_ro_tapped: 140), so the false paths work.
  - The top-level run still has a_ro at (220, 100). It has to be rebuilt (`make build-top` in `macros/heichips26_digital_project/`) to confirm signoff with a_ro at (220, 90).

## Verification

| Block | Method | Location |
|---|---|---|
| ctrl | cocotb + Icarus. Five tests: forced config, PRNG seed load, PRNG advances, control-register fields, PRNG rate (`prng_div`) | `macros/ctrl/testbenches/cocotb/ctrl_tb.py` (`make sim-rtl-cocotb`, `make sim-gl-cocotb`) |
| f_load_binary | Self-checking Verilog testbench: compares every branch with a reference model on every `osc` cycle, checks the 4096-state period, the clear on `en` low and the independence of the branches. RTL and gate level | `macros/f_load_binary/testbenches/verilog/f_load_binary_tb.sv` (`make sim-rtl-verilog`) |
| ROs, loads | xschem + ngspice transient on the full-RC Magic-PEX netlist of each hardened macro, VDD = 1.2 V, typical corner, 27 °C | `macros/<macro>/testbenches/xschem/*_tb_tran.sch` |
| Top level | DRC/LVS/antenna in the LibreLane flow, HeiChips precheck (`make precheck`) | `macros/heichips26_digital_project/verification/` |

**Results (2026-10-01).** The PEX results are for the macro layouts of 16:42 that day. Re-run them whenever a macro is re-hardened, e.g. after a die-size change.

- At about 18:15 the die sizes of a_ro, d_ro_tapped and ctrl changed (a_ro to 100 × 100 µm, d_ro_tapped to 100 × 60 µm, ctrl to 180 × 160 µm), and all macros were re-hardened between 18:35 and 18:52.
- The a_ro and d_ro_tapped PEX results below therefore come from older layouts and should be repeated on the current ones.
- The RTL and configs of e_load_uniform, f_load_binary and g_glitch didn't change, so their results should still hold. ctrl was re-simulated at gate level on the current netlist.

- **ctrl:** all 5 tests pass on the RTL and on the final gate-level netlist (`make sim-gl-cocotb`).
- **f_load_binary, function:** the testbench passes on the RTL and on the gate-level netlist.
- **d_ro_tapped:** PEX frequencies:
  - invsel 0: 387.5 MHz (÷1), 194.0 MHz (÷2), 97.0 MHz (÷4), 48.5 MHz (÷8). The divider flip-flops keep up at the fastest setting.
  - invsel 31: 80.8 MHz (÷1), 10.1 MHz (÷8).
  - Two consecutive periods match in every setting, so a single edge circulates.
  - The loop gets 9.3× longer from invsel 0 to 31, but the frequency drops only 4.8×, because the tap mux dominates at short settings.
  - The ring is all `inv_1` after the false-path fix.
  - The XSPICE instance in the testbench gives a frequency only for invsel 0 at ÷1 and ÷2. Use the PEX instance.
- **a_ro:** PEX frequencies: 0.52 GHz at invsel 0, 35.7 MHz at invsel 21 and 12.8 MHz at invsel 63. Two consecutive periods match.
  - All 8 `osc_tap` outputs toggle at the RO frequency in all three settings, so even the shortest loop's pulses survive the 898 stages to the last tap.
  - The chain is static before enable (the testbench starts with `uic` and keeps enable low for 100 ns).
- **e_load_uniform** (`osc` = 1 GHz):
  - Average supply current: 1.97 mA with one branch, 14.1 mA with all 8 (× 7.2).
  - Per-branch wiring: with only `osc[k]` toggling (k = 0 and 7), the macro draws 1.8 mA with `en[k]` on and 0.02 mA with `en[k]` off.
- **f_load_binary, current** (`osc` = 400 MHz): 0.13 mA with no branch running (clock gates), then 0.45 / 0.84 / 1.24 / 1.71 / 2.18 mA with 1 … 5 branches.
  - All 27 flip-flop outputs that the extraction keeps by name toggle (5 … 11 times in 20 cycles) once their branch is enabled.
  - All of them are cleared once the enables fall. The current then drops back to 0.13 mA.
- **g_glitch:** see Open Point 8. Input frequency sweep from 0.25 to 1.18 GHz: the macro draws 0.7 … 1.4 mA in total, and the waster branches switch only up to about 0.45 GHz.

Gaps:

- The top-level testbenches (`testbenches/cocotb/heichips26_digital_project_tb.py`, `testbenches/verilog/`) are still the template's counter tests. The pin-to-ctrl wiring and the source muxes have not been simulated end to end.
  - The SIM models of the ROs make an RTL simulation of the top level possible: `make sim-rtl-verilog` with a testbench `testbenches/verilog/heichips26_noise_gen_tb.sv`. A smoke test (2026-10-01, not in the repository) wrote the force-value and control registers through the pins, read the forced bit back at `tst_o` and saw d_ro_tapped's model oscillate.
  - The d_ro_tapped model hangs the simulation while `invsel`/`ffsel` are X. ctrl resets synchronously, so `config` is X until the first clock edge, and `#(1ps * (invsel + 1) * (1 << ffsel))` becomes an X delay, which iverilog runs as zero. The smoke test held both inputs at 0 (`force`) until the reset was done.
- The PEX simulations cover only the typical corner. They don't include the top-level wiring between the macros.

## Open Points

These points follow from the code or the simulations, but their intent isn't recorded anywhere. They should be confirmed by the team, or kept as known limitations for bring-up and measurement.

1. **ctrl timing (resolved).** ctrl used to be hardened without a clock (`CLOCK_PORT` commented out): no clock tree, 121 unclocked flip-flops, and a top-level STA without constrained paths. It now has `CLOCK_PORT: clk_i` at 10 ns. The build shows 49 clock buffers and 166 hold buffers, setup WS +4.6 ns (slow corner) and hold WS +0.28 ns (fast corner). With the clocked ctrl library, the top-level STA also times the pin-to-ctrl paths.
2. **Shared strength bits.** e and g both use `config[15:8]`, and f uses `config[12:8]`. When several loads are enabled, they can't have different strengths, and randomising the strength changes all of them together.
3. **The external-oscillator bypass ignores the enables.** With `z_osc_sel = 1`, `z_osc` reaches all three loads whatever the values of `en_i`, `we_i` and `en_load`. Only the per-branch load enables still gate it, and nothing gates the `g_glitch` delay line. In bypass mode `en_i` is not a complete kill switch.
4. **No oscillator observability.** No RO output reaches a pin. The RO frequencies can only be inferred from the supply current. This is why a current-measurement point on the PCB matters.
5. **The PRNG is predictable.** xorshift32 is linear, and the reset seed is fixed. Anyone who knows or recovers the seed can predict the whole configuration sequence. That is fine for evaluating the noise sources, but it is not a security argument.
6. **Tap and divider hopping while oscillating.** Changing `invsel` (a or d) while an edge is travelling through the ring, or `ffsel` while the divider outputs differ, can produce runt pulses, or several edges circulating at once. For noise this is probably harmless or even useful. It hasn't been simulated, because the xschem testbenches use fixed settings.
7. **a_ro output tap at `inv_wire[2]`.** The reason for taking a_ro's `osc` two stages after the AND gate, instead of at the loop node, isn't documented. (d_ro_tapped takes `osc` from the tap mux and divider.)
8. **The glitch amplification of `g_glitch` doesn't work at 1.2 V.**
   - In the PEX simulation (typical corner), the XOR tree merges the transitions that are only 4 inverter delays apart. Its output toggles at most about 2 times per input edge, instead of up to 13.
   - Between about 0.77 and 1.0 GHz it doesn't toggle at all.
   - The waster branches switched only for inputs up to about 0.45 GHz. Above that, `g_glitch` draws only the current of its delay line and XOR tree.
   - Longer stages, i.e. a larger tap spacing than the XOR gate delay, would be needed for the intended effect.
9. **RO restart after a short enable-low pulse.** See [Enable gating](#control-logic): a register write with `en_i` high can leave several edges in a long a_ro loop.
