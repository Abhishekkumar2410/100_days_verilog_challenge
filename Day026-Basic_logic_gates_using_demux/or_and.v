`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 18.02.2025 04:53:30
// Design Name: 
// Module Name: basic_gate
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


module or_and(
input a,b,
output a_and_b,a_or_b
    );
 wire w1,w2,w3,w4,w5,nota,notb,not_a_not_b;   
 //and gate
two_one_demux and1(a,b,w1,a_and_b);    
//or gate
two_one_demux not1(1'b1,a,nota,w2);
two_one_demux not2(1'b1,b,notb,w3);
two_one_demux andaotb(nota,notb,w4,not_a_not_b);
two_one_demux notab(1'b1,not_a_not_b,a_or_b,w5);
endmodule
