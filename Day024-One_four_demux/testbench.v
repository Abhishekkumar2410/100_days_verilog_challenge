`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 16.02.2025 00:50:03
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
reg [2:0]in;
reg [1:0]sel;
wire [2:0]a,b,c,d;

one_four_demux dut(in,sel,a,b,c,d);

initial begin
$monitor("time=%0t , input=%d ,sel=%d , a=%d , b=%d, c=%d, d=%d",$time,in,sel,a,b,c,d);
in=3'b000;sel=2'b00;
#10 in=3'b100;sel=2'b00;
#10 in=3'b110;sel=2'b10;
#10 in=3'b010;sel=2'b01;
#10 in=3'b011;sel=2'b01;
#10 in=3'b101;sel=2'b11;
#10 in=3'b111;sel=2'b10;
#10 $finish;
end
endmodule
