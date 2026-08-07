// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module config_glitch_v2
#(
  parameter int unsigned NUM_GLITCHES = 8
)(
  input logic               enable,
  input logic [NUM_GLITCHES-2:0] glitch_en, // the first glitch is always enabled, so we only need to pass in the rest of the enable signals
  output logic [NUM_GLITCHES-1:0] out_xor
);

wire logic [NUM_GLITCHES-1:0] buffer_out;


genvar i;
generate
  for (i = 0; i < NUM_GLITCHES; i = i + 1)
  begin
    if(i == 0) begin
      (* keep *) glitch_block #(.NUM_STAGES(6)) glitch_inst (
        .in_buf(enable), 
        .out_xor(out_xor[i]), 
        .out_buf(buffer_out[i]) 
      );
    end
    else begin
      (* keep *) glitch_block #(.NUM_STAGES(6)) glitch_inst (
        .in_buf(glitch_en[i-1] ? buffer_out[i-1] : 1'b0), // Last stage feedback if enabled
        .out_xor(out_xor[i]), 
        .out_buf(buffer_out[i]) 
      );
    end
  end
endgenerate

case (sel)
  2'b00: y = a;
  2'b01: y = b;
  2'b10, 2'b11: y = c;   // multiple labels, comma-separated
  default: y = '0;
endcase

case (sel)
  2'b00: y = a;
  2'b01: y = b;
  2'b10, 2'b11: y = c;   // multiple labels, comma-separated
  default: y = '0;
endcase


endmodule



`default_nettype wire
