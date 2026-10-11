`timescale 1ns / 1ps


module tb_register_8bit;

reg [7:0] D;
reg CLK;
wire [7:0] Q;

register_8bit DUT (
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

// Clock generation
initial
begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

// Test data
initial
begin
    D = 8'b00000000;

    #10;
    D = 8'b10101010;

    #10;
    D = 8'b11001100;

    #10;
    D = 8'b11110000;

    #10;
    D = 8'b01010101;

    #10;
    D = 8'b11111111;

    #10;
    $finish;
end

endmodule