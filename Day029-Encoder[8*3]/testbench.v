`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 22.02.2025 12:46:08
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
reg [7:0]in;
wire [2:0]out;
encoder dut(in,out);
initial begin
$monitor("time=%0t, in=%d, out=%d",$time,in,out);
in=8'b0000100;
#10 in=8'b0000100;
#10 in=8'b0100000;
#10 in=8'b0001000;
#10 in=8'b0010000;
#10 in=8'b1000100;
#10 in=8'b0000001;
#10 in=8'b0010000;
#10 in=8'b0001000;
#10 $finish;
end
endmodule
