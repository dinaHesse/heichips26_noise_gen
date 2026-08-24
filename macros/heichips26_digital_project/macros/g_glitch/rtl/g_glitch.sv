// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module g_glitch #(
  parameter EN_BITS    = 8,
  parameter NUM_STAGES = 12
) (
  input wire               osc,
  input wire [EN_BITS-1:0] en
);

(* keep *) wire o1;
(* keep *) wire o2;

sg13cmos5l_inv_1 i_inp1 ( .A( osc ), .Y( o1 ) );
sg13cmos5l_inv_4 i_inp2 ( .A( o1  ), .Y( o2 ) );

// Generate
(* keep *) wire [NUM_STAGES:0] w;
(* keep *) wire res;

assign w[0] = o2;

genvar i;
generate
  for (i = 0; i < NUM_STAGES; i++) begin
    (* keep *) wire tmp; 
    sg13cmos5l_inv_1 i_inv  ( .A( w[i] ), .Y( tmp    ) );
    sg13cmos5l_inv_1 i_inv2 ( .A( tmp  ), .Y( w[i+1] ) );
  end
endgenerate

assign res = ^w;

// Waste
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

  (* keep *) sg13cmos5l_inv_1  i_inv1   ( .A( res & en[b] ), .Y( n1  ) );
  (* keep *) sg13cmos5l_inv_2  i_inv2   ( .A( n1          ), .Y( n2  ) );
  (* keep *) sg13cmos5l_inv_4  i_inv4   ( .A( n2          ), .Y( n3  ) );
  (* keep *) sg13cmos5l_inv_8  i_inv8   ( .A( n3          ), .Y( n4  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16  ( .A( n4          ), .Y( n5  ) );
  //
  (* keep *) sg13cmos5l_inv_16 i_inv16b ( .A( n5          ), .Y( n6  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16c ( .A( n6          ), .Y( n7  ) );
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */
