// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module e_load_uniform #( 
  parameter EN_BITS = 8
) (
  input logic               osc,
  input logic [EN_BITS-1:0] en
);

genvar b;

generate
for (b = 0; b < EN_BITS; b++) begin
  (* keep *) wire n1;
  (* keep *) wire n2;
  (* keep *) wire n3;
  (* keep *) wire n4;
  (* keep *) wire n5;
  (* keep *) wire n6;
  (* keep *) wire n7;
  (* keep *) wire n8;
  (* keep *) wire n9;
  (* keep *) wire n10;
  (* keep *) wire n11;
  (* keep *) wire n12;
  (* keep *) wire n13;
  (* keep *) wire n14;
  (* keep *) wire n15;
  (* keep *) wire n16;
  (* keep *) wire n17;
  (* keep *) wire n18;

  (* keep *) sg13cmos5l_inv_1  i_inv1   ( .A( osc & en[b] ), .Y( n1  ) );
  (* keep *) sg13cmos5l_inv_2  i_inv2   ( .A( n1          ), .Y( n2  ) );
  (* keep *) sg13cmos5l_inv_4  i_inv4   ( .A( n2          ), .Y( n3  ) );
  (* keep *) sg13cmos5l_inv_8  i_inv8   ( .A( n3          ), .Y( n4  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16  ( .A( n4          ), .Y( n5  ) );
  //
  (* keep *) sg13cmos5l_inv_16 i_inv16b ( .A( n5          ), .Y( n6  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16c ( .A( n5          ), .Y( n7  ) );
  //
  (* keep *) sg13cmos5l_inv_16 i_inv16d ( .A( n6          ), .Y( n8  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16e ( .A( n6          ), .Y( n9  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16f ( .A( n7          ), .Y( n10 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16g ( .A( n7          ), .Y( n11 ) );
  //
  (* keep *) sg13cmos5l_inv_16 i_inv16h ( .A( n8          ), .Y( n12 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16i ( .A( n8          ), .Y( n13 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16j ( .A( n9          ), .Y( n14 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16k ( .A( n9          ), .Y( n15 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16l ( .A( n10         ), .Y( n16 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16m ( .A( n10         ), .Y( n17 ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16n ( .A( n11         ), .Y( n18 ) );
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */