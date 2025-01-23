`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 20:13:15
// Design Name: 
// Module Name: half_full_sub
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


module half_full_sub(
input a,b,bin,
output h_cout,h_sub,f_cout,f_sub
    );
assign h_cout=(~a)&b;
assign h_sub=a^b;
assign f_cout=((~(a^b))&bin)|((~a)&b);
assign f_sub=a^b^bin;    
endmodule
