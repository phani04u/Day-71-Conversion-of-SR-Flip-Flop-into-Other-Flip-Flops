module SR_JK(
    input J,
    input K,
    input CLK,
    output Q,
    output Q_BAR
);
    wire S, R;
    // Corrected JK to active-low SR conversion logic for NAND latch
    assign S = ~(J & Q_BAR);
    assign R = ~(K & Q);
    // SR flip-flop instantiation
    SR_FF_NAND SR_U1(
        .S(S),
        .R(R),
        .CLK(CLK),
        .Q(Q),
        .Q_BAR(Q_BAR)
    );

endmodule