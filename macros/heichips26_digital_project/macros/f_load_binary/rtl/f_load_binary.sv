// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module f_load_binary #( 
  parameter EN_BITS = 6
) (
  input logic [EN_BITS-1:0] en_i
);

genvar b;
genvar i;

generate
for (b = 0; b < EN_BITS; b++) begin
  // Binary encoding
  // en_i[0] -> 1 chain
  // en_i[1] -> 2 chains
  // ...
  for (i = 0; i < (1 << b); i++) begin
    (* keep *) wire n1;
    (* keep *) wire n2;
    (* keep *) wire n3;
    (* keep *) wire n4;

    (* keep *) sg13cmos5l_inv_1  i_inv1  ( .A( en_i[b] ), .Y( n1 ) );
    (* keep *) sg13cmos5l_inv_2  i_inv2  ( .A( n1      ), .Y( n2 ) );
    (* keep *) sg13cmos5l_inv_4  i_inv4  ( .A( n2      ), .Y( n3 ) );
    (* keep *) sg13cmos5l_inv_8  i_inv8  ( .A( n3      ), .Y( n4 ) );
  end
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */