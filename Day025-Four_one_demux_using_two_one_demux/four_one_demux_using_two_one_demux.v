`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 17.02.2025 00:39:30
// Design Name: 
// Module Name: four_one_demux_using_two_one_demux
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


module four_one_demux_using_two_one_demux(
input in,
input [1:0]sel,
output [3:0]out
    );
 wire [1:0]w1;
two_one_demux m1(in,sel[1],w1[1:0]);   
two_one_demux m2(w1[0],sel[0],out[1:0]);
two_one_demux m3(w1[1],sel[0],out[3:2]);     
    
endmodule
