// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module d_ro_tapped #(
  parameter INVSEL_BITS = 5,
  parameter FFSEL_BITS = 2
)(
  input  logic                  enable,
  output logic                  osc,
  input  logic [INVSEL_BITS-1:0]  invsel,
  input  logic [FFSEL_BITS-1:0]  ffsel
);

`ifdef SIM

initial osc = 1'b0;
always begin
  // half period grows with the loop length (invsel) and the divider (ffsel)
  #(1ps * (invsel + 1) * (1 << ffsel));
  if (enable) osc = ~osc;
  else        osc = 1'b0;
end

`else

localparam NUM_INV_MIN = 15;  //because FF should work stable with ~1.2GHz input
localparam SIZE_STAGE = 2*2;
localparam NUM_FF = (1 << FFSEL_BITS) - 1;


localparam NUM_CODES      = 1 << INVSEL_BITS;
localparam TAP_STEP       = SIZE_STAGE;                               // inverters per invsel step
localparam NUM_INV_MAX    = NUM_INV_MIN + TAP_STEP*(NUM_CODES-1);    // = largest tap

// Every tap must have an odd number of inverters, otherwise the ring does not oscillate
if (NUM_INV_MIN % 2 == 0 || TAP_STEP % 2 != 0) begin : g_chk_odd
  $error("NUM_INV_MIN must be odd and TAP_STEP even");
end

wire [NUM_INV_MAX:0]                            inv_wire;
wire [NUM_CODES-1:0]                            taps;
wire                                            ro_out;
wire [NUM_FF:0]                                 ff_wire;

// Only the used taps go into the mux, so inv_wire[0] is no mux input (no false loop in Yosys)
genvar k;
generate
  for (k = 0; k < NUM_CODES; k = k + 1) begin : g_tap
    assign taps[k] = inv_wire[NUM_INV_MIN + TAP_STEP*k];
  end
endgenerate

assign ro_out = taps[invsel];

assign inv_wire[0] = ro_out & enable;
assign osc         = ff_wire[ffsel]& enable;//inv_wire[2];

genvar i;
generate
  for (i = 0; i < NUM_INV_MAX; i = i + 1) begin
    sg13cmos5l_inv_1 i_inv (
      .A( inv_wire[i]   ),
      .Y( inv_wire[i+1] )
    );
  end
endgenerate


//Asynchronous Counter / Frequency divider with NUM_FF Flipflops (divides RO frequency by 2^NUM_FF)
//ff_wire[x] is the input-clk of ff[x]
assign ff_wire[0] = ro_out;
generate
  for (i = 1; i < NUM_FF+1; i = i + 1) begin
    sg13cmos5l_dfrbp_1 i_ff (
      .D      ( ff_wire[i] ),
      .CLK    ( ff_wire[i-1]   ),
      .Q      (          ),
      .Q_N    ( ff_wire[i] ),
      .RESET_B( enable   )
    );
  end
endgenerate




`endif

endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */