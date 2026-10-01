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
  output logic [31:0] config_o
);

logic [7:0]   prng_din;
logic         prng_we;
logic [31:0]  prng_dout;

logic [31:0]  cfg_force_en;
logic [31:0]  cfg_force_val;

logic [5:0]   prng_div;
logic [5:0]   prng_cnt_r;
logic         prng_step;

assign config_o = (cfg_force_en & cfg_force_val) |
                  (~cfg_force_en & prng_dout);

// PRNG rate: step every prng_div+1 cycles (prng_div = 0: every cycle).
// '>=' so that lowering prng_div while running never waits for a counter wrap.
assign prng_step = (prng_cnt_r >= prng_div);

always_ff @( posedge clk_i ) begin
  if (~rst_in) prng_cnt_r <= '0;
  else         prng_cnt_r <= prng_step ? '0 : prng_cnt_r + 6'd1;
end

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
  .prng_div_o       ( prng_div        ),
  //
  .cfg_force_en_o   ( cfg_force_en    ),
  .cfg_force_val_o  ( cfg_force_val   )
);

xorshift32 i_xorshift32 (
  .clk    ( clk_i     ),
  .rst_in ( rst_in    ),
  .ld     ( prng_we   ),
  .step   ( prng_step ),
  .din    ( prng_din  ),
  .out    ( prng_dout )
);

endmodule