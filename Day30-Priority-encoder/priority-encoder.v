`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 24.02.2025 23:10:54
// Design Name: 
// Module Name: priority_encoder
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


module priority_encoder(
input [7:0]in,
output reg [2:0]out
    );
     always@(*)
 begin
 casex(in)
  8'b1xxxxxxx:out=3'b111;
  8'bx1xxxxxx:out=3'b110;
  8'bxx1xxxxx:out=3'b101;
  8'bxxx1xxxx:out=3'b100;
  8'bxxxx1xxx:out=3'b011;
  8'bxxxxx1xx:out=3'b010;
  8'bxxxxxx1x:out=3'b001;
  8'bxxxxxxx1:out=3'b000;
   default:out=3'b000;
 endcase
 end
endmodule




