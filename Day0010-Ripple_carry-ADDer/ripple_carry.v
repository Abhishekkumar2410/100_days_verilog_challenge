`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 20:31:59
// Design Name: 
// Module Name: ripple_adder
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


module ripple_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout
    );
 wire c0,c1,c2;   
full_adder a1(a[0],b[0],cin,c0,sum[0]);
full_adder a2(a[1],b[1],c0,c1,sum[1]);
full_adder a3(a[2],b[2],c1,c2,sum[2]);
full_adder a4(a[3],b[3],c2,cout,sum[3]);


    
    
endmodule
