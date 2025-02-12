`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 03.02.2025 20:26:36
// Design Name: 
// Module Name: four_one_mux
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


module four_one_mux(
input [1:0]s,
input [3:0]a,b,c,d ,
output [3:0]dout
    );
    
wire [3:0]w1,w2;
two_one_mux m1(a,b,s[0],w1);
two_one_mux m2(c,d,s[0],w2);
two_one_mux m3(w1,w2,s[1],dout);    
endmodule
