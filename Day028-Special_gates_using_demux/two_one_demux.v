`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.02.2025 06:04:04
// Design Name: 
// Module Name: two_one_demux
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

module two_one_demux(
input a,sel,
output reg b,c
    );
    
  always@(*)begin
    if(sel)begin c=a;b=1'b0;end
    else begin b=a; c=1'b0;end
  end  
    
endmodule
