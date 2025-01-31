`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Abhishek kumar 
// 
// Create Date: 31.01.2025 17:11:12
// Design Name: 
// Module Name: division
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


module division(
input [3:0]divisor,dividend,
output reg [3:0]quotient,remainder
    );
 reg [4:0]a,b,c;
 reg [3:0]q;
 integer i;
 always@(*)begin
    if(divisor==4'b0000)begin
        quotient=4'b0000;
        remainder=dividend;  
    end
    else begin
        
        a=5'b00000;    
        b={1'b0,divisor};
        c=(~b)+1'b1;
        q=dividend;
        
        for(i=0;i<4;i=i+1)begin
            a={a[3:0],q[3]};
            a=a+c;
            
            if(a[4])begin
                q={q[2:0],1'b0};
                a=a+b;
             end  
             else begin
                q={q[2:0],1'b1};
             end
        end
        
        remainder=a[3:0];        
        quotient=q;
     end    
 
 end
endmodule
