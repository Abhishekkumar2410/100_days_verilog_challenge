`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 25.01.2025 17:29:50
// Design Name: 
// Module Name: Mode_sub_add_ripple
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


module Mode_sub_add_ripple(
input [3:0]a,b,
input m,en,
output [3:0]sub_add,
output carry
    );
wire c0,c1,c2;

full_adder f1(a[0],b[0]^m,en,c0,sub_add[0]);
full_adder f2(a[1],b[1]^m,c0,c1,sub_add[1]);
full_adder f3(a[2],b[2]^m,c1,c2,sub_add[2]);
full_adder f4(a[3],b[3]^m,c2,carry,sub_add[3]);
    

endmodule
