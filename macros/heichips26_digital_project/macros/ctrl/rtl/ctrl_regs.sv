module ctrl_regs (
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
  output logic [7:0]  prng_d_o,
  output logic        prng_we_o,
  //
  output logic [3:0]  en_ros_o,
  output logic [2:0]  en_load_o,
  output logic [5:0]  sel_load_src_o,
  output logic [5:0]  prng_div_o,
  //
  output logic [31:0] cfg_force_en_o,
  output logic [31:0] cfg_force_val_o
);

// All writes are done by shifting in 8 bits at a time MSB-first
// (config force enable/value: 4 bytes = 32 bits, control register: 3 bytes = 19 bits)

//  Addr | 
// | b00 | PRNG Seed  
// | b01 | Config force enable
// | b10 | Config write forced value
// | b11 | Control register
//
// Control register: [3:0] en_ros, [6:4] en_load, [12:7] sel_load_src (e, f, g),
//                   [18:13] prng_div (PRNG steps every prng_div+1 cycles)

logic [31:0] config_force_enable_r;
logic [31:0] config_force_value_r;
logic [18:0] config_ctrl_r;

assign prng_we_o        = (adr_i == 'd0) & we_i;
assign prng_d_o         = din_i;

assign en_ros_o         = config_ctrl_r[3:0] & {4{~we_i & en_i}};
assign en_load_o        = config_ctrl_r[6:4] & {3{~we_i & en_i}};
assign sel_load_src_o   = config_ctrl_r[12:7];
assign prng_div_o       = config_ctrl_r[18:13];

assign cfg_force_en_o   = config_force_enable_r;
assign cfg_force_val_o  = config_force_value_r;

always_ff @( posedge clk_i ) begin
  if (~rst_in) begin
    config_force_enable_r <= 32'hFFFFFFFF;
    config_force_value_r  <= 32'h00000000;
    config_ctrl_r         <= 19'h0;
  end else begin
    if (we_i) begin
      if (adr_i == 2'd1) config_force_enable_r <= {config_force_enable_r[23:0], din_i};
      if (adr_i == 2'd2) config_force_value_r  <= {config_force_value_r[23:0], din_i};
      if (adr_i == 2'd3) config_ctrl_r         <= {config_ctrl_r[10:0], din_i};
    end
  end
end

endmodule