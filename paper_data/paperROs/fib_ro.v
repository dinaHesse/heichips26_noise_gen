/*
FIGARO

wire [15:0] fib_out;
wire [15:0] go_out;

wire in1 = (^fib_out[3:0]) ^ (^go_out[3:0]);
wire in2 = (^fib_out[7:4]) ^ (^go_out[7:4]);
wire in3 = (^fib_out[11:8]) ^ (^go_out[11:8]);
wire in4 = (^fib_out[15:12]) ^ (^go_out[15:12]);
genvar i;
generate
for (i = 0; i < 4; i = i + 1)
begin

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) fib_ro fib_inst_i
   (
     .in_val(out32[i] ^ in1),
     .serial_out(fib_out[i])
   );
   
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) go_ro go_inst_i
   (
     .in_val(out32[i] ^ in1),
     .serial_out(go_out[i])
   );
end
endgenerate

generate
for (i = 0; i < 4; i = i + 1)
begin

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) fib_ro fib_inst_i
   (
     .in_val(out32[4 + i]^ in2),
     .serial_out(fib_out[4 + i])
   );
   
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) go_ro go_inst_i
   (
     .in_val(out32[4 + i]^ in2),
     .serial_out(go_out[4 + i])
   );
end
endgenerate

generate
for (i = 0; i < 4; i = i + 1)
begin

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) fib_ro fib_inst_i
   (
     .in_val(out32[8+i]^ in3),
     .serial_out(fib_out[8+i])
   );
   
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) go_ro go_inst_i
   (
     .in_val(out32[8+i]^ in3),
     .serial_out(go_out[8+i])
   );
end
endgenerate

generate
for (i = 0; i < 4; i = i + 1)
begin

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) fib_ro fib_inst_i
   (
     .in_val(out32[12+i]^ in4),
     .serial_out(fib_out[12+i])
   );
   
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) go_ro go_inst_i
   (
     .in_val(out32[12+i] ^ in4),
     .serial_out(go_out[12+i])
   );
end
endgenerate
*/


module fib_ro (
    input wire in_val,
    output wire serial_out
);
    // --------------------------------------------------------
    // Configuration
    // --------------------------------------------------------
    // Stages: 23 (Not 2^n, satisfies FiRO condition)
    // Polynomial: x^23 + x^22 + x^2 + 1 
    // This is derived from (1+x)(x^22 + x + 1). 
    // It has an EVEN number of terms (divisible by 1+x).
    // Taps (0-indexed):
    //   x^23 -> Stage 23 output (Index 22)
    //   x^22 -> Stage 22 output (Index 21)
    //   x^2  -> Stage 2  output (Index 1)
    //   1    -> Implicitly the feedback input wire
   
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire [22:0] chain_out;
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire feedback;

    // --------------------------------------------------------
    // Feedback Logic (3-Input XOR)
    // --------------------------------------------------------
    // Tapping indices 22, 21, and 1 to satisfy the polynomial.
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *)
    assign feedback = chain_out[22] ^ chain_out[21] ^ chain_out[1] ^ in_val;

    // --------------------------------------------------------
    // The Inverter Chain
    // --------------------------------------------------------
    genvar i;
    generate
        for (i = 0; i < 23; i = i + 1) begin : ro_stage
            
            wire stage_in;

            // Connect input: 
            // Stage 0 gets the calculated feedback.
            // All other stages get the output of the previous stage.
            if (i == 0) 
                assign stage_in = feedback;
            else
                assign stage_in = chain_out[i-1];

            // Instantiate the Inverter
            (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) LUT_INVERTER inv_inst (
                .in(stage_in),
                .out(chain_out[i])
            );
        end
    endgenerate

    assign serial_out = chain_out[22];

endmodule