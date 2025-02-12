`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abhishek kumar
// 
// Create Date: 03.02.2025 20:26:52
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
reg [1:0]s;
reg [3:0]a,b,c,d ;
wire [3:0]dout;

four_one_mux dut(s,a,b,c,d,dout);

initial begin
$monitor("time =%0t, select=%d inp1=%d inp2=%d inp3=%d inp4=%d out=%d ", $time, s,a,b,c,d,dout);

s=2'b00;a=4'b0001;b=4'b0000;c=4'b0000;d=4'b0000;
#10 s=2'b00;a=4'b1101;b=4'b1100;c=4'b0111;d=4'b1111;
#10 s=2'b10;a=4'b0101;b=4'b0011;c=4'b1110;d=4'b0110;
#10 s=2'b01;a=4'b1101;b=4'b0111;c=4'b1100;d=4'b0110;
#10 s=2'b00;a=4'b0001;b=4'b0000;c=4'b1110;d=4'b1100;
#10 s=2'b11;a=4'b0001;b=4'b0000;c=4'b0000;d=4'b0000;
#10 s=2'b10;a=4'b1101;b=4'b1111;c=4'b1110;d=4'b0011;
#10 s=2'b11;a=4'b0101;b=4'b1100;c=4'b0110;d=4'b0110;
#10 s=2'b00;a=4'b0001;b=4'b0000;c=4'b0000;d=4'b0000;
#10 s=2'b10;a=4'b0101;b=4'b0111;c=4'b1110;d=4'b0110;
#10 s=2'b01;a=4'b1101;b=4'b1110;c=4'b0101;d=4'b1100;
#10 s=2'b11;a=4'b1001;b=4'b0101;c=4'b1100;d=4'b0110;
$finish ;
end

endmodule
