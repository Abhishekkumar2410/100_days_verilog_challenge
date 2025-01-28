`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 28.01.2025 19:23:41
// Design Name: 
// Module Name: full_adder
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



module full_adder(
input a,b,cin,
output reg cout,sum
    );
    always@(*)begin
  sum=a^b^cin;
 cout=((a^b)&cin)|(a&b);   
 end
endmodule
