`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 24.02.2025 23:11:13
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
reg [7:0]in;
wire [2:0]out;
priority_encoder dut(in,out);
initial 
begin
$monitor("time=%0t, in=%b, out=%d",$time,in,out);
in=8'b01100011;
#10 in=8'b01100011;
#10 in=8'b00000011;
#10 in=8'b00011011;
#10 in=8'b01101011;
#10 in=8'b11100011;
#10 in=8'b00010011;
#10 in=8'b00000001;
#10 $finish;

end
endmodule
