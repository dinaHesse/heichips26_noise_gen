module xorshift32 (
    input  wire         clk,
    input  wire         reset, // Positive reset
    input  wire         ld,
    input  wire  [ 7:0] din,
    output wire  [31:0] out
);
    reg [31:0] out_reg;
    //initial out_reg = 32'd314159265;
    assign out = out_reg;
    // Wires for the intermediate combinational logic steps
    wire [31:0] step1;
    wire [31:0] step2;
    wire [31:0] next_out;

    // Combinational logic: Executing the shifts and XORs in a single cycle
    assign step1    = out   ^ (out_reg << 13);
    assign step2    = step1 ^ (step1 >> 17);
    assign next_out = step2 ^ (step2 <<  5);

    // Sequential logic: Updating the state
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // Apply the initial seed value specified in the C code
            out_reg <= 32'd314159265;
        end else if (ld) begin
            out_reg <= {out_reg[31-8:0], din};  
        end else begin
            // Clock in the new generated pseudo-random number
            if(next_out == 32'd0) begin
                out_reg <= 32'd314159265; 
            end else begin
                out_reg <= next_out;
            end
        end
    end

endmodule