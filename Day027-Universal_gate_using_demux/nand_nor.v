`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 18.02.2025 04:53:30
// Design Name: 
// Module Name: basic_gate
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


module nand_nor(
input a,b,
output a_nand_b,a_nor_b
    );
 wire w1,w2,w3,w4,notb,a_and_b;   
 //nand gate
two_one_demux and1(a,b,w1,a_and_b);    
two_one_demux nand1(1'b1,a_and_b,a_nand_b,w2);
//nor gate
two_one_demux not2(1'b1,b,notb,w3);
two_one_demux nor1(notb,a,a_nor_b,w4);
endmodule
