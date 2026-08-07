module noise_gen_top (
  `ifdef USE_POWER_PINS
    inout  wire VPWR,
    inout  wire VGND,
  `endif
  input  logic       clk_i,
  input  logic       rst_in,

  input  logic       csr_we_i,
  input  logic [1:0] csr_adr_i,
  input  logic [7:0] csr_din_i
);

localparam RO_CONF_W = 32;
localparam RO_EN_N   = 4;

logic        prng_we;
logic [7:0]  prng_d;

(* keep *) logic [3:0]  nosr_en;
(* keep *) logic [31:0] nosr_f_val;
(* keep *) logic [31:0] nosr_frce;

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
  
  .prng_d_o   ( prng_d    ),
  .prng_we_o  ( prng_we   ),

  .ro_conf_force_o  ( nosr_frce  ),
  .ro_conf_val_o    ( nosr_f_val ),
  .ro_en_o          ( nosr_en    )         
);


xorshift32 i_xorshift32 (
  .clk      ( clk_i     ),
  .rst_in   ( rst_in    ),
  .ld       ( prng_we   ),
  .din      ( prng_d    ),
  .out      ( prng_val  )
);

// Mux forced values
(* keep *) logic [31:0] nosr_val;

assign nosr_val = (nosr_f_val & nosr_frce) | (prng_val & ~nosr_frce);


(* keep *) config_ro i_config_ro (
  `ifdef USE_POWER_PINS
    .VPWR   ( VPWR ),
    .VGND   ( VGND ),
  `endif
  .enable   ( nosr_en[0]    ),
  .stage_en ( nosr_val[3:0] ),
  /* verilator lint_off PINCONNECTEMPTY */
  .osc      ( /* nc */      )
  /* verilator lint_on PINCONNECTEMPTY */
);

wire no_warn = &{nosr_en[3:1], nosr_val[31:4]};

endmodule