// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

// Glitch amplification: every osc edge runs down a delay line with 8 taps, and the
// XOR of the taps toggles once per tap, i.e. 8 times per osc edge, ~0.4 ns apart.
// The tap spacing (one dlygate4sd3_1, ~0.39 ns typ) must stay well above the XOR
// delay (~0.1-0.17 ns), and every tap needs the same number of XOR levels, otherwise
// transitions of neighbouring taps coincide and cancel. Full multiplication needs
// half the osc period to be longer than the line (~2.7 ns), i.e. osc below ~150 MHz.
module g_glitch #(
  parameter EN_BITS = 8
) (
  input wire               osc,
  input wire [EN_BITS-1:0] en
);

localparam NUM_STAGES = 7;  // 8 taps, matches the 3-level XOR tree below

(* keep *) wire o1;

sg13cmos5l_inv_1 i_inp1 ( .A( osc ), .Y( o1 ) );

// Delay line
(* keep *) wire [NUM_STAGES:0] w;

sg13cmos5l_inv_4 i_inp2 ( .A( o1 ), .Y( w[0] ) );

genvar i;
generate
  for (i = 0; i < NUM_STAGES; i++) begin : g_stage
    (* keep *) sg13cmos5l_dlygate4sd3_1 i_dly ( .A( w[i] ), .X( w[i+1] ) );
  end
endgenerate

// Balanced XOR tree: neighbouring taps paired, every tap goes through 3 levels
(* keep *) wire [3:0] x1;
(* keep *) wire [1:0] x2;
(* keep *) wire       x3;
(* keep *) wire       res;

generate
  for (i = 0; i < 4; i++) begin : g_xor1
    (* keep *) sg13cmos5l_xnor2_1 i_xor ( .A( w[2*i] ), .B( w[2*i+1] ), .Y( x1[i] ) );
  end
  for (i = 0; i < 2; i++) begin : g_xor2
    (* keep *) sg13cmos5l_xnor2_1 i_xor ( .A( x1[2*i] ), .B( x1[2*i+1] ), .Y( x2[i] ) );
  end
endgenerate

(* keep *) sg13cmos5l_xnor2_1 i_xor3 ( .A( x2[0] ), .B( x2[1] ), .Y( x3 ) );

// The tree output drives only this buffer, the buffer drives the waster branches
(* keep *) sg13cmos5l_buf_4 i_res_buf ( .A( x3 ), .X( res ) );

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
  (* keep *) wire n8;

  (* keep *) sg13cmos5l_inv_1  i_inv1   ( .A( res & en[b] ), .Y( n1  ) );
  (* keep *) sg13cmos5l_inv_2  i_inv2   ( .A( n1          ), .Y( n2  ) );
  (* keep *) sg13cmos5l_inv_4  i_inv4   ( .A( n2          ), .Y( n3  ) );
  (* keep *) sg13cmos5l_inv_8  i_inv8   ( .A( n3          ), .Y( n4  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16  ( .A( n4          ), .Y( n5  ) );
  //
  (* keep *) sg13cmos5l_inv_16 i_inv16b ( .A( n5          ), .Y( n6  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16c ( .A( n6          ), .Y( n7  ) );
  (* keep *) sg13cmos5l_inv_16 i_inv16d ( .A( n7          ), .Y( n8  ) );
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */
