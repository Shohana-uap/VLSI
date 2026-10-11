`timescale 1ns / 1ps
module Full_Adder_8bit(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Sum,
    output Cout
);
wire [8:0] C;

assign C[0] = Cin;
assign Cout = C[8];

Full_Adder_1bit FA0(A[0], B[0], C[0], Sum[0], C[1]);
Full_Adder_1bit FA1(A[1], B[1], C[1], Sum[1], C[2]);
Full_Adder_1bit FA2(A[2], B[2], C[2], Sum[2], C[3]);
Full_Adder_1bit FA3(A[3], B[3], C[3], Sum[3], C[4]);
Full_Adder_1bit FA4(A[4], B[4], C[4], Sum[4], C[5]);
Full_Adder_1bit FA5(A[5], B[5], C[5], Sum[5], C[6]);
Full_Adder_1bit FA6(A[6], B[6], C[6], Sum[6], C[7]);
Full_Adder_1bit FA7(A[7], B[7], C[7], Sum[7], C[8]);
endmodule