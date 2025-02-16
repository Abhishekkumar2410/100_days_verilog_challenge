`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 17.02.2025 00:40:08
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
reg in;
reg [1:0]sel;
wire [3:0]out;

four_one_demux_using_two_one_demux dut(in,sel,out);

initial begin
$monitor("time=%0t , in=%d, sel=%d, out=%d ",$time,in,sel,out);
in=1'b1; sel=2'b00;
#10 in=1'b1; sel=2'b10;
#10 in=1'b1; sel=2'b10;
#10 in=1'b1; sel=2'b00;
#10 in=1'b1; sel=2'b01;
#10 in=1'b1; sel=2'b11;
#10 in=1'b1; sel=2'b01;
#10 $finish;

end
endmodule
