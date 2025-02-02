`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 02.02.2025 20:02:43
// Design Name: 
// Module Name: comparator
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


module comparator(
input [n-1:0]a,b,
output reg lesser,equal,greater
    );
parameter n=8;
    
always@(*)begin
    if(a<b)begin
        lesser=1'b1;
        equal=1'b0;
        greater=1'b0;
    end
    else if(a==b)begin
        lesser=1'b0;
        equal=1'b1;
        greater=1'b0;
    end
    else begin
        lesser=1'b0;
        equal=1'b0;
        greater=1'b1;
    end
    
end    
endmodule
