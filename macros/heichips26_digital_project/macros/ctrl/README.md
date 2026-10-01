# ihp-sg13cmos5l ctrl

Control block of Noiser: four byte-wise shift registers (PRNG seed, force enable, force value, control), the xorshift32 PRNG and the per-bit force/PRNG mux that builds `config_o[31:0]`. It is the only block on `clk` and is timed at 10 ns (100 MHz) with its own clock tree.

| Port | Direction | Function |
|---|---|---|
| `clk_i`, `rst_in` | in | Clock, synchronous active-low reset |
| `en_i`, `we_i` | in | Global enable, write enable (gate `en_ros_o` / `en_load_o`) |
| `adr_i[1:0]`, `din_i[7:0]` | in | Register address, data byte |
| `en_ros_o[3:0]` | out | RO enables (a, b, c, d; b and c unused) |
| `en_load_o[2:0]` | out | Load enables (e, f, g) |
| `sel_load_src_o[5:0]` | out | Source select for e, f, g |
| `config_o[31:0]` | out | Configuration word for the ROs and loads |

Register map and `config` bit assignment: [reasoning.md](../../../../documentation/reasoning.md#control-logic).

Sources: `rtl/ctrl.sv`, `rtl/ctrl_regs.sv`, `rtl/xorshift32.sv`.

## Test

```sh
make sim-rtl-cocotb   # RTL
make build-top        # LibreLane run
make sim-gl-cocotb    # gate level, on final/nl/ctrl.nl.v
```

The cocotb testbench (`testbenches/cocotb/ctrl_tb.py`) has five tests: forced config, PRNG seed load, PRNG advances, control-register fields and PRNG rate (`prng_div`).
