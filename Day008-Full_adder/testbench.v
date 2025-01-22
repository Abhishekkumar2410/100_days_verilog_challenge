`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: ABHISHEK KUMAR
// 
// Create Date: 21.01.2025 20:05:24
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
reg a,b,cin;
wire cout,sum;
full_adder dut(a,b,cin,cout,sum);
initial a=1'b0;
initial b=1'b0;
initial cin=1'b0;
initial forever #10 a=~a;
initial forever #20 b=~b;
initial forever #30 cin=~cin;
initial #150 $finish;
endmodule
