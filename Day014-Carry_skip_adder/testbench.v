`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 29.01.2025 23:01:03
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
reg cin;
wire [3:0]sum;
wire carry_out;

carry_skip_adder dut(a,b,cin,sum,carry_out);
initial begin
a=4'b0000;b=4'b0000;cin=1'b0;
#10 a=4'b1010;b=4'b0000;cin=1'b0;
#10 a=4'b0110;b=4'b0110;cin=1'b1;
#10 a=4'b0110;b=4'b1011;cin=1'b0;
#10 a=4'b1001;b=4'b0000;cin=1'b1;
#10 a=4'b0110;b=4'b1111;cin=1'b1;
#10 a=4'b1111;b=4'b0000;cin=1'b0;
#100 $finish;
end
endmodule
