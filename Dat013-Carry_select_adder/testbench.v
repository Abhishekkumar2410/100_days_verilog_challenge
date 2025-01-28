`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 28.01.2025 19:22:34
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
reg carry;
wire [3:0]sum;
wire cout;

carry_select dut(a,b,carry,sum,cout);
initial begin
a=4'b0000;b=4'b0000;carry=1'b0;
#10 a=4'b0110;b=4'b1010;carry=1'b1;
#10 a=4'b1110;b=4'b0000;carry=1'b0;
#10 a=4'b0001;b=4'b0101;carry=1'b1;
#10 a=4'b0110;b=4'b0110;carry=1'b1;
#10 a=4'b0111;b=4'b1100;carry=1'b1;
#10 a=4'b1111;b=4'b1000;carry=1'b0;
#10 a=4'b0000;b=4'b1111;carry=1'b1;
#140 $finish;
end
endmodule
