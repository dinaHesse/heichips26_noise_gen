// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none


module glitch_block
#(
  parameter int unsigned NUM_STAGES = 6
)(
  input logic                   in_buf,

  output logic                  out_xor,
  output logic                  out_buf
);

wire logic [NUM_STAGES-1:0] buffer_out;
genvar i;
generate
  for (i = 0; i < NUM_STAGES; i = i + 1)
  begin
    if(i == 0) begin
      (* keep *)sg13cmos5l_buf_16 buffer_inst (
        .A(in_buf), // Last stage feedback if enabled
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

assign out_buf = buffer_out[NUM_STAGES-1];

(* keep *)sg13cmos5l_xor2_1 xor_inst (
    .X(out_xor), 
    .A(buffer_out[1]),
    .B(buffer_out[NUM_STAGES-1])
);


endmodule

`default_nettype wire
