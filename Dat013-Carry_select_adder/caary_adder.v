`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Abhishek kumar 
// 
// Create Date: 28.01.2025 19:22:18
// Design Name: 
// Module Name: carry_select
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


module carry_select(
input [3:0]a,b,
input carry,
output [3:0]sum,
output cout
    );
 wire [7:0]c,s;   
full_adder f1(a[0],b[0],1'b0,c[0],s[0]);
full_adder f2(a[1],b[1],c[0],c[1],s[1]);
full_adder f3(a[2],b[2],c[1],c[2],s[2]);
full_adder f4(a[3],b[3],c[2],c[3],s[3]);


full_adder f5(a[0],b[0],1'b1,c[4],s[4]);
full_adder f6(a[1],b[1],c[4],c[5],s[5]);
full_adder f7(a[2],b[2],c[5],c[6],s[6]);
full_adder f8(a[3],b[3],c[6],c[7],s[7]);
    
two_one_mux m1(s[0],s[4],carry,sum[0]);
two_one_mux m2(s[1],s[5],carry,sum[1]);
two_one_mux m3(s[2],s[6],carry,sum[2]);
two_one_mux m4(s[3],s[7],carry,sum[3]);

two_one_mux m5(c[3],c[7],carry,cout);    
endmodule
