`timescale 1ns / 1ps
module ALU_8bit(
    input [7:0] A,
    input [7:0] B,
    input [2:0] SEL,
    output reg [7:0] Y,
    output reg Cout
);
always @(*) begin
    Y = 8'b00000000;
    Cout = 1'b0;

    case (SEL)
	  3'b000: Y = A & B;       // AND

        3'b001: Y = A | B;       // OR

        3'b010: Y = A ^ B;       // XOR

        3'b011: Y = ~A;          // NOT
        3'b100: {Cout, Y} =
                {1'b0, A} + {1'b0, B}; // ADD

        3'b101: {Cout, Y} =
                {1'b0, A} + {1'b0, ~B} + 9'd1; // SUB

        default: begin
            Y = 8'b00000000;
            Cout = 1'b0;
				 end

    endcase
end

endmodule