# ihp-sg13cmos5l c_ro

Fixed ring oscillator with 149 `sg13cmos5l_inv_1` stages and an `enable` AND gate in the loop (ports `enable`, `osc`).

> [!NOTE]
> c_ro is **not on the chip**. It was removed to make room; it is not built by `run.sh` / `make chip` and is commented out in the top-level `MACROS` section. Its select code 2 now selects a constant 0 (see [reasoning.md](../../../../documentation/reasoning.md#connections-between-ros-and-loads)).
