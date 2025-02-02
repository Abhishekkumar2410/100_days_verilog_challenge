`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 02.02.2025 20:02:59
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
reg [7:0]a,b;
wire lesser,equal,greater;
comparator dut(a,b,lesser,equal,greater);

initial begin
$monitor(" time=%0t : a=%d | b=%d | lesser=%b |equal=%b | greater=%b",$time,a,b,lesser, equal, greater);
a=8'd24;b=8'd56;
#10 a=8'd50;b=8'd24;
#10 a=8'd52;b=8'd54;
#10 a=8'd24;b=8'd24;
#10 a=8'd80;b=8'd51;
#10 a=8'd50;b=8'd51;
#10 $finish;
end
endmodule
