`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.02.2025 06:04:22
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
wire xor_ab,xnor_ab;

xor_xnor_using_demux dut(a,b,xor_ab,xnor_ab);
initial begin
$monitor("time=%0t, a=%d, b=%d, xor=%d, xnor=%d",$time,a,b,xor_ab,xnor_ab);
a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1; 
#10 a=1'b1;b=1'b0; 
#10 a=1'b1;b=1'b1; 
#10 a=1'b0;b=1'b1; 
#10 $finish;
end

endmodule
