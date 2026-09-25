# Noiser: Design Reasoning

Noiser (top cell `heichips26_noise_gen`, HeiChips 2026 small slot, 500 × 200 µm) is a set of on-chip noise generators against power side-channel attacks. It draws extra, configurable and partly random switching current from the shared supply. This makes the secret-dependent current of computations on the eFPGA harder to extract from a power trace. Two mechanisms are implemented (see [Noiser.pdf](Noiser.pdf)):

1. **Ring oscillators (ROs)** that drive large inverter loads.
2. **Glitch amplification**: one oscillator edge is turned into many transitions, which then drive a load.

All parameters can be set from the FPGA through a small register interface. A basic on-chip PRNG can re-randomise any subset of them every clock cycle.

## Architecture Overview

```
                   ┌─────────────────────────── ctrl ───────────────────────────┐
 ui_in[7:0] ──────►│ ctrl_regs: 4 byte-wise shift registers                     │
 uio_in[3:0] ─────►│ xorshift32 PRNG ──► per-bit force/PRNG mux ──► config[15:0]│──► uo_out[0] = config[7]
 clk, rst_n ──────►│                                                            │
                   └──────┬────────────────┬─────────────────┬──────────────┬───┘
                     en_ros[3:0]     en_load[2:0]    sel_load_src[5:0]   config[15:0]
                          │                │                 │              ├─ [6:0]  ──► d_ro_tapped.fsel
          ┌───────┬───────┼───────┐        │                 │              └─ [15:8] ──► load enables (e, f, g)
          ▼       ▼       ▼       ▼        │                 │
        a_ro    b_ro    c_ro   d_ro_tapped │                 │
        (17)    (49)    (149)  (3 … 257)   ▼                 ▼
          └───────┴───┬───┴───────┘  ┌──────────────────────────────────────────┐
                      └─────────────►│ 3 × source select (top-level std cells)  │◄── uio_in[7] z_osc
                                     │ 4:1 RO mux → AND en_load → z_osc bypass  │◄── uio_in[6] z_osc_sel
                                     └──────┬───────────────┬───────────────┬───┘
                                            ▼               ▼               ▼
                                     e_load_uniform   f_load_binary      g_glitch
```

Only `ctrl` is clocked. The ROs, the source selection and the loads are all asynchronous.

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
| `clk` | `clk_i` | Clock for ctrl and the PRNG. The top level is constrained to 10 ns (100 MHz) |
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
| `01` | Force enable | 16 | 2 | `0xFFFF` | Per config bit: 1 = use the forced value, 0 = use the PRNG |
| `10` | Force value | 16 | 2 | `0x0000` | Static value for the forced config bits |
| `11` | Control | 13 | 2 | `0` | `[3:0]` `en_ros` (a, b, c, d), `[6:4]` `en_load` (e, f, g), `[8:7]` / `[10:9]` / `[12:11]` source select for e / f / g |

The 16-bit configuration word that parameterises the ROs and loads is built bit by bit:

```
config = (force_en & force_val) | (~force_en & prng[15:0])
```

Each parameter bit can therefore be static or re-randomised every clock cycle, independently of the others. For example, the load strength can stay fixed while the RO frequency hops, or the other way round. After reset every bit is forced to 0 and the control register is 0. The chip starts with all noise sources off and in a deterministic state.

| `config` bits | Used by |
|---|---|
| `[6:0]` | `d_ro_tapped.fsel` (loop length) |
| `[7]` | `tst_o` → `uo_out[0]` |
| `[15:8]` | `e_load_uniform.en[7:0]` and `g_glitch.en[7:0]` |
| `[12:8]` | `f_load_binary.en[4:0]` |

**PRNG.** `xorshift32` is Marsaglia's 32-bit xorshift with shifts 13/17/5. It does one step per clock cycle. If the state ever reaches the all-zero fixed point, a guard reloads the reset seed. Only the low 16 bits are used. It was chosen for its small area and single-cycle update, not for cryptographic strength (the slides call it a "basic" PRNG). The seed can be loaded from the FPGA, so each run can use a different sequence.

**Enable gating.** `en_ros` and `en_load` are ANDed with `en_i & ~we_i` (commit 4464480):

- `en_i` works as a global kill switch. The registers can be written while `en_i` is low, and all configured sources then start together when `en_i` goes high.
- `~we_i` stops all ROs and loads while a register is being shifted, so half-written values never switch sources on.

The PRNG and `config` keep running whatever the value of `en_i`.

#### Connections between ROs and Loads

Each of the three loads has its own source path, built from standard cells in `noise_gen_top` (not a macro):

```
osc_at_X = z_osc_sel ? z_osc : (RO[sel_X] & en_load[X])     sel_X: 0 = a_ro, 1 = b_ro, 2 = c_ro, 3 = d_ro_tapped
```

- Any RO can drive any load, and several loads can share one RO. Each RO/load pair can be measured on its own, or loads can be stacked for more current.
- The external-oscillator bypass (`z_osc_sel` / `z_osc`) is the fallback if the on-chip ROs don't oscillate, or oscillate at an unusable frequency. The FPGA then drives the loads directly with a clock of known frequency. `z_osc_sel` switches all three loads at once.
- The load strength comes from `config[15:8]` and is shared by all loads (see [Open Points](#open-points)).

### Ring-Oscillators

- One tapped/variable RO (`d_ro_tapped`) is the main RO. Three fixed ROs (`a_ro`, `b_ro`, `c_ro`) are there in case the main one doesn't work.
- All four share one structure: a chain of `sg13cmos5l_inv_1` cells closed through an AND gate with `enable` (`inv_wire[0] = feedback & enable`). With `enable` low, the loop sits at a static level. A disabled RO draws only leakage and always restarts from a defined state.
- The AND doesn't invert, so the loop always contains an odd number of inversions, which it needs in order to oscillate. The output `osc` is taken at `inv_wire[2]`, two stages after the AND.

| Macro | Loop length | Die | Role |
|---|---|---|---|
| `a_ro` | 17 inverters | 30 × 30 µm | Fixed, highest frequency |
| `b_ro` | 49 inverters | 30 × 30 µm | Fixed, middle frequency |
| `c_ro` | 149 inverters | 100 × 30 µm | Fixed, lowest frequency |
| `d_ro_tapped` | 3 + 2·fsel = 3 … 257 inverters (128 settings) | 130 × 55 µm | Variable, main RO |

**Fixed ROs (a, b, c).** The stage counts are about 3× apart (17 → 49 → 149), so they cover three separate frequency ranges. They are deliberately simple. If the tapped RO fails, for example because of the mux in its loop, they still give working noise sources and fixed reference frequencies for characterising the loads.

**Tapped RO (d).**

- *Tap selection:* a 257-inverter chain with a 7-bit tap select. The tap index is `3 + {fsel, 1'b0}`, which is always odd. Every one of the 128 codes gives a valid oscillator, from 3 to 257 inverters.
- *Frequency hopping:* `fsel` is `config[6:0]`, so when these bits are left to the PRNG, the RO frequency hops randomly every clock cycle. A hopping frequency is harder to remove by filtering or averaging than the fixed tone of a plain RO. This is why d is the main RO.
- *Current:* all 257 inverters toggle on every edge, not only the ones inside the loop. The drawn current therefore scales with the selected frequency.
- *Non-linearity:* the 128:1 tap mux sits inside the loop and adds to the loop delay, so the frequency is not exactly proportional to 1 / (3 + 2·fsel).
- *Flow setting:* because the loop runs through synthesised mux logic, this macro's LibreLane config sets `ERROR_ON_SYNTH_CHECKS: false`.

### Loads

The ROs are built from minimum-size `inv_1` cells and draw little current themselves. The loads turn an oscillator signal into a large, controllable supply current. All three use the same building block: an enable-gated (`osc & en[b]`) tapered inverter chain `inv_1 → inv_2 → inv_4 → inv_8 → inv_16`, followed by more `inv_16` stages. Growing the drive strength about 2× per stage lets a minimum-size signal switch a large capacitance quickly without loading the RO. The loads have no outputs. Their only job is the current they draw.

| Macro | Structure | Enable bits | Strength steps | Die |
|---|---|---|---|---|
| `e_load_uniform` | 8 identical branches, each a taper plus a fan-out tree of 14 × `inv_16` | `config[15:8]` | ∝ popcount(en): 0 … 8 | 150 × 55 µm |
| `f_load_binary` | 5 branches. Branch *b* has an input buffer (`inv_1/4/8/16`) that drives 2^b chains (`inv_1/2/4/8` + 3 × `inv_16`), 31 chains in total | `config[12:8]` | ∝ en value: 0 … 31 | 150 × 50 µm |
| `g_glitch` | Glitch generator (see below), then 8 branches of taper plus 4 × `inv_16` | `config[15:8]` | ∝ popcount(en): 0 … 8 | 150 × 30 µm |

- **Uniform vs. binary weighting.** `e` gives 9 coarse, equal steps from 8 bits. `f` gives 32 steps from 5 bits. Both are on the chip so that their effectiveness can be compared after tapeout (`submission.yaml`: "evaluate the effectiveness of different configurations"). When the enable bits come from the PRNG, the noise amplitude changes randomly every clock cycle, in addition to the switching of the RO itself.
- **Glitch amplification (`g_glitch`, "Noiser 2" in the slides).**
  - *Delay line:* the oscillator goes through an `inv_1 → inv_4` buffer into a delay line of 12 stages × 4 `inv_1`. That is 48 inverters, and each stage is non-inverting.
  - *XOR of the taps:* the 13 taps `w[0..12]` are XOR'd. An edge at the input ripples down the line and flips the XOR output once at every tap. One input edge thus becomes up to 13 transitions, spaced 4 inverter delays apart.
  - *Effect:* this multiplies the switching activity of a slow source and makes the current waveform spikier (simulation on slide 4). The glitchy signal then drives the waster branches.
  - *Enables:* the buffer, delay line and XOR toggle whenever the input toggles. Only the waster branches are enable-gated.
- **Strength tuning (commit 02a5889).** One more `inv_16` was added to every chain in all three loads to increase the drawn current. The same commit widened the load macros from 130 µm to 150 µm and moved them from x = 360 to x = 340, to fix antenna violations.

### Implementation

- **One hard macro per block.** ctrl, every RO and every load are hardened separately with LibreLane. They are integrated as black boxes through the `MACROS` section of `macros/heichips26_digital_project/flow/librelane/config.yaml`. There are three reasons:
  - The ROs are combinational loops. Hardening them separately keeps the loops out of top-level synthesis and STA.
  - The loads have no outputs, so normal synthesis would remove them. Inside the macros every inverter is an explicitly instantiated `sg13cmos5l_inv_*` cell marked `(* keep *)`. This fixes the cell type, drive strength and count exactly.
  - Each macro has a fixed die and its own layout, so it can be extracted (Magic PEX) and simulated at transistor level on its own.
- **Simulation models.** An event-driven RTL simulator can't simulate a loop of zero-delay cells, so every RO has an `ifdef SIM` behavioural model. The a/b/c models toggle every 1/3/5 ps, and the d model toggles every `fsel` ps. These models are only for functional simulation and don't reflect the real frequencies.
- **Floorplan.** The design uses the small slot (500 × 200 µm, `heichips26_template_small.def`), and all I/O pins are on the left edge.
  - *ctrl:* 120 × 140 µm, placed at (30, 30) next to the pins.
  - *ROs:* in the middle, with d at (190, 30), c at (190, 100), a at (200, 140) and b at (250, 140).
  - *Loads:* a column on the right at x = 340, with g at y = 25, f at y = 60 and e at y = 120.
  - *Glue logic:* the top-level source muxes and gating are standard cells in the remaining space.
  - *Metal layers:* routing is limited to Metal4. TopMetal1 stays empty, as the HeiChips integration requires.
- **Signoff.** DRC (Magic and KLayout) and LVS are clean. The antenna violations were fixed as described under [Loads](#loads).

## Verification

| Block | Method | Location |
|---|---|---|
| ctrl | cocotb + Icarus. Four tests: forced config, PRNG seed load, PRNG advances, control-register fields | `macros/ctrl/testbenches/cocotb/ctrl_tb.py` (`make sim-rtl-cocotb`) |
| ROs, loads | xschem + ngspice transient on the Magic-PEX netlist of each hardened macro (post-layout supply current). For d, e, f and g several fixed tap/enable settings | `macros/<macro>/testbenches/xschem/*_tb_tran.sch` |
| Top level | DRC/LVS in the LibreLane flow | `macros/heichips26_digital_project/verification/` |

Gaps:

- The top-level cocotb testbench (`testbenches/cocotb/heichips26_digital_project_tb.py`) is still the template's counter test and doesn't exercise the noise generator. The pin-to-ctrl wiring and the source muxes have not been simulated end to end.
- ctrl has no timing signoff (Open Point 1).

## Open Points

These points follow from the code, but their intent isn't recorded anywhere. They should be confirmed by the team, or kept as known limitations for bring-up and measurement. The design has already been submitted, so none of them can change for this tapeout.

1. **No timing check on ctrl.** `CLOCK_PORT` is commented out in `macros/ctrl/flow/librelane/config.yaml`. As a result:
   - CTS was effectively skipped for the macro (the step took 1 ms).
   - The macro and the top-level STA both report reg-to-reg paths as N/A. The top-level slack is only the unconstrained placeholder value.
   - The 77 flip-flops, including the xorshift32 feedback path, were never timed at 100 MHz, and the clock skew inside ctrl is unconstrained.

   If the registers or the PRNG misbehave at bring-up, try a lower `clk` first.
2. **Shared strength bits.** e and g both use `config[15:8]`, and f uses `config[12:8]`. When several loads are enabled, they can't have different strengths, and randomising the strength changes all of them together.
3. **The external-oscillator bypass ignores the enables.** With `z_osc_sel = 1`, `z_osc` reaches all three loads whatever the values of `en_i`, `we_i` and `en_load`. Only the per-branch load enables still gate it, and nothing gates the `g_glitch` delay line. In bypass mode `en_i` is not a complete kill switch.
4. **No oscillator observability.** No RO output reaches a pin. The RO frequencies, and whether `d_ro_tapped` oscillates for every code, can only be inferred from the supply current. This is why a current-measurement point on the PCB matters.
5. **The PRNG is predictable.** xorshift32 is linear, and the reset seed is fixed. Anyone who knows or recovers the seed can predict the whole configuration sequence. That is fine for evaluating the noise sources, but it is not a security argument.
6. **fsel hopping while oscillating.** Changing the tap while an edge is travelling through the ring can produce runt pulses, or several edges circulating at once. For noise this is probably harmless or even useful. It hasn't been simulated, because the xschem testbench uses only fixed tap settings.
7. **Output tap at `inv_wire[2]`.** The reason for taking `osc` two stages after the AND gate, instead of at the loop node, isn't documented.
