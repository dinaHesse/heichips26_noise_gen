# ihp-sg13cmos5l f_load_binary

Sequential load: 5 identical 12-bit De Bruijn LFSRs (taps 12, 6, 4, 1, period 4096, 60 flip-flops in total). Branch *b* is clocked by `osc & en[b]` and cleared asynchronously while `en[b]` is low, so the current scales with the number of running branches and follows the pseudo-random LFSR data. The macro has no outputs. The name is historical: the macro used to hold binary-weighted inverter chains (`rtl/f_load_binary_old.sv`, not used).

| Port | Direction | Function |
|---|---|---|
| `osc` | in | Clock for all branches |
| `en[4:0]` | in | Branch enables (`config[12:8]`), asynchronous to `osc` |

Die 150 × 50 µm. Timed with `osc` as a 400 MHz clock (`CLOCK_PERIOD: 2.5`). Details and results: [reasoning.md](../../../../documentation/reasoning.md#loads).

## Test

```sh
make sim-rtl-verilog   # self-checking testbench: sequence, 4096-state period, clear on en low, branch independence
```

The header of `testbenches/verilog/f_load_binary_tb.sv` describes the gate-level run.

For the supply current: `make build-top`, then `cd testbenches/xschem`, `xschem`, open `f_load_binary_tb_tran.sch` and simulate. `osc` runs at 400 MHz; the log prints the average current per number of running branches.
