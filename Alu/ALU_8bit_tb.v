`timescale 1ns / 1ps

module ALU_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] SEL;

wire [7:0] Y;
wire Cout;
ALU_8bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .Y(Y),
    .Cout(Cout)
);

initial begin

    A = 8'b10101010;
    B = 8'b11001100;
    SEL = 3'b000;
    #10;
	  SEL = 3'b001;
    #10;

    SEL = 3'b010;
    #10;

    SEL = 3'b011;
    #10;

    A = 8'd10;
    B = 8'd5;
    SEL = 3'b100;
    #10;
	  SEL = 3'b101;
    #10;

    A = 8'd255;
    B = 8'd1;
    SEL = 3'b100;
    #10;

    A = 8'd15;
    B = 8'd10;
    SEL = 3'b101;
    #10;

    $stop;
end

endmodule