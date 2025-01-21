`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 03:10:08
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
wire cout,sum;
half_full_adder dut(a,b,cout,sum);
initial a=1'b0;
initial b=1'b0;
initial forever #10 a=~a;
initial forever #20 b=~b;
initial #100 $finish;

endmodule
