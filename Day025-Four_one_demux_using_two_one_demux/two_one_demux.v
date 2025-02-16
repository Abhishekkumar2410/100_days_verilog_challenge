`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 17.02.2025 00:42:54
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
output reg[1:0]out
    );
    
  always@(*)begin
    if(sel)begin out[1]=a;out[0]=1'b0;end
    else begin out[0]=a; out[1]=1'b0;end
  end  
    
endmodule
