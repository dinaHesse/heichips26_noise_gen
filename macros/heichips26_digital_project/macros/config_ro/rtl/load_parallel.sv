// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module load_parallel #(
    parameter int unsigned WIDTH = 8
)(
    input logic     input_ro,
    input logic [WIDTH-1:0] enable_n,
    output logic [WIDTH-1:0] output_buffer
);

wire logic  out_bbuffer;

(* keep *) basic_buffer ini_buffer(input_ro, out_bbuffer);


genvar i;
generate
    for (i = 0; i < WIDTH; i=i+1) begin : loads_parallel
        (* keep *) switch_buffer sw_buffer(
        .input_buffer(out_bbuffer),
        .enable_n(enable_n[i]),
        .output_buffer(output_buffer[i])
    );
    end
endgenerate



endmodule

`default_nettype wire
