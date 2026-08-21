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
  input  logic       ctrl_we_i,
  input  logic [1:0] ctrl_adr_i,
  input  logic [7:0] ctrl_din_i
);

wire a_ro_osc;
wire b_ro_osc;
wire c_ro_osc;
wire d_ro_osc;

wire [7:0] fsel;
assign fsel = 'b0;

wire [3:0]  en_ros;
wire [2:0]  en_load;
wire [5:0]  sel_load_src;
wire [15:0] config_val;

wire _unused = &{ctrl_we_i, ctrl_adr_i, ctrl_din_i, a_ro_osc, b_ro_osc, c_ro_osc, d_ro_osc, en_load, config_val, sel_load_src};

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

/*
(* keep *) d_ro_tapped i_d_ro_tapped (
`ifdef USE_POWER_PINS
  .VPWR   ( VPWR ),
  .VGND   ( VGND ),
`endif
  .enable ( en_ros[3] ),
  .osc    ( d_ro_osc  ),
  .fsel_i ( fsel      )  
);
*/
assign d_ro_osc = 'b0;
wire _unused2 = &{fsel, en_ros[3]};


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


endmodule