`timescale 1ns / 1ps
module SR_T_FF(
    input T,
    input CLK,
    output Q,
    output Q_BAR
    ); 
    wire S,R;
    assign S = ~(T & Q_BAR);
    assign R = ~(T & Q);
    SR_FF_NAND UUT(
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q(Q),
    .Q_BAR(Q_BAR)
    );
endmodule
