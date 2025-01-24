`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 21.01.2025 20:32:40
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
reg cin;
wire [3:0]sum;
wire cout;

ripple_adder dut(a,b,cin,sum,cout);
initial begin
a=4'b0000;b=4'b0011;cin=1'b1;
#10 a=4'b0000;b=4'b0011;cin=1'b0;
#10 a=4'b1010;b=4'b0010;cin=1'b1;
#10 a=4'b1100;b=4'b1011;cin=1'b1;
#10 a=4'b0010;b=4'b0011;cin=1'b0;
#10 a=4'b1000;b=4'b0011;cin=1'b1;
 $finish;
end
endmodule
