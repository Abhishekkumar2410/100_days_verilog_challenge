`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 20.01.2025 00:43:03
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


module testbench(

    );
reg a,b;
wire xor_g,and_g,not_g,buffe_g,or_g,nand_g;
data_flow_model dut(a,b, xor_g,and_g,not_g,buffe_g,or_g,nand_g);
initial begin
#0 a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b0;
#30 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#20 a=1'b0;b=1'b0;
#10 a=1'b1;b=1'b1;


end
endmodule
