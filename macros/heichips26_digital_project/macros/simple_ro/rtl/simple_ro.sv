// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module simple_ro
#(
  parameter int unsigned NUM_STAGES = 9 // must be odd!
)(
  input logic               enable,

  output logic              osc
);

    // RO implementation

    wire [NUM_STAGES-1:0] inverter_out;

    assign osc = inverter_out[NUM_STAGES-1] & enable;

  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        sg13cmos5l_inv_16 inverter_inst (
          .A(enable ? inverter_out[NUM_STAGES-1] : 1'b0), // Last stage feedback if enabled
          .Y(inverter_out[i]) // First stage output
        );
      end
      else begin
        if (i%2 == 0)
        begin
          sg13cmos5l_inv_16 inverter_inst (
            .A(inverter_out[i-1]), // Previous stage output
            .Y(inverter_out[i]) // Current stage output
          );
        end
        else begin
          sg13cmos5l_inv_1 inverter_inst (
            .A(inverter_out[i-1]), // Previous stage output
            .Y(inverter_out[i]) // Current stage output
          );
        end

      end
    end
  endgenerate

endmodule

// module inverter (
//     input wire in,
//     output wire out
// );

//     assign out = ~in;

// endmodule

`default_nettype wire
/* verilator lint_on UNOPTFLAT */