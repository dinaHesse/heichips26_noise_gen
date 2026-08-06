module noise_gen_top (
  input  logic       clk_i,
  input  logic       rst_in,

  input  logic       csr_we_i,
  input  logic [1:0] csr_adr_i,
  input  logic [7:0] csr_din_i
);

localparam RO_CONF_W = 32;
localparam RO_EN_N   = 4;

logic prnd_d;
logic prng_we;

logic [4:0] nosr_en;
logic [31:0] nosr_f_val;
logic [31:0] nosr_frce;

logic [31:0] prng_val;

csr #(
  .RO_CONF_W  ( RO_CONF_W ),
  .RO_EN_N    ( RO_EN_N   )
) i_csr ( 
  .clk_i      ( clk_i     ),
  .rst_in     ( rst_in    ),
  //
  .we_i       ( csr_we_i  ),
  .adr_i      ( csr_adr_i ),
  .din_i      ( csr_din_i ),
  
  .prng_d_o   ( prnd_d    ),
  .prng_we_o  ( prng_we   ),

  .ro_conf_force_o  ( nosr_frce  ),
  .ro_conf_val_o    ( nosr_f_val ),
  .ro_en_o          ( nosr_en    )         
);


xorshift32 i_xorshift32 (
  .clk      ( clk_i     ),
  .reset    ( rst_in    ),
  .ld       ( prng_we   ),
  .din      ( prng_d    ),
  .out      ( prng_val  )
);


// Mux forced values
logic [31:0] nosr_val;

assign nosr_val =  (nosr_f_val & nosr_frce) | (prng_val & ~nosr_frce);

/*
noiser1 i_noiser_1 (
  .clk_i  ( clk_i       ),
  .rst_in ( rst_in      ),
  .en     ( nosr_en[0]  ),
  .conf   ( nosr_val    )
);

module noiser1 (
  input logic         clk_i,
  input logic         rst_in,
  input logic         en,
  input logic [31:0]  conf,
);

*/

endmodule