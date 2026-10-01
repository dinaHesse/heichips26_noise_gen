# HeiChips 2026: Noise-Gen (500µm × 200µm)

> [!WARNING]
> The repository is not cleaned up yet. The top-level testbenches (`macros/heichips26_digital_project/testbenches/`) and the FPGA flow (`macros/heichips26_digital_project/fpga/`) still come from the template and refer to its `counter` macro.

> [!WARNING]
> This document is incomplete and aims to provide an initial quick overview. The design reasoning, register map, simulation results and known limitations are in [documentation/reasoning.md](documentation/reasoning.md).

## Design Structure

```
heichips26_digital_project/ ... top user project
├─ ctrl/                    ... macro: control registers + xorshift32 PRNG
├─ a_ro/                    ... macro: ring oscillator, 3 … 1011 inverters (6-bit tap select) + 8 intermediate outputs
├─ d_ro_tapped/             ... macro: ring oscillator, 15 … 139 inverters (5-bit tap select) + ÷1 … ÷8 divider
├─ e_load_uniform/          ... macro: 8 inverter trees, each with its own osc input and enable
├─ f_load_binary/           ... macro: uniform LFSR load (5 × 12-bit, clock-gated per en bit)
├─ g_glitch/                ... macro: glitch-based load/power waster
├─ b_ro/, c_ro/             ... fixed ring oscillators, removed from the chip (not built or placed)
```

Each macro directory has a short README with its ports and tests. The die sizes and placement are listed in [macros/heichips26_digital_project/README.md](macros/heichips26_digital_project/README.md#macros).

## Build

1. `nix-shell`.
2. Export `PDK_ROOT` and `PDK`: `export PDK_ROOT=$(pwd)/IHP-Open-PDK && export PDK=ihp-sg13cmos5l`
3. `cd macros/heichips26_digital_project/`
4. `./run.sh` (or `make build-macros build-top` here, or `make chip` in the repository root, as the CI does)

The Makefile targets of the top level (single macros, lint, simulation, clean) are listed in [macros/heichips26_digital_project/README.md](macros/heichips26_digital_project/README.md#makefile-targets).

## Testing

> [!WARNING]
> There is no top-level (end-to-end) simulation yet. The testbenches in `macros/heichips26_digital_project/testbenches/` are still the template's counter tests.

`make lint-verilog-all` in `macros/heichips26_digital_project/` lints every macro and the whole design. `make sim-all` there runs the ctrl cocotb tests (RTL and gate level) and the f_load_binary Verilog testbench.

The xschem testbenches simulate the Magic-PEX netlist of the hardened macro, so run `make build-top` in the macro directory first. All of them run at VDD = 1.2 V, typical corner.

### ctrl

1. `cd macros/heichips26_digital_project/macros/ctrl`
2. `make build-top`
3. `make sim-rtl-cocotb` (RTL) and `make sim-gl-cocotb` (gate level)

### a_ro, d_ro_tapped

1. `cd macros/heichips26_digital_project/macros/<macro>`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `<macro>_tb_tran.sch`
6. Set the configuration under test in the NGSPICE code block: `.param INVSEL` (a: 0 … 63, d: 0 … 31) and `.param FFSEL` (d: 0 … 3)
7. Simulate. The log prints two consecutive oscillation periods, which must match (a single edge in the loop). For a_ro it also prints the frequency at every intermediate output `osc_tap[7:0]`.

### e_load_uniform, g_glitch

1. `cd macros/heichips26_digital_project/macros/<macro>`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `<macro>_tb_tran.sch`
6. Simulate. The log prints the average supply current per enable step.

### f_load_binary

1. `cd macros/heichips26_digital_project/macros/f_load_binary`
2. `make sim-rtl-verilog`: self-checking RTL test of the LFSR sequence, the 4096-state period, the clear on `en` low and the independence of the branches. The header of `testbenches/verilog/f_load_binary_tb.sv` describes the gate-level run.
3. `make build-top`, then `cd testbenches/xschem/`, `xschem`, open `f_load_binary_tb_tran.sch` and simulate. `osc` runs at 400 MHz, the enables switch on one by one and off together. The log prints the average supply current per number of running branches.

## TODOs

- [x] The project top-level has a unique name: `heichips26_noise_gen`.
- [x] The top-level macro is named `heichips26_noise_gen`.
- [x] One of the available slot sizes is used (tiny, small or large): small.
- [x] `TopMetal1` in the macro is empty. This is required for the integration.
- [~] The design has been verified in simulation: ctrl (cocotb), f_load_binary (RTL and gate level), transistor-level (PEX) simulations of every RO and load macro. Missing: an end-to-end simulation of the top level.
- [x] The macro is DRC clean.
- [x] The macro should be LVS clean.
- [x] The macro uses the default power pins: VPWR, VGND, VAPWR (optional)
- [x] The project is licensed under a compatible open-source license, for example Apache 2.0.
- [x] Fill out `submission.yaml`
- [x] Open issue and submit design: [HeiChips/heichips26-tapeout#11](https://github.com/HeiChips/heichips26-tapeout/issues/11)
- [ ] Rebuild the top level with a_ro at (220, 90) (`make build-top` in `macros/heichips26_digital_project/`) and confirm DRC/LVS. The last top-level run (2026-10-01, 18:55) is clean but still has a_ro at (220, 100).
- [ ] Repeat the a_ro and d_ro_tapped PEX simulations on the current layouts (their die sizes changed after the documented runs).
- [ ] `make precheck` passes locally and in the CI on the final commit

## License

The code in this repository is licensed under Apache 2.0 WITH SHL-2.1 if not otherwise stated.
