`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:27:22
// Design Name: 
// Module Name: behave
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Implements basic logic gates: XOR, NAND, NOT, OR, AND.
// 
// Dependencies: None
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module behave(
    input a, 
    input b, 
    output reg xor_g,
    output reg nand_g, 
    output reg not_g, 
    output reg or_g, 
    output reg and_g
);
    always @(*) begin
        xor_g = a ^ b;
        nand_g = ~(a & b);
        not_g = ~a;
        or_g = a | b;
        and_g = a & b;
    end
endmodule
