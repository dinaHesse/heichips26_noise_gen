// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module simple_ro
#(
  parameter int unsigned NUM_STAGES = 8
)(
  input logic               enable,

  output logic              osc
);

    // RO implementation

    wire [NUM_STAGES-1:0] inverter_out;

    assign oscillation = inverter_out[NUM_STAGES-1] & enable;

  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        inverter inverter_inst (
          .in(enable ? inverter_out[NUM_STAGES-1] : 1'b0), // Last stage feedback if enabled
          .out(inverter_out[i]) // First stage output
        );
      end
      else begin
        inverter inverter_inst (
          .in(inverter_out[i-1]), // Previous stage output
          .out(inverter_out[i]) // Current stage output
        );
      end
    end
  endgenerate

    module inverter (
        input wire in,
        output wire out
    );

        assign out = ~in;

    endmodule



    endmodule

`default_nettype wire
