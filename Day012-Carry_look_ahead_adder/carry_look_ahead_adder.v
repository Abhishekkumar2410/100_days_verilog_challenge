`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 25.01.2025 20:27:27
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output carry
    );
  wire [3:0]p,g;
  wire  c1,c2,c3;
  
  xor(p[0],a[0],b[0]);
  xor(p[1],a[1],b[1]);
  xor(p[2],a[2],b[2]);
  xor(p[3],a[3],b[3]);
  
  and(g[0],a[0],b[0]);
  and(g[1],a[1],b[1]);
  and(g[2],a[2],b[2]);
  and(g[3],a[3],b[3]);
  
  assign c1=(p[0]&cin)|(g[0]);
  assign c2=(p[1]&p[0]&cin) | (p[1]&g[0]) | g[1];
  assign c3=(p[2]&p[1]&p[0]&cin)|(p[2]&p[1]&g[0])|(p[2]&g[1])|g[2];
  assign carry=(p[3]&p[2]&p[1]&p[0]&cin)|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&g[1])|(p[3]&g[3])|g[3];
  
  xor(sum[0],a[0],b[0],cin);
  xor(sum[1],a[1],b[1],c1);
  xor(sum[2],a[2],b[2],c2);
  xor(sum[3],a[3],b[3],c3);
    
    
    
    
endmodule
