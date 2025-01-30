`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 30.01.2025 02:03:02
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
reg [3:0]a,b;
wire [7:0]mul;

four_bit_multiplier dut(a,b,mul);
initial begin
a=4'b0000;b=4'b0000;
#10 a=4'b0000;b=4'b0000;
#10 a=4'b0110;b=4'b0011;
#10 a=4'b1101;b=4'b1101;
#10 a=4'b0111;b=4'b1100;
#10 a=4'b0101;b=4'b1000;
#10 a=4'b1100;b=4'b1111;
#10 a=4'b0111;b=4'b1110;
$finish;
end
endmodule
