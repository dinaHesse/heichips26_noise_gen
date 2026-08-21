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
  //
  output logic [15:0] cfg_force_en_o,
  output logic [15:0] cfg_force_val_o
);

// All writes are done by shifting in 8 bits at a time MSB-first 

//  Addr | 
// | b00 | PRNG Seed  
// | b01 | Config force enable
// | b10 | Config write forced value
// | b11 | Control register

logic [15:0] config_force_enable_r;
logic [15:0] config_force_value_r;
logic [12:0] config_ctrl_r;

assign prng_we_o        = (adr_i == 'd0) & we_i;
assign prng_d_o         = din_i;

assign en_ros_o         = config_ctrl_r[3:0] & {4{~we_i}};
assign en_load_o        = config_ctrl_r[6:4] & {3{~we_i}};
assign sel_load_src_o   = config_ctrl_r[12:7];

assign cfg_force_en_o   = config_force_enable_r;
assign cfg_force_val_o  = config_force_value_r;

always_ff @( posedge clk_i ) begin
  if (~rst_in) begin
    config_force_enable_r <= 16'hFFFF;
    config_force_value_r  <= 16'h0000;
    config_ctrl_r         <= 13'h0;
  end else begin
    if (we_i) begin
      if (adr_i == 2'd1) config_force_enable_r <= {config_force_enable_r[7:0], din_i};
      if (adr_i == 2'd2) config_force_value_r  <= {config_force_value_r[7:0], din_i};
      if (adr_i == 2'd3) config_ctrl_r         <= {config_ctrl_r[4:0], din_i};
    end
  end
end

endmodule