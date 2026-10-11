`timescale 1ns / 1ps

module register_1bit (
    input D,
    input CLK,
    output Q
);

d_flip_flop FF (
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

endmodule