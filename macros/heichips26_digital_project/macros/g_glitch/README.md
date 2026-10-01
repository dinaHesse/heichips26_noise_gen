# ihp-sg13cmos5l g_glitch

Glitch load ("Noiser 2" in the slides): the oscillator goes through an `inv_1 → inv_4` buffer into a delay line of 12 non-inverting stages of 4 `inv_1`. The 13 taps are XOR'd, which is meant to turn every input edge into up to 13 transitions. The glitchy signal drives 8 enable-gated waster branches (taper plus 4 × `inv_16`). The macro has no outputs.

| Port | Direction | Function |
|---|---|---|
| `osc` | in | Oscillator input |
| `en[7:0]` | in | Waster-branch enables (`config[15:8]`) |

Die 150 × 30 µm.

> [!WARNING]
> In the PEX simulation at 1.2 V (typical), the XOR tree doesn't resolve transitions only 4 inverter delays apart: it toggles at most about twice per input edge, and the waster branches switch only for inputs up to about 0.45 GHz. See Open Point 8 in [reasoning.md](../../../../documentation/reasoning.md#open-points).

## Test

1. `make build-top`
2. `cd testbenches/xschem`, `xschem`, open `g_glitch_tb_tran.sch` and simulate. The log prints the average supply current per enable step.
