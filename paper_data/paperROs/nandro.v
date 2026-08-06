/* 
ACTIVE FENCES

wire [63:0] out64 = {out32,out32};

wire [1343:0] ro_out;
assign osc = ^ro_out;
genvar i,j;
generate
for (i = 0; i < 64; i = i + 1)
begin
    for (j = 0; j < 21; j = j + 1)
    begin
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) nandro
    (
     .en(out64[i]),
     .osc(ro_out[(i*21)+j])
    );
    end
end
endgenerate
*/


module nandro(
        input wire en,
        output wire osc
    );
    
assign osc = nand_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_0 (
    .O(nand_0_out), 
    .I0(nand_0_out),    
    .I1(en)     
);
endmodule
