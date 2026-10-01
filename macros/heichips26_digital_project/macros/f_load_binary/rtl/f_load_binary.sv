// SPDX-FileCopyrightText: 2026 XXX
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1

/* verilator lint_off UNOPTFLAT */
`default_nettype none

// Uniform LFSR load: one identical LFSR branch per enable bit.
// en[b] = 0 stops the branch clock and clears its state, en[b] = 1 lets it run.
module f_load_binary #(
  parameter EN_BITS   = 5,
  parameter LFSR_BITS = 12
) (
  input logic               osc,
  input logic [EN_BITS-1:0] en
);

// Maximal-length taps (XAPP052) for 12 bits: 12, 6, 4, 1
localparam [LFSR_BITS-1:0] TAPS = 12'h829;

genvar b;

generate
for (b = 0; b < EN_BITS; b++) begin : g_branch
  (* keep *) wire                  gclk;
  (* keep *) logic [LFSR_BITS-1:0] q;
  wire                             fb;

  // De Bruijn feedback: period 2^LFSR_BITS and no lock-up state, so runt clocks
  // or timing errors from a fast or asynchronous osc can never stall the branch
  assign fb   = ^(q & TAPS) ^ ~|q[LFSR_BITS-2:0];
  assign gclk = osc & en[b];

  always_ff @(posedge gclk or negedge en[b]) begin
    if (!en[b]) q <= '0;
    else        q <= {q[LFSR_BITS-2:0], fb};
  end
end

endgenerate


endmodule


`default_nettype wire
/* verilator lint_on UNOPTFLAT */
