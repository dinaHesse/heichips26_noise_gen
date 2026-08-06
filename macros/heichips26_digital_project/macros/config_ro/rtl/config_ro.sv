// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module config_ro
#(
  parameter int unsigned NUM_STAGES = 9
)(
  input logic                   enable,
  input logic [(NUM_STAGES/2)-1:0]  stage_en,

  output logic                  osc,
  output logic [NUM_STAGES-1:0] load_en
);

    // RO implementation

    wire [NUM_STAGES-1:0] inverter_out;
    wire [NUM_STAGES-1:0] stage_out;

    assign osc = inverter_out[NUM_STAGES-1] & enable;

  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        sg13cmos5l_inv_8 inverter_inst (
          .A(enable ? inverter_out[NUM_STAGES-1] : 1'b0), // Last stage feedback if enabled
          .Y(inverter_out[i]) // First stage output
        );
      end
      else begin
        sg13cmos5l_inv_8 inverter_inst (
          .A(inverter_out[i-1]), // Previous stage output
          .Y(inverter_out[i]) // Current stage output
        );
      end
    end
  endgenerate

  assign stage_out[0] = inverter_out[0];
  generate
    for (i = 1; i < NUM_STAGES; i = i + 1)
    begin
      if (i % 2 == 0)
      begin
        assign stage_out[i] = inverter_out[i];
      end
      else begin
        assign stage_out[i] = stage_en[i/2] ? inverter_out[i] : stage_out[i-2];
      end
    end
  endgenerate

  assign  load_en[NUM_STAGES-1:0] = stage_out[NUM_STAGES-1:0];

endmodule

// module inverter (
//     input wire in,
//     output wire out
// );

//     assign out = ~in;

// endmodule

`default_nettype wire
/* verilator lint_on UNOPTFLAT */