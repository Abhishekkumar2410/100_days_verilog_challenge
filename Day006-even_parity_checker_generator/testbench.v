`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 01:50:36
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
reg [7:0]a;
reg b;
wire gen,check;

even_gen_check dut(a,b,gen,check);
initial begin 
  a=8'b00000000; b=1'b0;
  #10 a=8'b00000001; b=1'b0;
  #10 a=8'b00000010; b=1'b0;
  #10 a=8'b00000011; b=1'b1;
  #10 a=8'b00011100; b=1'b0;
  #10 a=8'b01010101; b=1'b1;
  #10 a=8'b10101010; b=1'b0;
  #10 a=8'b11011011; b=1'b1;
  #10 a=8'b01101101; b=1'b0;
  #10 a=8'b00011110; b=1'b1;
  #10 a=8'b11110000; b=1'b1;
  #200 $finish;
 end
endmodule
