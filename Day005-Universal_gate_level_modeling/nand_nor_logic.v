`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar 
// 
// Create Date: 20.01.2025 20:41:37
// Design Name: 
// Module Name: nand_nor_logic
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


module nand_nor_logic(
input a,b,
output out1,out2
    );
 wire w1,w2;
 supply0 gnd;
 supply1 vdd;
 pmos(out1,vdd,a); 
 pmos(out1,vdd,b);   
 nmos(w1,gnd,b);
 nmos(out1,w1,a);
 
 //nor_gate implementation
 pmos(w2,vdd,a); 
 pmos(out2,w2,b);   
 nmos(out2,gnd,b);
 nmos(out2,gnd,a);
 
 
endmodule
