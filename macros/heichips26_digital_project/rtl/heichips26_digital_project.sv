// SPDX-FileCopyrightText: © 2026 XXX Authors
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

    wire _unused = &{ena, uio_in[7:3]};

    (* keep *) noise_gen_top i_noise_gen_top (
    `ifdef USE_POWER_PINS
        .VPWR   ( VPWR ),
        .VGND   ( VGND ),
    `endif
        .clk_i      ( clk         ),
        .rst_in     ( rst_n       ),

        .csr_we_i   ( uio_in[0]   ),
        .csr_adr_i  ( uio_in[2:1] ),
        .csr_din_i  ( ui_in       )
    );

    assign uo_out  = '0;
    assign uio_out = '0;
    assign uio_oe  = '0;

endmodule
