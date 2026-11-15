`timescale 1ns / 1ps
module SR_D(
    input D,
    input CLK,
    output Q,
    output Q_BAR
    );
    wire S,R;
    assign S = D;
    assign R = ~D;
  SR_FF_NAND SRU1(
  .S(S),
  .R(R),
  .CLK(CLK),
  .Q(Q),
  .Q_BAR(Q_BAR)
  );
endmodule
