`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 20:12:55
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


module testbench( );
reg a,b,bin;
wire h_cout,h_sub,f_cout,f_sub;
half_full_sub dut(a,b,bin,h_cout,h_sub,f_cout,f_sub);
initial a=1'b0;
initial b=1'b0;
initial bin=1'b0;
initial forever #10 a=~a;
initial forever #20 b=~b;
initial forever #30 bin=~bin;
initial #150 $finish;

endmodule
