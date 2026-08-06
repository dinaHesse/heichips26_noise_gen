/*
DIGITAL CONTROLLED RO

wire[127 : 0] out128 = {out32,out32,out32,out32};
genvar i;
generate
for (i = 0; i < 16; i = i + 1)
begin

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) liu
   (
     .en(out128[( ((i+1) * 8) - 1) : (i*8)])
   );
   
end
endgenerate


*/
module liu(
       input wire[7:0] en
    );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[0])
  );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[1])
  );
  
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[0] ^ en[1])
  );
  
  
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[2])
  );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[3])
  );
  
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[2] ^ en[3])
  );
  
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[4])
  );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[5])
  );
  
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[4] ^ en[5])
  );
  
  (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[6])
  );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[7])
  );
  
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) liu_ro (
     .enable(en[6] ^ en[7])
  );
endmodule

module liu_ro(
    input wire enable
);

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire nand_0_in;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire nand_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_0 (
    .O(nand_0_out), 
    .I0(nand_0_in),    
    .I1(enable)     
);

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) wire inv_0_out;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT1 #(
    .INIT(2'b01)  // Specify LUT Contents
  ) INV_0 (
    .I0(nand_0_out),
    .O(inv_0_out)
  );

(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true", ALLOW_COMBINATORIAL_LOOPS="true"  *) LUT2 #(
    .INIT(4'h7)  
) NAND_1 (
    .O(nand_0_in), 
    .I0(inv_0_out),    
    .I1(1'b1)     
);

endmodule;