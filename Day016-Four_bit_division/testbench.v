`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 31.01.2025 17:11:28
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
reg [3:0]divisor,dividend;
wire [3:0]quotient,remainder;

division dut(divisor,dividend,quotient,remainder);

initial begin
$monitor("Time = %0t | divisor = %b, dividend = %b | quotient = %b (%d)  remainder = %b(%d)", 
                 $time, divisor, dividend, quotient,quotient,remainder, remainder);
divisor=4'b0000;dividend=4'b0000;
#10 divisor=4'b0001;dividend=4'b0110;
#10 divisor=4'b0011;dividend=4'b1110;
#10 divisor=4'b0110;dividend=4'b0111;
#10 divisor=4'b0010;dividend=4'b1100;
#10 divisor=4'b0111;dividend=4'b1111;

#10
$finish;
end

endmodule
