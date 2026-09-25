// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module d_ro_tapped #(
  parameter FSEL_BITS = 7
)(
  input  logic                  enable,
  output logic                  osc,
  input  logic [FSEL_BITS-1:0]  fsel
);

`ifdef SIM

initial osc = 1'b0;
always begin
  #(1ps * (fsel == 0 ? 1 : fsel));
  if (enable) osc = ~osc;
  else        osc = 1'b0;
end

`else

localparam NUM_STAGES_MIN = 3;
localparam SIZE_STAGE = 2*2*2;

localparam NUM_CODES      = 1 << FSEL_BITS;
localparam NUM_STAGES_MAX = NUM_STAGES_MIN + 2*(NUM_CODES-1);

wire [SIZE_STAGE*NUM_STAGES_MAX:0]             inv_wire;
wire [$clog2(NUM_STAGES_MAX+1)-1:0] tap_idx;
wire                                feedback;

assign tap_idx  = NUM_STAGES_MIN + SIZE_STAGE*{fsel, 1'b0};
assign feedback = inv_wire[tap_idx];

assign inv_wire[0] = feedback & enable;
assign osc         = inv_wire[2];

genvar i;
genvar j;
generate
  for (i = 0; i < NUM_STAGES_MAX; i = i + 1) begin
    for (j = 0; j < SIZE_STAGE; j = j + 1) begin
      sg13cmos5l_inv_1 i_inv (
        .A( inv_wire[(SIZE_STAGE*i)+j]   ),
        .Y( inv_wire[(SIZE_STAGE*i)+j+1] )
      );
    end
  end
endgenerate

`endif

endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */