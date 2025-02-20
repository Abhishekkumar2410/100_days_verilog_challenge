`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.02.2025 06:03:45
// Design Name: 
// Module Name: xor_xnor_using_demux
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


module xor_xnor_using_demux(
input a,b,
output xor_ab,xnor_ab
    );
wire a_not_b,w1,a_b_not,w2,a_not,w3,a_not_b_not,w4,w5,w6;
//xor using demux
two_one_demux m1(b,a,a_not_b,w1);    
two_one_demux m2(a,b,a_b_not,w2); 
two_one_demux m3(1'b1,a_not_b,a_not,w3);
two_one_demux m4(a_not,a_b_not,a_not_b_not,w4);
two_one_demux m5(1'b1,a_not_b_not,xor_ab,w5);
//xnor using demux
two_one_demux m6(1'b1,xor_ab,xnor_ab,w6);
endmodule
