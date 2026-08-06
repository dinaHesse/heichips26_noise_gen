// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

module config_ro
#(
  parameter int unsigned NUM_STAGES = 9, //64+1
  parameter int unsigned SKIP_STAGES = 2
)(
  input logic                   enable,
  input logic [(NUM_STAGES/SKIP_STAGES)-1:0]  stage_en,

  output logic                  osc
);

    // RO implementation
    wire [NUM_STAGES-1:0] inverter_out;
    wire [NUM_STAGES-1:0] stage_out;
    wire [NUM_STAGES-1:0] load_en;

    assign osc = inverter_out[NUM_STAGES-1] & enable;// buffer_out[63];// buffer for testing

  genvar i;
  generate
    for (i = 0; i < NUM_STAGES; i = i + 1)
    begin
      if(i == 0) begin
        (* keep *) sg13cmos5l_inv_1 inverter_inst (
          .A(enable ? inverter_out[NUM_STAGES-1] : 1'b0), // Last stage feedback if enabled
          .Y(inverter_out[i]) // First stage output
        );
        assign stage_out[i] = inverter_out[i];
      end
      else begin
        if (i % SKIP_STAGES == 0)
        begin
          (* keep *) sg13cmos5l_inv_1 inverter_inst (
            .A(stage_out[i-1]), // Previous stage output
            .Y(inverter_out[i]) // Current stage output
          );
          assign stage_out[i] = inverter_out[i];
        end
        else begin
          (* keep *) sg13cmos5l_inv_16 inverter_inst (
            .A(stage_out[i-1]), // Previous stage output
            .Y(inverter_out[i]) // Current stage output
          );
          assign stage_out[i] = stage_en[i/SKIP_STAGES] ? inverter_out[i] : stage_out[i-SKIP_STAGES];
        end
      end
    end
  endgenerate

// wire[8-1:0]  buffer_out;
//       (* keep *)sg13cmos5l_buf_1 buffer
//         (
//             .A(stage_out[0]),
//             .X(buffer_out[0])
//         );

//   generate
//     for (i = 1; i < 8; i = i + 1)
//     begin
//       (* keep *)sg13cmos5l_buf_1 buffer
//         (
//             .A(buffer_out[i-1]),
//             .X(buffer_out[i])
//         );
//     end
//   endgenerate


  assign  load_en[NUM_STAGES-1:0] = stage_out[NUM_STAGES-1:0];


// connect a load to each inverter output
  // generate
  //   for (i = 0; i < NUM_STAGES; i = i + 1)
  //   begin
  //     (* keep *)load_parallel #(.WIDTH(2)) load
  //       (
  //           .input_ro(load_en[i]),
  //           .enable_n(8'd0),
  //           .output_buffer()
  //       );
  //   end
  // endgenerate



endmodule

// module inverter (
//     input wire in,
//     output wire out
// );

//     assign out = ~in;

// endmodule

`default_nettype wire
/* verilator lint_on UNOPTFLAT */