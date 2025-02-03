`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 02.02.2025 21:04:17
// Design Name: 
// Module Name: testbench
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


module testbench();
reg [3:0]a,b;
reg sel;
wire [3:0]out;
two_one_mux dut(a,b,sel,out);

initial begin
$monitor("time =%0t : a=%d | b= %d | sel= %d  out=%d",$time ,a ,b,sel,out);
a=4'd13;b=4'd11;sel=1'b0;
#10 a=4'd13;b=4'd11;sel=1'b0;
#10 a=4'd03;b=4'd11;sel=1'b1;
#10 a=4'd11;b=4'd11;sel=1'b0;
#10 a=4'd03;b=4'd01;sel=1'b1;
#10 a=4'd10;b=4'd11;sel=1'b1;
#10 a=4'd12;b=4'd07;sel=1'b0;
#10 $finish;
end
endmodule
