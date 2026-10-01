// SPDX-FileCopyrightText: © 2026 Noise-Gen Authors
// SPDX-License-Identifier: Apache-2.0

module noise_gen_top (
  `ifdef USE_POWER_PINS
    inout  wire VPWR,
    inout  wire VGND,
  `endif
  input  logic       clk_i,
  input  logic       rst_in,
  input  logic       en_i,
  //
  input  logic       z_osc_i,
  input  logic       z_osc_sel_i,
  //
  input  logic       ctrl_we_i,
  input  logic [1:0] ctrl_adr_i,
  input  logic [7:0] ctrl_din_i,
  //
  output logic       tst_o
);

wire a_ro_osc;
wire [7:0] a_ro_tap;
wire b_ro_osc;
wire c_ro_osc;
wire d_ro_osc;

wire [3:0]  en_ros;
wire [2:0]  en_load;
wire [5:0]  sel_load_src;
wire [31:0] config_val;

(* keep *) ctrl i_ctrl (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .clk_i          ( clk_i         ),
  .rst_in         ( rst_in        ),
  .en_i           ( en_i          ),
  //
  .we_i           ( ctrl_we_i     ),
  .adr_i          ( ctrl_adr_i    ),
  .din_i          ( ctrl_din_i    ),
  //
  .en_ros_o       ( en_ros        ),
  .en_load_o      ( en_load       ),
  .sel_load_src_o ( sel_load_src  ),
  //
  .config_o       ( config_val    )
);

(* keep *) a_ro i_a_ro (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable  ( en_ros[0]         ),
  .osc     ( a_ro_osc          ),
  .osc_tap ( a_ro_tap          ),
  .invsel  ( config_val[21:16] )
);

// (* keep *) b_ro i_b_ro (
// `ifdef USE_POWER_PINS
//   .VPWR   ( VPWR ),
//   .VGND   ( VGND ),
// `endif
//   .enable ( en_ros[1] ),
//   .osc    ( b_ro_osc  )
// );
assign b_ro_osc = 1'b0;  // b_ro removed

// (* keep *) c_ro i_c_ro (
// `ifdef USE_POWER_PINS
//   .VPWR   ( VPWR ),
//   .VGND   ( VGND ),
// `endif
//   .enable ( en_ros[2] ),
//   .osc    ( c_ro_osc  )
// );
assign c_ro_osc = 1'b0;  // c_ro removed

(* keep *) d_ro_tapped i_d_ro_tapped (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable ( en_ros[3]       ),
  .osc    ( d_ro_osc        ),
  .invsel ( config_val[4:0] ),
  .ffsel  ( config_val[6:5] )
);

assign tst_o = config_val[7];

wire _unused = &{config_val[23:22], en_ros[2:1]};  // spare config bits, enables of removed b_ro/c_ro


// --------- LOAD[0] ---------

wire osc_to_e;
assign osc_to_e = (sel_load_src[1:0] == 2'd0) ? a_ro_osc :
                  (sel_load_src[1:0] == 2'd1) ? b_ro_osc :
                  (sel_load_src[1:0] == 2'd2) ? c_ro_osc : d_ro_osc;

// sel_load_src[1:0] == 1 (b_ro, removed): a_ro tap mode,
// branch b is driven by a_ro tap b and enabled by config[24+b]
wire       e_tap_mode;
wire [7:0] en_at_e;
wire [7:0] osc_at_e;
assign e_tap_mode = (sel_load_src[1:0] == 2'd1);
assign en_at_e    = e_tap_mode ? config_val[31:24] : config_val[15:8];

genvar b;
generate
  for (b = 0; b < 8; b = b + 1) begin : g_osc_e
    assign osc_at_e[b] = z_osc_sel_i ? z_osc_i :
                         ((e_tap_mode ? a_ro_tap[b] : osc_to_e) & en_load[0]);
  end
endgenerate

(* keep *) e_load_uniform i_e_load_uniform (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .osc  ( osc_at_e  ),
  .en   ( en_at_e   )
);

// --------- LOAD[1] ---------

wire osc_to_f;
wire osc_at_f;
assign osc_to_f = (sel_load_src[3:2] == 2'd0) ? a_ro_osc :
                  (sel_load_src[3:2] == 2'd1) ? b_ro_osc :
                  (sel_load_src[3:2] == 2'd2) ? c_ro_osc : d_ro_osc;

assign osc_at_f = z_osc_sel_i ? z_osc_i : (osc_to_f & en_load[1]);

(* keep *) f_load_binary i_f_load_binary (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .osc    ( osc_at_f          ),
  .en     ( config_val[12:8]  )
);


// --------- LOAD[2] ---------

wire osc_to_g;
wire osc_at_g;
assign osc_to_g = (sel_load_src[5:4] == 2'd0) ? a_ro_osc :
                  (sel_load_src[5:4] == 2'd1) ? b_ro_osc :
                  (sel_load_src[5:4] == 2'd2) ? c_ro_osc : d_ro_osc;

assign osc_at_g = z_osc_sel_i ? z_osc_i : (osc_to_g & en_load[2]);

(* keep *) g_glitch i_g_glitch (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .osc    ( osc_at_g          ),
  .en     ( config_val[15:8]  )
);

endmodule