# ihp-sg13cmos5l e_load_uniform

Uniform load: 8 identical branches, each an enable-gated tapered inverter chain (`inv_1 → inv_2 → inv_4 → inv_8 → inv_16`) and a fan-out tree of 14 × `inv_16`. Every branch has its own oscillator input, so in the a_ro tap mode each branch runs from a different a_ro tap. The drawn current scales with the number of enabled branches. The macro has no outputs.

| Port | Direction | Function |
|---|---|---|
| `osc[7:0]` | in | One oscillator input per branch |
| `en[7:0]` | in | Branch enables (`config[15:8]`, tap mode: `config[31:24]`) |

Die 150 × 55 µm. Details and PEX results: [reasoning.md](../../../../documentation/reasoning.md#loads).

## Test

1. `make build-top`
2. `cd testbenches/xschem`, `xschem`, open `e_load_uniform_tb_tran.sch` and simulate. The log prints the average supply current per enable step.
