`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 25.01.2025 20:27:47
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
wire carry;

carry_look_ahead_adder dut(a,b,cin,sum,carry);

initial begin
    a=4'b0000;b=4'b0001;cin=1'b0;
 #10 a=4'b1000;b=4'b0101;cin=1'b1; 
 #10 a=4'b0010;b=4'b1001;cin=1'b0;
 #10 a=4'b1110;b=4'b1001;cin=1'b1;
 #10 a=4'b0011;b=4'b1101;cin=1'b0;
 #10 a=4'b1111;b=4'b1001;cin=1'b1;
 #150 $finish;
 end
 
endmodule
