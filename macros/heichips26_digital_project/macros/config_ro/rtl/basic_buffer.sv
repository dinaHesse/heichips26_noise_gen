// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

`default_nettype none

module basic_buffer #()(
    input logic     input_buffer,

    output logic    output_buffer
);

wire logic  out_inv1, out_inv2, out_inv4;

(* keep *) sg13cmos5l_inv_1 inv1 (
    .Y(out_inv1),
    .A(input_buffer)
);
(* keep *) sg13cmos5l_inv_2 inv2 (
    .Y(out_inv2),
    .A(out_inv1)
);
(* keep *) sg13cmos5l_inv_4 inv4 (
    .Y(out_inv4),
    .A(out_inv2)
);
(* keep *) sg13cmos5l_inv_8 inv8 (
    .Y(output_buffer),
    .A(out_inv4)
);

    endmodule

`default_nettype wire
