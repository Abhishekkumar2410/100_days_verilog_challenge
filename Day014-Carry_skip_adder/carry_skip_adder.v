`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 29.01.2025 23:00:11
// Design Name: 
// Module Name: carry_skip_adder
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


module carry_skip_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output carry_out
    );
wire [3:0]c,p;
wire sel;
full_adder f1(a[0],b[0],cin,sum[0],c[0]); 
full_adder f2(a[1],b[1],c[0],sum[1],c[1]); 
full_adder f3(a[2],b[2],c[1],sum[2],c[2]); 
full_adder f4(a[3],b[3],c[2],sum[3],c[3]);  

xor(p[0],a[0],b[0]);
xor(p[1],a[1],b[1]);
xor(p[2],a[2],b[2]);
xor(p[3],a[3],b[3]);

and(sel,p[0],p[1],p[2],p[3]);  

assign carry_out=sel?cin:c[3];

endmodule
