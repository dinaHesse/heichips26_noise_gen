module ctrl (
  `ifdef USE_POWER_PINS
    inout  wire VPWR,
    inout  wire VGND,
  `endif
  input  logic        clk_i,
  input  logic        rst_in,
  input  logic        en_i,
  //
  input  logic        we_i,
  input  logic [1:0]  adr_i,
  input  logic [7:0]  din_i,
  //
  output logic [3:0]  en_ros_o,
  output logic [2:0]  en_load_o,
  output logic [5:0]  sel_load_src_o,
  //
  output logic [15:0] config_o
);

logic [7:0]   prng_din;
logic         prng_we;
logic [31:0]  prng_dout;

logic [15:0]  cfg_force_en;
logic [15:0]  cfg_force_val;

assign config_o = (cfg_force_en & cfg_force_val) |
                  (~cfg_force_en & prng_dout[15:0]);

wire _unused = prng_dout[31:16];

ctrl_regs i_ctrl_regs (
  .clk_i            ( clk_i           ),
  .rst_in           ( rst_in          ),
  .en_i             ( en_i            ),
  //
  .we_i             ( we_i            ),
  .adr_i            ( adr_i           ),
  .din_i            ( din_i           ),
  //
  .prng_d_o         ( prng_din        ),
  .prng_we_o        ( prng_we         ),
  //
  .en_ros_o         ( en_ros_o        ),
  .en_load_o        ( en_load_o       ),
  .sel_load_src_o   ( sel_load_src_o  ),
  //
  .cfg_force_en_o   ( cfg_force_en    ),
  .cfg_force_val_o  ( cfg_force_val   )
);

xorshift32 i_xorshift32 (
  .clk    ( clk_i     ),
  .rst_in ( rst_in    ),
  .ld     ( prng_we   ),
  .din    ( prng_din  ),
  .out    ( prng_dout )
);

endmodule