# ihp-sg13cmos5l d_ro_tapped

Main ring oscillator: a chain of 139 `sg13cmos5l_inv_1` cells with a 32:1 tap mux (loop length 15 + 4·`invsel` = 15 … 139 inverters), followed by a 3-stage ripple divider. `ffsel` selects ÷1, ÷2, ÷4 or ÷8. With `config[6:0]` left to the PRNG, the frequency hops randomly.

| Port | Direction | Function |
|---|---|---|
| `enable` | in | Starts the RO and releases the divider reset |
| `invsel[4:0]` | in | Loop length (`config[4:0]`) |
| `ffsel[1:0]` | in | Divider output (`config[6:5]`) |
| `osc` | out | Selected divider output, ANDed with `enable` |

Die 100 × 60 µm. `impl.sdc` and `signoff.sdc` set `osc` as a false path; without it the resizer upsizes the ring inverters. Details and PEX results: [reasoning.md](../../../../documentation/reasoning.md#ring-oscillators).

## Test

1. `make build-top`
2. `cd testbenches/xschem`, `xschem`, open `d_ro_tapped_tb_tran.sch`
3. Set `.param INVSEL` (0 … 31) and `.param FFSEL` (0 … 3) and simulate. The log prints two consecutive periods, which must match. Use the PEX instance; the XSPICE instance only works at the fastest settings.
