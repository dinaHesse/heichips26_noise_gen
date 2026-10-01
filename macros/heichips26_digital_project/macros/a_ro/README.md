# ihp-sg13cmos5l a_ro

Long tapped ring oscillator: a chain of 1011 `sg13cmos5l_inv_1` cells, a 64:1 tap mux and an AND gate with `enable` that closes the loop. The loop length is 3 + 16·`invsel` = 3 … 1011 inverters. `osc_tap[7:0]` are buffered copies of eight fixed chain nodes spread over the chain; in the a_ro tap mode they drive the eight e_load_uniform branches one to one.

| Port | Direction | Function |
|---|---|---|
| `enable` | in | Starts the RO; low stops it at a static level |
| `invsel[5:0]` | in | Loop length (`config[21:16]`) |
| `osc` | out | RO output, taken at `inv_wire[2]` |
| `osc_tap[7:0]` | out | Intermediate outputs at `inv_wire[112, 224, 337, 449, 561, 674, 786, 898]` |

Die 100 × 100 µm. Details and PEX results: [reasoning.md](../../../../documentation/reasoning.md#ring-oscillators).

## Test

1. `make build-top` (LibreLane run, XSPICE model and Magic PEX netlist)
2. `cd testbenches/xschem`, `xschem`, open `a_ro_tb_tran.sch`
3. Set `.param INVSEL` (0 … 63) in the NGSPICE block and simulate. The log prints two consecutive periods (they must match) and the frequency at every `osc_tap` output.

A full-RC run can take about an hour (`uic`, enable low for the first 100 ns so the chain settles).
