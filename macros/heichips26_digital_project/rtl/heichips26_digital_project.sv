// SPDX-FileCopyrightText: © 2026 Noise-Gen Authors
// SPDX-License-Identifier: Apache-2.0

// Adapted from the Tiny Tapeout template

`default_nettype none

module heichips26_digital_project (
`ifdef USE_POWER_PINS
    inout  wire VPWR,
    inout  wire VGND,
`endif
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

noise_gen_top i_noise_gen_top (
`ifdef USE_POWER_PINS
    .VPWR   ( VPWR ),
    .VGND   ( VGND ),
`endif
    .clk_i          ( clk           ),
    .rst_in         ( rst_n         ),
    .en_i           ( uio_in[0]     ),
    //
    .z_osc_i        ( uio_in[7]     ),
    .z_osc_sel_i    ( uio_in[6]     ),
    //
    .ctrl_we_i      ( uio_in[1]     ),
    .ctrl_adr_i     ( uio_in[3:2]   ),
    .ctrl_din_i     ( ui_in         ),
    //
    .tst_o          ( uo_out[0]     )
);

wire _unused = &{ena, uio_in[5:4]};

assign uo_out[7:1]  = '0;
assign uio_out      = '0;
assign uio_oe       = '0;

endmodule
