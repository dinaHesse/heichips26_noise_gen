module csr #(
  parameter RO_CONF_W = 32,
  parameter RO_EN_N   = 4
) ( 
  input  logic                  clk_i,
  input  logic                  rst_in,
  //
  input  logic                  we_i,
  input  logic [1:0]            adr_i,
  input  logic [7:0]            din_i,
  // init prng
  output logic [7:0]            prng_d_o,
  output logic                  prng_we_o,
  // muxes after prng
  output logic [RO_CONF_W-1:0]  ro_conf_force_o,
  output logic [RO_CONF_W-1:0]  ro_conf_val_o,
  // ro enables
  output logic [RO_EN_N-1:0]    ro_en_o         
);

// All writes are done by shifting in 8 bits at a time
// MSB-first 

// adr_i   
//    0   ... prng seed
//    1   ... ro_conf_force_o
//    2   ... ro_conf_val_o
//    3   ... ro_en_o

// Registers
//
logic [RO_CONF_W-1:0] ro_conf_force_r;
logic [RO_CONF_W-1:0] ro_conf_val_r;
logic [RO_EN_N-1:0]   ro_en_r;

always_ff @( posedge clk_i ) begin
  if (~rst_in) begin
    ro_conf_force_r <= 32'hFFFF_FFFF;
    ro_conf_val_r   <= 32'h0000_0000;
    ro_en_r         <= '0;
  end else begin
    if (we_i) begin
      if (adr_i == 2'd1) ro_conf_force_r  <= {ro_conf_force_r[RO_CONF_W-1-8:0], din_i};
      if (adr_i == 2'd2) ro_conf_val_r    <= {ro_conf_val_r[RO_CONF_W-1-8:0], din_i};
      if (adr_i == 2'd3) ro_en_r          <= din_i[RO_EN_N-1:0];
    end
  end
end

// Outputs
//
assign prng_we_o        = (adr_i == 'd0) & we_i;
assign prng_d_o         = din_i;

assign ro_conf_force_o  = ro_conf_force_r;
assign ro_conf_val_o    = ro_conf_val_r;

assign ro_en_o          = ro_en_r;

endmodule
