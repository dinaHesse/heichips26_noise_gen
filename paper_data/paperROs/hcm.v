`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2026 02:20:45 PM
// Design Name: 
// Module Name: hcm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hcm(
        input wire[15:0] man_bit
    );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) hcm_block(
    .x(man_bit),
    .y()
    );
/*
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [1:0] y_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire y_xor = ^y_out;

genvar i;
generate
for (i = 0; i < 2; i = i + 1)
begin
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) xhcm_block(
    .x(man_bit),
    .y(y_out[i])
    );
end
endgenerate
*/
endmodule

module hcm_block(
    input wire[7:0] x,
    output wire y
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_0 (
    .O(nand_0_out), 
    .I0(nand_0_out),    
    .I1(x[0])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_1_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_1 (
    .O(nand_1_out), 
    .I0(nand_1_out),    
    .I1(x[1])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_2_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_2 (
    .O(nand_2_out), 
    .I0(nand_2_out),    
    .I1(x[2])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_3_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_3 (
    .O(nand_3_out), 
    .I0(nand_3_out),    
    .I1(x[3])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_4_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_4 (
    .O(nand_4_out), 
    .I0(nand_4_out),    
    .I1(x[4])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_5_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_5 (
    .O(nand_5_out), 
    .I0(nand_5_out),    
    .I1(x[5])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_6_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_6 (
    .O(nand_6_out), 
    .I0(nand_6_out),    
    .I1(x[6])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_7_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_7 (
    .O(nand_7_out), 
    .I0(nand_7_out),    
    .I1(x[7])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_8_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_8 (
    .O(nand_8_out), 
    .I0(nand_8_out),    
    .I1(x[8])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_9_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_9 (
    .O(nand_9_out), 
    .I0(nand_9_out),    
    .I1(x[9])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_10_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_10 (
    .O(nand_10_out), 
    .I0(nand_10_out),    
    .I1(x[10])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_11_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_11 (
    .O(nand_11_out), 
    .I0(nand_11_out),    
    .I1(x[11])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_12_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_12 (
    .O(nand_12_out), 
    .I0(nand_12_out),    
    .I1(x[12])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_13_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_13 (
    .O(nand_13_out), 
    .I0(nand_13_out),    
    .I1(x[13])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_14_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_14 (
    .O(nand_14_out), 
    .I0(nand_14_out),    
    .I1(x[14])     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_15_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_15 (
    .O(nand_15_out), 
    .I0(nand_15_out),    
    .I1(x[15])     
);

wire or_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_0 (
    .O(or_0_out), 
    .I0(nand_0_out),    
    .I1(nand_1_out)     
);

wire or_1_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_1 (
    .O(or_1_out), 
    .I0(nand_2_out),    
    .I1(nand_3_out)     
);

wire or_2_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_2 (
    .O(or_2_out), 
    .I0(nand_4_out),    
    .I1(nand_5_out)     
);

wire or_3_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_3 (
    .O(or_3_out), 
    .I0(nand_6_out),    
    .I1(nand_7_out)     
);

wire or_4_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_4 (
    .O(or_4_out), 
    .I0(nand_8_out),    
    .I1(nand_9_out)     
);

wire or_5_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_5 (
    .O(or_5_out), 
    .I0(nand_10_out),    
    .I1(nand_11_out)     
);

wire or_6_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_6 (
    .O(or_6_out), 
    .I0(nand_12_out),    
    .I1(nand_13_out)     
);

wire or_7_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_7 (
    .O(or_7_out), 
    .I0(nand_14_out),    
    .I1(nand_15_out)     
);

wire and_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_0 (
    .O(and_0_out), // 1-bit LUT output
    .I0(or_0_out),    // 1-bit LUT input
    .I1(or_1_out)     // 1-bit LUT input
);

wire and_1_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_1 (
    .O(and_1_out), // 1-bit LUT output
    .I0(or_2_out),    // 1-bit LUT input
    .I1(or_3_out)     // 1-bit LUT input
);

wire and_2_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_2 (
    .O(and_2_out), // 1-bit LUT output
    .I0(or_4_out),    // 1-bit LUT input
    .I1(or_5_out)     // 1-bit LUT input
);

wire and_3_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_3 (
    .O(and_3_out), // 1-bit LUT output
    .I0(or_6_out),    // 1-bit LUT input
    .I1(or_7_out)     // 1-bit LUT input
);

wire and_5_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_5 (
    .O(and_5_out), // 1-bit LUT output
    .I0(and_0_out),    // 1-bit LUT input
    .I1(and_1_out)     // 1-bit LUT input
);

wire and_6_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_6 (
    .O(and_6_out), // 1-bit LUT output
    .I0(and_2_out),    // 1-bit LUT input
    .I1(and_3_out)     // 1-bit LUT input
);

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_7 (
    .O(y), // 1-bit LUT output
    .I0(and_5_out),    // 1-bit LUT input
    .I1(and_6_out)     // 1-bit LUT input
);


endmodule
/*
module xhcm_block(
    input wire x,
    output wire y
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_0 (
    .O(nand_0_out), 
    .I0(nand_0_out),    
    .I1(x)     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_1_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_1 (
    .O(nand_1_out), 
    .I0(nand_1_out),    
    .I1(x)     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_2_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_2 (
    .O(nand_2_out), 
    .I0(nand_2_out),    
    .I1(x)     
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) wire nand_3_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_3 (
    .O(nand_3_out), 
    .I0(nand_3_out),    
    .I1(x)     
);

wire or_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_0 (
    .O(or_0_out), 
    .I0(nand_0_out),    
    .I1(nand_1_out)     
);

wire or_1_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  
) OR_1 (
    .O(or_1_out), 
    .I0(nand_2_out),    
    .I1(nand_3_out)     
);

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h6)  // AND logic
) AND_0 (
    .O(y), // 1-bit LUT output
    .I0(or_0_out),    // 1-bit LUT input
    .I1(or_1_out)     // 1-bit LUT input
);

endmodule
*/
