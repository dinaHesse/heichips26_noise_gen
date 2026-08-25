// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module f_load_binary #( 
  parameter EN_BITS = 5
) (
  input logic               osc,
  input logic [EN_BITS-1:0] en
);

genvar b;
genvar i;

generate
for (b = 0; b < EN_BITS; b++) begin
  // Input buffer to drive multiple chains
  (* keep *) wire w1;
  (* keep *) wire w2;
  (* keep *) wire w3;
  (* keep *) wire w4;

  (* keep *) sg13cmos5l_inv_1  i_inv_inp1   ( .A( osc & en[b] ), .Y( w1 ) );
  (* keep *) sg13cmos5l_inv_4  i_inv_inp2   ( .A( w1          ), .Y( w2 ) );
  (* keep *) sg13cmos5l_inv_8  i_inv_inp3   ( .A( w2          ), .Y( w3 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv_inp4   ( .A( w3          ), .Y( w4 ) );

  // Binary encoding
  // en[0] -> 1 chain
  // en[1] -> 2 chains
  // ...
  for (i = 0; i < (1 << b); i++) begin
    (* keep *) wire n1;
    (* keep *) wire n2;
    (* keep *) wire n3;
    (* keep *) wire n4;
    (* keep *) wire n5;
    (* keep *) wire n6;
    (* keep *) wire n7;

    (* keep *) sg13cmos5l_inv_1  i_inv1   ( .A( w4 ), .Y( n1 ) );
    (* keep *) sg13cmos5l_inv_2  i_inv2   ( .A( n1 ), .Y( n2 ) );
    (* keep *) sg13cmos5l_inv_4  i_inv4   ( .A( n2 ), .Y( n3 ) );
    (* keep *) sg13cmos5l_inv_8  i_inv8   ( .A( n3 ), .Y( n4 ) );
    (* keep *) sg13cmos5l_inv_16 i_inv16  ( .A( n4 ), .Y( n5 ) );
    //
    (* keep *) sg13cmos5l_inv_16 i_inv16b ( .A( n5 ), .Y( n6 ) );
    (* keep *) sg13cmos5l_inv_16 i_inv16c ( .A( n6 ), .Y( n7 ) );
  end
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */