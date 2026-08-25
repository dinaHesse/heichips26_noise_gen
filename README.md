# HeiChips 2026: Noise-Gen (500µm × 200µm)

> [!WARNING]
> The repository is not cleaned up yet. Many parts of the documentation originate from the template and may be broken.

> [!WARNING]
> This document is incomplete and aims to provide an initial quick overview.

## Design Structure

```
heichips26_digital_project/ ... top user project 
├─ ctrl/                    ... macro: control registers
├─ a_ro/                    ... macro: ring oscillator  17 inverters
├─ b_ro/                    ... macro: ring oscillator  49 inverters
├─ c_ro/                    ... macro: ring oscillator 149 inverters
├─ d_ro_tapped/             ... macro: ring oscillator, 7-bit tapped
├─ e_load_uniform/          ... macro: 8 inverter trees with individual enable 
├─ f_load_binary/           ... macro: inverter trees with binary weighting 
├─ g_glitch/                ... macro: glitch-based load/power waster
```

## Build

1. `nix-shell`.
2. Export `PDK_ROOT` and `PDK`: `export PDK_ROOT=$(pwd)/IHP-Open-PDK && export PDK=ihp-sg13cmos5l`
3. `cd macros/heichips26_digital_project/`
4. `./run.sh`

## Testing

> [!WARNING]
> The test cases are incomplete.

### ctrl
1. `cd macros/heichips26_digital_project/macros/ctrl`
2. `make build-top`
3. `make sim-rtl-cocotb`

### a_ro

1. `cd macros/heichips26_digital_project/macros/a_ro`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `a_ro_tb_tran.sch`
6. Simulate

### b_ro

1. `cd macros/heichips26_digital_project/macros/b_ro`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `b_ro_tb_tran.sch`
6. Simulate

### c_ro

1. `cd macros/heichips26_digital_project/macros/c_ro`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `c_ro_tb_tran.sch`
6. Simulate

### d_ro_tapped

1. `cd macros/heichips26_digital_project/macros/d_ro_tapped`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `d_ro_tapped_tb_tran.sch`
6. Simulate: multiple tap positions tested

### e_load_uniform

1. `cd macros/heichips26_digital_project/macros/e_load_uniform`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `e_load_uniform_tb_tran.sch`
6. Simulate: multiple enables tested

### f_load_binary

1. `cd macros/heichips26_digital_project/macros/f_load_binary`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `f_load_binary_tb_tran.sch`
6. Simulate: multiple enables tested

### g_glitch

1. `cd macros/heichips26_digital_project/macros/g_glitch`
2. `make build-top`
3. `cd testbenches/xschem/`
4. `xschem`
5. Open `g_glitch_tb_tran.sch`
6. Simulate: multiple enables tested


## TODOs

- [x] The project top-level has a unique name: `heichips26_noise_gen`.
- [?] If needed, rename top-level macro name to `heichips26_noise_gen`.
- [x] One of the available slot sizes is used (tiny, small or large): small.
- [x] `TopMetal1` in the macro is empty. This is required for the integration.
- [~] The design has been verified in simulation: further verification, review of the code.
- [x] The macro is DRC clean.
- [x] The macro should be LVS clean.
- [x] The macro uses the default power pins: VPWR, VGND, VAPWR (optional)
- [x] The project is licensed under a compatible open-source license, for example Apache 2.0.
- [ ] Fill out `submission.yaml` 
- [ ] Open issue and submit design: https://github.com/HeiChips/heichips26-tapeout/issues

## License

The code in this repository is licensed under Apache 2.0 WITH SHL-2.1 if not otherwise stated.
