`timescale 1ns / 1ps

module Full_Adder_8bit_tb;

reg [7:0] A;
reg [7:0] B;
reg Cin;

wire [7:0] Sum;
wire Cout;
Full_Adder_8bit uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);
initial begin

    A = 8'b00000000;
    B = 8'b00000000;
    Cin = 0;
    #10;

    A = 8'b00000101;
    B = 8'b00000011;
    Cin = 0;
    #10;
	  A = 8'b00001111;
    B = 8'b00000001;
    Cin = 0;
    #10;

    A = 8'b11111111;
    B = 8'b00000001;
    Cin = 0;
    #10;
 A = 8'b10101010;
    B = 8'b01010101;
    Cin = 1;
    #10;

    $stop;
end

endmodule