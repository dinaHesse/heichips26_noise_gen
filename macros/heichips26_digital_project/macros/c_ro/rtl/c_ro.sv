// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module c_ro (
  input  logic enable,
  output logic osc
);

`ifdef SIM

initial osc = 1'b0;
always begin
  #5ps
  if (enable) osc = ~osc;
  else        osc = 1'b0;
end

`else

localparam NUM_STAGES = 149;

wire [NUM_STAGES:0] inv_wire;

assign inv_wire[0] = inv_wire[NUM_STAGES] & enable;
assign osc = inv_wire[2];

genvar i;
generate
  for (i = 0; i < NUM_STAGES; i = i + 1) begin
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