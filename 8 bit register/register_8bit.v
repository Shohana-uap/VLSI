`timescale 1ns / 1ps

module register_8bit (
    input  [7:0] D,
    input        CLK,
    output [7:0] Q
);

register_1bit REG0 (
    .D(D[0]),
    .CLK(CLK),
    .Q(Q[0])
);

register_1bit REG1 (
    .D(D[1]),
    .CLK(CLK),
    .Q(Q[1])
);

register_1bit REG2 (
    .D(D[2]),
    .CLK(CLK),
    .Q(Q[2])
);

register_1bit REG3 (
    .D(D[3]),
    .CLK(CLK),
    .Q(Q[3])
);

register_1bit REG4 (
    .D(D[4]),
    .CLK(CLK),
    .Q(Q[4])
);

register_1bit REG5 (
    .D(D[5]),
    .CLK(CLK),
    .Q(Q[5])
);

register_1bit REG6 (
    .D(D[6]),
    .CLK(CLK),
    .Q(Q[6])
);

register_1bit REG7 (
    .D(D[7]),
    .CLK(CLK),
    .Q(Q[7])
);

endmodule