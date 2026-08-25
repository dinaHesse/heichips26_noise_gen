# HeiChips 2026: Noise-Gen

* 500µm × 200µm

## Structure





## Build

1. First, enable a Nix shell using `nix-shell`.
2. Export `PDK_ROOT` and `PDK`: `export PDK_ROOT=$(pwd)/IHP-Open-PDK && export PDK=ihp-sg13cmos5l`
3. Start KLayout in edit mode: `make klayout`


## Submission

The `submission.yaml` config must be filled out and the precheck must be successful. The precheck runs every time you push a commit to the repository.
You can also run the precheck locally using: `make precheck`.

Here's an additional checklist:

- [ ] The project top-level has a unique name starting with `heichips26_`.
- [ ] One of the available slot sizes is used (tiny, small or large).
- [ ] `TopMetal1` in the macro is empty. This is required for the integration.
- [ ] The design has been verified in simulation.
- [ ] The macro is DRC clean.
- [ ] The macro should be LVS clean.
- [ ] The macro uses the default power pins: VPWR, VGND, VAPWR (optional)
- [ ] The project is licensed under a compatible open-source license, for example Apache 2.0.

In order to submit your design for integration into the HeiChips 2026 Tapeout, please open an issue at the following repository: https://github.com/HeiChips/heichips26-tapeout/issues

**The submission deadline is to be announced.**

All submitted designs will be included on the chip (given the space). However, one team will be selected for the **HeiChips 2026 Award** based on several factors. The exact criteria will be announced before the hackathon.

## License

The code in this repository is licensed under Apache 2.0 WITH SHL-2.1 if not otherwise stated.
