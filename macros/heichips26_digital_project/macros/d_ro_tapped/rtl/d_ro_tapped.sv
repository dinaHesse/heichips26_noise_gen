// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module d_ro_tapped #(
  parameter FSEL_BITS = 8
)(
  input  logic                  enable,
  output logic                  osc,
  input  logic [FSEL_BITS-1:0]  fsel_i
);

localparam NUM_STAGES_MIN = 3;

localparam NUM_CODES      = 1 << FSEL_BITS;
localparam NUM_STAGES_MAX = NUM_STAGES_MIN + 2*(NUM_CODES-1);

wire [NUM_STAGES_MAX:0]             inv_wire;
wire [$clog2(NUM_STAGES_MAX+1)-1:0] tap_idx;
wire                                feedback;

assign tap_idx  = NUM_STAGES_MIN + {fsel_i, 1'b0};
assign feedback = inv_wire[tap_idx];

assign inv_wire[0] = feedback & enable;
assign osc         = inv_wire[2];

genvar i;
generate
  for (i = 0; i < NUM_STAGES_MAX; i = i + 1) begin
    sg13cmos5l_inv_1 i_inv (
      .A( inv_wire[i]   ),
      .Y( inv_wire[i+1] )
    );
  end
endgenerate

endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */