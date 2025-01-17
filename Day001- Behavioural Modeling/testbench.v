`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 22:28:03
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for the `behave` module.
// 
// Dependencies: Requires `behave` module.
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module testbench;
    reg a, b;
    wire xor_g, and_g, nand_g, not_g, or_g;
    
    // Instantiate the `behave` module
    behave dut (
        .a(a), 
        .b(b), 
        .xor_g(xor_g), 
        .nand_g(nand_g), 
        .not_g(not_g), 
        .or_g(or_g), 
        .and_g(and_g)
    );
    
    initial begin
        // Test cases
        #10 a = 1'b0; b = 1'b0;
        #10 a = 1'b0; b = 1'b1;
        #10 a = 1'b1; b = 1'b0;
        #10 a = 1'b1; b = 1'b1;
    end
endmodule
