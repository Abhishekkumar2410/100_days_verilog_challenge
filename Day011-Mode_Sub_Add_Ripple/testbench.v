`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 25.01.2025 17:30:31
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
reg m,en;
wire [3:0]sub_add;
wire carry;

Mode_sub_add_ripple dut(a,b,m,en,sub_add,carry);

initial begin
a=4'b0000;b=4'b0001;m=1'b0;en=1'b1;
#10 a=4'b0001;b=4'b0101;m=1'b0;en=1'b1;
#10 a=4'b0111;b=4'b0101;m=1'b1;en=1'b1;
#10 a=4'b1001;b=4'b0111;m=1'b0;en=1'b0;
#10 a=4'b0011;b=4'b1101;m=1'b1;en=1'b1;
#10 a=4'b1011;b=4'b1111;m=1'b0;en=1'b0;
#150 $finish;
end


endmodule
