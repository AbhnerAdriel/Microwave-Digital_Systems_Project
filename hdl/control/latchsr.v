// Latch SR:
module latchsr (Q, S, R);

  // inputs:
  input wire S, R;

  output wire Q;
  assign Q = S | (!R & Q);

endmodule