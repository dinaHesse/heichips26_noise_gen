# SPDX-FileCopyrightText: 2026 The HeiChips Contributors
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

import os
import re
import logging
from pathlib import Path
import random

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb_tools.runner import get_runner

sim = os.getenv("SIM", "icarus")
pdk_root = os.getenv("PDK_ROOT", Path("~/.ciel").expanduser())
pdk = os.getenv("PDK", "ihp-sg13cmos5l")
scl = os.getenv("SCL", "sg13cmos5l_stdcell")
# GL=1 selects the gate-level netlist; anything else (unset, "0", "") stays in RTL mode.
gl = os.getenv("GL", "0").strip().lower() in ("1", "true", "yes", "on")

hdl_toplevel = "ctrl"

CTR_WIDTH = 8
CTR_MAX = 2**CTR_WIDTH - 1
CLK_FREQ_HZ = 50e6
CLK_FREQ_MHZ = int(CLK_FREQ_HZ / 1e6)


async def start_clock(clock, freq=CLK_FREQ_MHZ):
    """Start the clock @ freq MHz"""
    period_ns = round(1 / freq * 1000, 4)
    c = Clock(clock, period_ns, "ns")
    cocotb.start_soon(c.start())


async def reset(reset, clock, cycles=2):
    """Pulse the active-low reset for `cycles` clock cycles."""
    cocotb.log.info("Reset asserted...")

    reset.value = 0
    await ClockCycles(clock, cycles)
    reset.value = 1
    await RisingEdge(clock)

    cocotb.log.info("Reset deasserted.")


async def start_up(dut):
    """Startup sequence: clock + reset, simple_ro disabled, value cleared."""
    await start_clock(dut.clk_i, CLK_FREQ_MHZ)
    dut.en_i.value = 0
    await reset(dut.rst_in, dut.clk_i)


async def write_reg8(dut, addr, data):
    """Write one 8-bit value to ctrl register interface"""
    dut.adr_i.value = addr
    dut.din_i.value = data
    dut.we_i.value = 1

    await RisingEdge(dut.clk_i)

    dut.we_i.value = 0
    await RisingEdge(dut.clk_i)


async def write_reg32(dut, addr, data):
    d0 = (data >> 0) & 0xFF
    d1 = (data >> 8) & 0xFF
    d2 = (data >> 16) & 0xFF
    d3 = (data >> 24) & 0xFF

    dut.adr_i.value = addr
    dut.we_i.value = 1

    dut.din_i.value = d3
    await RisingEdge(dut.clk_i)
    dut.din_i.value = d2
    await RisingEdge(dut.clk_i)
    dut.din_i.value = d1
    await RisingEdge(dut.clk_i)
    dut.din_i.value = d0
    await RisingEdge(dut.clk_i)

    dut.we_i.value = 0
    await RisingEdge(dut.clk_i)


@cocotb.test()
async def test_write_force_config(dut):
    """After reset deasserts, count_o must be zero."""
    logger = logging.getLogger("ctrl_tb")

    logger.info("Startup sequence...")
    await start_up(dut)

    dut.en_i.value = 1
    dut.we_i.value = 0
    dut.adr_i.value = 0
    dut.din_i.value = 0

    await RisingEdge(dut.clk_i)

    logging.info("Wriing cfg_force_en to all 1s")
    await write_reg8(dut, 0b01, 0xFF)
    await write_reg8(dut, 0b01, 0xFF)

    force_value = random.getrandbits(16)
    force_value_hi = (force_value >> 8) & 0xFF
    force_value_lo = force_value & 0xFF

    logger.info("Writing cfg_force_value")
    await write_reg8(dut, 0b10, force_value_hi)
    await write_reg8(dut, 0b10, force_value_lo)

    await RisingEdge(dut.clk_i)
    config_o = int(dut.config_o.value)
    assert config_o == force_value

    await RisingEdge(dut.clk_i)
    config_o = int(dut.config_o.value)
    assert config_o == force_value

    await RisingEdge(dut.clk_i)
    config_o = int(dut.config_o.value)
    assert config_o == force_value
    logger.info("Done!")


@cocotb.test()
async def test_write_prng_seed(dut):
    logger = logging.getLogger("ctrl_tb")

    logger.info("Startup sequence...")
    await start_up(dut)

    dut.en_i.value = 1
    dut.we_i.value = 0
    dut.adr_i.value = 0
    dut.din_i.value = 0

    # Force to zero
    await write_reg8(dut, 0b01, 0x00)
    await write_reg8(dut, 0b01, 0x00)

    await RisingEdge(dut.clk_i)
    await write_reg32(dut, 0b00, 0x12345678)
    config_o = int(dut.config_o.value) & 0xFFFF
    assert config_o == 0x5678
    logger.info("Done!")


@cocotb.test()
async def test_xorshift(dut):
    logger = logging.getLogger("ctrl_tb")

    logger.info("Startup sequence...")
    await start_up(dut)

    dut.en_i.value = 1
    dut.we_i.value = 0
    dut.adr_i.value = 0
    dut.din_i.value = 0

    # Force to zero
    await write_reg8(dut, 0b01, 0x00)
    await write_reg8(dut, 0b01, 0x00)

    await RisingEdge(dut.clk_i)
    v1 = int(dut.config_o.value) & 0xFFFF
    await RisingEdge(dut.clk_i)
    v2 = int(dut.config_o.value) & 0xFFFF
    await RisingEdge(dut.clk_i)
    v3 = int(dut.config_o.value) & 0xFFFF
    await RisingEdge(dut.clk_i)

    assert v1 != v2
    assert v2 != v3
    logger.info("Done!")


@cocotb.test()
async def test_write_control_reg(dut):
    """After reset deasserts, count_o must be zero."""
    logger = logging.getLogger("ctrl_tb")

    logger.info("Startup sequence...")
    await start_up(dut)

    dut.en_i.value = 1
    dut.we_i.value = 0
    dut.adr_i.value = 0
    dut.din_i.value = 0

    await RisingEdge(dut.clk_i)

    await write_reg8(dut, 0b11, 0b000_10110)
    await write_reg8(dut, 0b11, 0b1_101_1011)

    assert int(dut.en_ros_o.value) == 0b1011
    assert int(dut.en_load_o.value) == 0b101
    assert int(dut.sel_load_src_o.value) == 0b101101

    logger.info("Done!")


def ctrl_runner():

    proj_path = Path(__file__).resolve().parent

    sources = []
    defines = {}
    includes = [proj_path / "../../rtl/"]

    if gl:
        # SCL models
        sources.append(Path(pdk_root) / pdk / "libs.ref" / scl / "verilog" / f"{scl}.v")
        sources.append(
            Path(pdk_root) / pdk / "libs.ref" / scl / "verilog" / "sg13cmos5l_udp.v"
        )

        # Unpowered gate-level netlist of the macro
        sources.append(proj_path / f"../../final/nl/{hdl_toplevel}.nl.v")

        # Unpowered netlist: USE_POWER_PINS must NOT be defined at all
        # (passing USE_POWER_PINS=False would still define the macro).
    else:
        sources.append(proj_path / "../../rtl/ctrl_regs.sv")
        sources.append(proj_path / "../../rtl/xorshift32.sv")
        sources.append(proj_path / "../../rtl/ctrl.sv")

    build_args = []

    if sim == "icarus":
        # -gno-specify: skip specify blocks; sg13cmos5l_stdcell.v uses
        # `ifnone with edge-sensitive paths`, which iverilog can't parse.
        build_args = ["-DSIM", "-gno-specify"]

    if sim == "verilator":
        build_args = ["--timing", "--trace", "--trace-fst", "--trace-structs"]

    runner = get_runner(sim)
    runner.build(
        sources=sources,
        hdl_toplevel=hdl_toplevel,
        defines=defines,
        always=True,
        includes=includes,
        build_args=build_args,
        waves=True,
        timescale=("1ns", "1fs"),
    )

    plusargs = []

    runner.test(
        hdl_toplevel=hdl_toplevel,
        test_module="ctrl_tb",
        plusargs=plusargs,
        waves=True,
    )


if __name__ == "__main__":
    ctrl_runner()
