// SPDX-FileCopyrightText: 2026 Noise-Gen Authors
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
// Description: Self-checking testbench for f_load_binary (5 x 12-bit De Bruijn LFSR load).
//   RTL:        make sim-rtl-verilog
//   Gate level: compile with -DGL against final/nl/f_load_binary.nl.v and the stdcell models.
// Every branch is compared against a reference model on every osc cycle. Checks: all branches
// stay 0 while disabled, an enabled branch runs the 4096-state sequence, en[b] = 0 clears
// branch b immediately, and branches are independent of each other.

`timescale 1ns / 1ps

module f_load_binary_tb;
  localparam int  EN_BITS   = 5;
  localparam int  LFSR_BITS = 12;
  localparam logic [LFSR_BITS-1:0] TAPS = 12'h829;
  localparam real OSC_PERIOD_NS = 2.5;   // 400 MHz, the timed clock of the macro

  logic               osc = 1'b0;
  logic [EN_BITS-1:0] en  = '1;  // falls to 0 at t = 0.1 ns: the RTL reset is edge triggered

  f_load_binary dut (
    .osc ( osc ),
    .en  ( en  )
  );

  /* verilator lint_off STMTDLY */
  always #(OSC_PERIOD_NS / 2) osc = ~osc;
  /* verilator lint_on STMTDLY */

  // LFSR state of every branch
  logic [EN_BITS-1:0][LFSR_BITS-1:0] st;
`ifdef GL
  assign st[0] = {dut.\g_branch[0].q[11] , dut.\g_branch[0].q[10] , dut.\g_branch[0].q[9] , dut.\g_branch[0].q[8] , dut.\g_branch[0].q[7] , dut.\g_branch[0].q[6] , dut.\g_branch[0].q[5] , dut.\g_branch[0].q[4] , dut.\g_branch[0].q[3] , dut.\g_branch[0].q[2] , dut.\g_branch[0].q[1] , dut.\g_branch[0].q[0] };
  assign st[1] = {dut.\g_branch[1].q[11] , dut.\g_branch[1].q[10] , dut.\g_branch[1].q[9] , dut.\g_branch[1].q[8] , dut.\g_branch[1].q[7] , dut.\g_branch[1].q[6] , dut.\g_branch[1].q[5] , dut.\g_branch[1].q[4] , dut.\g_branch[1].q[3] , dut.\g_branch[1].q[2] , dut.\g_branch[1].q[1] , dut.\g_branch[1].q[0] };
  assign st[2] = {dut.\g_branch[2].q[11] , dut.\g_branch[2].q[10] , dut.\g_branch[2].q[9] , dut.\g_branch[2].q[8] , dut.\g_branch[2].q[7] , dut.\g_branch[2].q[6] , dut.\g_branch[2].q[5] , dut.\g_branch[2].q[4] , dut.\g_branch[2].q[3] , dut.\g_branch[2].q[2] , dut.\g_branch[2].q[1] , dut.\g_branch[2].q[0] };
  assign st[3] = {dut.\g_branch[3].q[11] , dut.\g_branch[3].q[10] , dut.\g_branch[3].q[9] , dut.\g_branch[3].q[8] , dut.\g_branch[3].q[7] , dut.\g_branch[3].q[6] , dut.\g_branch[3].q[5] , dut.\g_branch[3].q[4] , dut.\g_branch[3].q[3] , dut.\g_branch[3].q[2] , dut.\g_branch[3].q[1] , dut.\g_branch[3].q[0] };
  assign st[4] = {dut.\g_branch[4].q[11] , dut.\g_branch[4].q[10] , dut.\g_branch[4].q[9] , dut.\g_branch[4].q[8] , dut.\g_branch[4].q[7] , dut.\g_branch[4].q[6] , dut.\g_branch[4].q[5] , dut.\g_branch[4].q[4] , dut.\g_branch[4].q[3] , dut.\g_branch[4].q[2] , dut.\g_branch[4].q[1] , dut.\g_branch[4].q[0] };
`else
  for (genvar b = 0; b < EN_BITS; b++) begin : g_st
    assign st[b] = dut.g_branch[b].q;
  end
`endif

  // Reference model
  logic [EN_BITS-1:0][LFSR_BITS-1:0] ref_st = '0;
  function automatic logic [LFSR_BITS-1:0] next(input logic [LFSR_BITS-1:0] q);
    return {q[LFSR_BITS-2:0], ^(q & TAPS) ^ ~|q[LFSR_BITS-2:0]};
  endfunction

  always @(posedge osc)
    for (int b = 0; b < EN_BITS; b++)
      if (en[b]) ref_st[b] <= next(ref_st[b]);

  always @(en)
    for (int b = 0; b < EN_BITS; b++)
      if (!en[b]) ref_st[b] = '0;

  int errors = 0;
  task automatic check(input string where);
    for (int b = 0; b < EN_BITS; b++)
      if (st[b] !== ref_st[b]) begin
        errors++;
        if (errors <= 10)
          $display("FAIL (%s, t=%0t): branch %0d is %h, expected %h", where, $time, b, st[b], ref_st[b]);
      end
  endtask

  // Compare in the middle of the low phase, change enables at the falling edge
  task automatic run(input int cycles, input string where);
    repeat (cycles) begin
      @(negedge osc); #(OSC_PERIOD_NS / 4);
      check(where);
    end
  endtask

  task automatic set_en(input logic [EN_BITS-1:0] val);
    @(negedge osc);
    en = val;
    #0.1;
  endtask

  int period;
  initial begin
    $dumpfile("f_load_binary_tb.fst");
    $dumpvars;

    #0.1 en = '0;   // like ctrl after reset: all enables 0, all branches cleared

    // Disabled: everything stays 0
    run(10, "disabled");

    // Branch 0 alone: full sequence, period 4096 (all states including 0)
    set_en(5'b00001);
    period = 0;
    do begin
      @(negedge osc); #(OSC_PERIOD_NS / 4);
      check("branch 0 sequence");
      period++;
    end while (st[0] !== '0 && period < 5000);
    if (period != 4096) begin
      errors++;
      $display("FAIL: branch 0 period is %0d, expected 4096", period);
    end

    // Switch the other branches on one by one at different times
    set_en(5'b00011); run(7,   "branches 0-1");
    set_en(5'b00111); run(13,  "branches 0-2");
    set_en(5'b01111); run(29,  "branches 0-3");
    set_en(5'b11111); run(400, "all branches");

    // Disabling one branch clears it immediately and leaves the others running
    @(negedge osc); en[2] = 1'b0; #0.1;
    if (st[2] !== '0) begin
      errors++;
      $display("FAIL: branch 2 not cleared right after en[2] fell (%h)", st[2]);
    end
    run(50, "branch 2 off");
    set_en(5'b11111); run(50, "branch 2 restarted");

    // All off
    set_en(5'b00000); run(10, "all off");

    if (errors == 0) $display("PASS: f_load_binary LFSR branches behave as specified");
    else             $fatal(1, "FAIL: %0d mismatches", errors);
    $finish;
  end
endmodule
