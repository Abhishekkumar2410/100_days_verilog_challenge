`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 16.02.2025 00:49:44
// Design Name: 
// Module Name: one_four_demux
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


module one_four_demux(
input [2:0]in,
input [1:0]sel,
output reg [2:0]a,b,c,d
    );
always@(*)begin
case(sel)
    2'b00: begin a=in; b=3'd0; c=3'd0;d=3'd0; end
    2'b01: begin a=3'd0; b=in; c=3'd0;d=3'd0; end
    2'b10: begin a=3'd0; b=3'd0; c=in;d=3'd0; end
    2'b11: begin a=3'd0; b=3'd0; c=3'd0;d=in; end
endcase    
end    
 
    
endmodule
