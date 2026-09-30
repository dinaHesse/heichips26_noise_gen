// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module a_ro #(
  parameter INVSEL_BITS = 6
)(
  input  logic enable,
  input logic [INVSEL_BITS-1:0] invsel,
  output logic osc
);

`ifdef SIM

initial osc = 1'b0;
always begin
  #1ps
  if (enable) osc = ~osc;
  else        osc = 1'b0;
end

`else

localparam NUM_INV_MIN = 3;
localparam SIZE_STAGE = 2*2*2*2;


localparam NUM_CODES      = 1 << INVSEL_BITS;
localparam TAP_STEP       = SIZE_STAGE;                               // inverters per invsel step
localparam NUM_INV_MAX    = NUM_INV_MIN + TAP_STEP*(NUM_CODES-1);    // = largest tap

// Every tap must have an odd number of inverters, otherwise the ring does not oscillate
if (NUM_INV_MIN % 2 == 0 || TAP_STEP % 2 != 0) begin : g_chk_odd
  $error("NUM_INV_MIN must be odd and TAP_STEP even");
end


wire [NUM_INV_MAX:0]                                       inv_wire;
wire [NUM_CODES-1:0]                                       taps;


// Only the used taps go into the mux, so inv_wire[0] is no mux input (no false loop in Yosys)
genvar k;
generate
  for (k = 0; k < NUM_CODES; k = k + 1) begin : g_tap
    assign taps[k] = inv_wire[NUM_INV_MIN + TAP_STEP*k];
  end
endgenerate

assign inv_wire[0] = taps[invsel] & enable;
assign osc         = inv_wire[2];

genvar i;
generate
  for (i = 0; i < NUM_INV_MAX; i = i + 1) begin
      sg13cmos5l_inv_1 i_inv (
        .A( inv_wire[i]   ),
        .Y( inv_wire[i+1] )
      );

  end
endgenerate





`endif

endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */






















// localparam NUM_STAGES = 125;//303;
// localparam NUM_FF = 7 ;
// localparam SIZE_STAGE = 2;//2*2*2;


// wire [NUM_STAGES:0] inv_wire;
// wire [NUM_FF:0] ff_wire;

// assign inv_wire[0] = inv_wire[NUM_STAGES] & enable;
// assign osc = ff_wire[NUM_FF-1];

// sg13cmos5l_inv_1 inv_0 (
//       .A( inv_wire[0]   ),
//       .Y( inv_wire[1] )
//     );

// genvar i;
// generate
//   for (i = 1; i < NUM_STAGES; i = i + 1) begin
//     sg13cmos5l_inv_1 i_inv1 (
//       .A( inv_wire[i]   ),
//       .Y( inv_wire[i+1] )
//     );
//     // sg13cmos5l_inv_16 i_inv4 (
//     //   .A( inv_wire[i+1]   ),
//     //   .Y( inv_wire[i+2] )
//     // );
//   end
// endgenerate


//     sg13cmos5l_dfrbp_1 ff2_0 (
//       .D(ff_wire[0]),
//       .CLK(inv_wire[NUM_STAGES]),
//       .Q(   ),
//       .Q_N(ff_wire[0] ),
//       .RESET_B(enable)
//     );
// generate
//   for (i = 1; i < NUM_FF; i = i + 1) begin
//     sg13cmos5l_dfrbp_1 i_ff2 (
//       .D(ff_wire[i]),
//       .CLK(ff_wire[i-1]),
//       .Q(   ),
//       .Q_N( ff_wire[i] ),
//       .RESET_B(enable)
//     );
//   end
// endgenerate



// `endif

// endmodule


// `default_nettype wire
// /* verilator lint_on UNOPTFLAT */