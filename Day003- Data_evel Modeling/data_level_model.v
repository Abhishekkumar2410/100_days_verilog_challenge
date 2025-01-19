`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Abhishek kumar 
// 
// Create Date: 20.01.2025 00:42:44
// Design Name: 
// Module Name: data_flow_model
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


module data_flow_model(
input a,b,
output xor_g,and_g,not_g,buffe_g,or_g,nand_g
    );
 assign xor_g=a^b;
 assign and_g=a&b;
 assign or_g=a|b;
 assign nand_g=~(a&b);
 assign buffe_g=a;
 assign not_g=~a;   
endmodule
