`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.01.2025 00:23:35
// Design Name: 
// Module Name: gate_level
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gate_level(
input a,b,
output xor_g,nor_g,and_g,or_g,nand_g
    );
 
 and(and_g,a,b);
 or(or_g,a,b);
 nor(nor_g,a,b);
 nand(nand_g,a,b);
 xor(xor_g,a,b);   
    
endmodule
