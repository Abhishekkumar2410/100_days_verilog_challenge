`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 01:51:03
// Design Name: 
// Module Name: even_gen_check
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


module even_gen_check(
input [7:0]a,
input b,
output gen,check
    );
 
 assign gen= ^a;   
 assign check=  ^({b,a});  
endmodule
