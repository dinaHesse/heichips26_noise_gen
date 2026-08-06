/*
PRORO / CUSTOM PRORO

wire ro_clk;
(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) custom_pro_ro cpro_inst(
        .enable(1'b1),
        .select(out32[5:0]),
        .out(ro_clk)
 );
 
*/

module custom_pro_ro(
        input enable,
        input [5:0] select,
        output out
    );
    
    wire input_inverter;
    
    // Wires for the programmable delay chain
    (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [6:0] delay_cells;
    
    // Wires for the 57-stage base inverter chain (57 stages require 58 connection points)
    (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [57:0] base_inv_chain;

    // Enable: feedback from the end of the programmable delay cells
    assign input_inverter = enable ? delay_cells[6] : 1'b0;
    
    // Oscillation output
    assign out = input_inverter;
    
    // Connect the feedback to the start of our 57-stage chain
    assign base_inv_chain[0] = input_inverter;

    // Generate block to create 57 cascaded inverters
    genvar i;
    generate
        for (i = 0; i < 57; i = i + 1) begin : inv_stages
            (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) LUT1 #(
               .INIT(2'b01)  // Specify LUT Contents (Inverter)
            ) inverter_inst (
               .I0(base_inv_chain[i]),     // Input from previous stage
               .O(base_inv_chain[i+1])     // Output to next stage
            );
        end
    endgenerate

    // Connect the end of the 57-stage chain into the programmable delay cells
    assign delay_cells[0] = base_inv_chain[57];

    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(2)) d0_inst_1(
        .select(select[0]),
        .in(delay_cells[0]),
        .out(delay_cells[1])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(2)) d0_inst_2(
        .select(select[1]),
        .in(delay_cells[1]),
        .out(delay_cells[2])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(4)) d1_inst_3(
        .select(select[2]),
        .in(delay_cells[2]),
        .out(delay_cells[3])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(4)) d1_inst_4(
        .select(select[3]),
        .in(delay_cells[3]),
        .out(delay_cells[4])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(8)) d2_inst_5(
        .select(select[4]),
        .in(delay_cells[4]),
        .out(delay_cells[5])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(8)) d2_inst_6(
        .select(select[5]),
        .in(delay_cells[5]),
        .out(delay_cells[6])
    );
    
endmodule

module pro_ro(
        input enable,
        input [5:0] select,
        output out
    );
    
    wire input_inverter;
    (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [6:0] delay_cells;
    // Enable
    assign input_inverter = enable ? delay_cells[6] : 0;
    // Oscillation output
    assign out = input_inverter;
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) LUT1 #(
       .INIT(2'b01)  // Specify LUT Contents
    ) inverter_inst (
       .I0(input_inverter),  // LUT input
       .O(delay_cells[0])  // LUT general output
    );

    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(4))d0_inst_1(
        .select(select[0]),
        .in(delay_cells[0]),
        .out(delay_cells[1])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(4))d0_inst_2(
        .select(select[1]),
        .in(delay_cells[1]),
        .out(delay_cells[2])
    );
    
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(8))d1_inst_3(
        .select(select[2]),
        .in(delay_cells[2]),
        .out(delay_cells[3])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(8))d1_inst_4(
        .select(select[3]),
        .in(delay_cells[3]),
        .out(delay_cells[4])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(16))d2_inst_5(
        .select(select[4]),
        .in(delay_cells[4]),
        .out(delay_cells[5])
    );
    
    (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) pro_delay_cell #(.NUM_STAGES(16))d2_inst_6(
        .select(select[5]),
        .in(delay_cells[5]),
        .out(delay_cells[6])
    );
    
    
endmodule

module pro_delay_cell
    #(
        parameter NUM_STAGES = 8
    )
    (
        input  select, // 1 == active delay chain
        input in,
        output out
    );
    
    (* dont_touch = "yes", KEEP = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) wire [NUM_STAGES:0] inverter_stages;
    
    assign inverter_stages[0] = in;
    
    // MUX -> select skip stages
    assign out = select ? inverter_stages[NUM_STAGES] : in;
    
    
    
    //  Truth Table to determine INIT value for a LUT1
    //      ________
    //     | I0 | O |
    //     |--------|
    //     |  0 | 1 |\
    //     |  1 | 0 |/ = 2'b01
    //     ----------

    genvar i;
    generate
        for (i = 0; i < NUM_STAGES; i = i + 1) begin
             (* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY="true" *) LUT1 #(
                   .INIT(2'b01)  // Specify LUT Contents
                ) LUT1_inst (
                   .I0(inverter_stages[i]),  // LUT input
                   .O(inverter_stages[i+1])  // LUT general output
                );
        end
    endgenerate
    
endmodule