`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 30.01.2025 02:02:45
// Design Name: 
// Module Name: four_bit_multiplier
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


module four_bit_multiplier(
input [3:0]a,b,
output reg [7:0]mul
    );
 reg [7:0] t1,t2,t3,t4;

	always@(a,b)
	begin
		t1=0; t2=0; t3=0; t4=0;
		if(b[0]) 
			t1 = a<<0;
		if(b[1]) 
			t2 = a<<1;
		if(b[2]) 
			t3 = a<<2;
		if(b[3]) 
			t4 = a<<3;

		mul = t1+t2+t3+t4;
	end
 
endmodule
