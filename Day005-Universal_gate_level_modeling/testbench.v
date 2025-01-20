`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.01.2025 20:41:54
// Design Name: 
// Module Name: testbench
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


module testbench();
reg a,b;
wire out1,out2;
nand_nor_logic dut(a,b,out1,out2);
initial a=1'b0;
initial b=1'b0;
initial forever #10 a=~a;
initial forever #20 b=~b;
initial #400 $finish;

endmodule
