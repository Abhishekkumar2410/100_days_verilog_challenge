`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 18.02.2025 05:05:47
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
wire a_and_b,a_or_b;

or_and dut(a,b,a_and_b,a_or_b);
initial begin
$monitor("time=%0t, a=%d, b=%d, and=%d, or=%d",$time,a,b,a_and_b,a_or_b);
a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1; 
#10 a=1'b1;b=1'b0; 
#10 a=1'b1;b=1'b1; 
#10 a=1'b0;b=1'b1; 
#10 $finish;
end

endmodule
