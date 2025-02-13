`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 14.02.2025 03:25:10
// Design Name: 
// Module Name: special_gate
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


module special_gate(
input a,b,
output s_xor,s_xnor
    );
    wire b_not;
two_one_mux n1(1'b1,1'b0,b,b_not);
two_one_mux x1(b,b_not,a,s_xor);
two_one_mux xn1(b_not,b,a,s_xnor);    

endmodule
