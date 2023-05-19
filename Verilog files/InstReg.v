`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
// 
// Create Date: 17.05.2023 07:00:49
// Design Name: 
// Module Name: InstReg
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


module InstReg(addr_mode,opcode,address,clk,ins);
    input clk;
    input [15:0] ins;
    output reg addr_mode;
    output reg [4:0] opcode;
    output reg [9:0] address;

    always @(clk==1'b1) begin
        addr_mode <= ins[15];
        opcode <= ins[14:10];
        address <= ins[9:0];
    end
endmodule
