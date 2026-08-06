`timescale 1ns / 1ps

module go_ro (
    input wire in_val,
    output wire serial_out
);
    // --------------------------------------------------------
    // Configuration
    // --------------------------------------------------------
    // Type: Galois Ring Oscillator (GARO)
    // Stages: 23 (Must be ODD for the main loop to oscillate)
    // Polynomial: x^23 + x^22 + x^2 + 1
    //
    // In a Galois configuration:
    // 1. The Feedback is taken from the very last stage (22).
    // 2. This Feedback is XORed into the INPUT of specific stages.
    // 3. Taps at 22 and 2 mean XORs are placed before stages 22 and 2 
    //    (Indices 21 and 1).

    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire [22:0] chain_out;
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire feedback;

    // The feedback comes from the end of the chain
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) assign feedback = chain_out[22] ^ in_val;

    // --------------------------------------------------------
    // The Galois Chain
    // --------------------------------------------------------
    genvar i;
    generate
        for (i = 0; i < 23; i = i + 1) begin : garo_stage
            
            wire stage_in;
            wire prev_stage_out;

            // 1. Determine the "previous" stage output
            if (i == 0)
                assign prev_stage_out = feedback; // Wraps around
            else
                assign prev_stage_out = chain_out[i-1];

            // 2. Determine Input Logic (Tap Injection)
            // If this index matches a polynomial power (21 and 1), we XOR the feedback in.
            if (i == 21 || i == 1) begin
                // GALOIS TAP: Insert XOR here.
                (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *)
                assign stage_in = prev_stage_out ^ feedback;
            end else begin
                // DIRECT CONNECTION
                assign stage_in = prev_stage_out;
            end

            // 3. Instantiate the Inverter (The Delay Element)
            (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) LUT_INVERTER inv_inst (
                .in(stage_in),
                .out(chain_out[i])
            );
        end
    endgenerate

    // Output the last stage
    assign serial_out = chain_out[22];

endmodule