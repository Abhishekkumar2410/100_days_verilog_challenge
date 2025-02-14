`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 14.02.2025 23:15:38
// Design Name: 
// Module Name: full_adder_using_mux
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


module full_adder_using_mux(
input a,b,c,
output sum,carry
    );

wire ab_and,ab_or,ab_xnor,ab_xor,b_not;

two_one_mux not1(1'b1,1'b0,b,b_not);
two_one_mux and1(1'b0,b,a,ab_and);
two_one_mux or1(b,1'b1,a,ab_or);
two_one_mux xor1(b,b_not,a,ab_xor);
two_one_mux xnor1(b_not,b,a,ab_xnor);

two_one_mux sum1(ab_xor,ab_xnor,c,sum);
two_one_mux carry1(ab_and,ab_or,c,carry);


    
    
endmodule
