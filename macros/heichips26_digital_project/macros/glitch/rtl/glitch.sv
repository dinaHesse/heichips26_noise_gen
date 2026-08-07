// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module glitch
#(
  parameter int unsigned NUM_STAGES = 19
)(
  input logic               enable,

  output logic              osc
);

wire logic [NUM_STAGES-1:0] buffer_out;
wire logic out_xor1, out_xor2;


  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        (* keep *)sg13cmos5l_buf_16 buffer_inst (
          .A(enable), // Last stage feedback if enabled
          .X(buffer_out[i]) // First stage output
        );
      end
      else begin
        (* keep *)sg13cmos5l_buf_16 buffer_inst (
          .A(buffer_out[i-1]), // Previous stage outputs
          .X(buffer_out[i]) // Current stage output
        );
      end
    end
  endgenerate


(* keep *)sg13cmos5l_xor2_1 xor1 (
    .X(out_xor1), 
    .A(buffer_out[1]), // must be 5 buffers
    .B(buffer_out[6])
);

(* keep *)sg13cmos5l_xor2_1 xor2 (
    .X(out_xor2), 
    .A(buffer_out[13]), // must be 5 buffers
    .B(buffer_out[18])
);

(* keep *)sg13cmos5l_xor2_1 xor3 (
    .X(osc), 
    .A(out_xor1),
    .B(out_xor2)
);

endmodule

`default_nettype wire
