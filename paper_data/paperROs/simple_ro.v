`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/21/2025 02:09:48 PM
// Design Name:
// Module Name: ibex_osc
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module simple_ro
  #(
     parameter NUM_STAGES = 7
   )
   (
     input  enable,
     (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) output oscillation
   );

  (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [NUM_STAGES-1:0] inverter_stages;
  assign oscillation = inverter_stages[NUM_STAGES-1] & enable;


  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT_INVERTER inverter_inst (
          .in(enable ? inverter_stages[NUM_STAGES-1] : 1'b0), // Last stage feedback if enabled
          .out(inverter_stages[i]) // First stage output
        );
      end
      else begin
        (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT_INVERTER inverter_inst (
          .in(inverter_stages[i-1]), // Previous stage output
          .out(inverter_stages[i]) // Current stage output
        );
      end
    end
  endgenerate

endmodule

module LUT_INVERTER (
    input wire in,
    output wire out
  );

    //  Truth Table to determine INIT value for a LUT1
    //      ________
    //     | I0 | O |
    //     |--------|
    //     |  0 | 1 |\
    //     |  1 | 0 |/ = 2'b01
    //     ----------

  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT1 #(
    .INIT(2'b01)  // Specify LUT Contents
  ) LUT1_inst (
    .I0(in),
    .O(out)
  );

endmodule