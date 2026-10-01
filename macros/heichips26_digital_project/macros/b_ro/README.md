# ihp-sg13cmos5l b_ro

Fixed ring oscillator with 49 `sg13cmos5l_inv_1` stages and an `enable` AND gate in the loop (ports `enable`, `osc`).

> [!NOTE]
> b_ro is **not on the chip**. It was removed to make room; it is not built by `run.sh` / `make chip` and is commented out in the top-level `MACROS` section. Its select code 1 is now the a_ro tap mode of load e (see [reasoning.md](../../../../documentation/reasoning.md#connections-between-ros-and-loads)).
