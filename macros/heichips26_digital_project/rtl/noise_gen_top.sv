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
wire b_ro_osc;
wire c_ro_osc;
wire d_ro_osc;

wire [3:0]  en_ros;
wire [2:0]  en_load;
wire [5:0]  sel_load_src;
wire [15:0] config_val;

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
  .enable ( en_ros[0] ),
  .osc    ( a_ro_osc  )   
);

(* keep *) b_ro i_b_ro (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable ( en_ros[1] ),
  .osc    ( b_ro_osc  )   
);

(* keep *) c_ro i_c_ro (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable ( en_ros[2] ),
  .osc    ( c_ro_osc  )   
);

(* keep *) d_ro_tapped i_d_ro_tapped (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable ( en_ros[3]       ),
  .osc    ( d_ro_osc        ),
  .fsel   ( config_val[6:0] )  
);

assign tst_o = config_val[7];


// --------- LOAD[0] --------- 

wire osc_to_e;
wire osc_at_e;
assign osc_to_e = (sel_load_src[1:0] == 2'd0) ? a_ro_osc :
                  (sel_load_src[1:0] == 2'd1) ? b_ro_osc :
                  (sel_load_src[1:0] == 2'd2) ? c_ro_osc : d_ro_osc;

assign osc_at_e = z_osc_sel_i ? z_osc_i : (osc_to_e & en_load[0]);

(* keep *) e_load_uniform i_e_load_uniform (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .osc  ( osc_at_e          ),
  .en   ( config_val[15:8]  )
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