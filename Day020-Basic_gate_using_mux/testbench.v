`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 13.02.2025 00:35:19
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
wire and_out,or_out;
basic_gates dut(a,b,and_out,or_out);
initial begin
$monitor("time=%0t , a=%d,b=%d , and_out=%d , or_out=%d", $time , a,b,and_out,or_out);
a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b0;
$finish;


end
endmodule
