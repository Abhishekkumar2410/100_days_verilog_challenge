`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 13.02.2025 00:27:13
// Design Name: 
// Module Name: basic_gates
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


module basic_gates(
input a,b,
output and_out,or_out
    );

 two_one_mux and1(1'b0,b,a,and_out);
 two_one_mux or1(b,1'b1,a,or_out); 
   
    
    
endmodule
