`timescale 1ns / 1ps
module d_flip_flop (
    input D,
    input CLK,
    output reg Q
);

always @(posedge CLK)
begin
    Q <= D;
end

endmodule