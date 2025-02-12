`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 13.02.2025 00:55:06
// Design Name: 
// Module Name: universal
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


module universal(
input a,b,
output s_nand,s_nor
    );

wire b_not;
two_one_mux not1(1'b1,1'b0,b,b_not);    

two_one_mux nand1(1'b1,b_not,a,s_nand);   
two_one_mux nor1(b_not,1'b0,a,s_nor);   
    
endmodule
