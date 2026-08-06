// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module load #(
    parameter int unsigned WIDTH = 8
)(
    input logic     input_ro,
    inout logic [WIDTH:1] tap
);

wire logic  out_buffer;

basic_buffer ini_buffer(input_ro, out_buffer);

genvar i;
generate
    for (i = 0; i < WIDTH; i++) begin
        if  (i == 0) begin
            sg13cmos5l_inv_16 inv16 (
            .Y(tap[i+1]), 
            .A(out_buffer)
            );
        end else begin
            sg13cmos5l_inv_16 inv16 (
            .Y(tap[i+1]), 
            .A(tap[i])
            );
        end
    end
endgenerate
  

    endmodule




`default_nettype wire
