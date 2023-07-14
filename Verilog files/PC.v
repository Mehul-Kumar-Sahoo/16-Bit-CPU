`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
// 
// Create Date: 17.05.2023 07:02:41
// Design Name: 
// Module Name: PC
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


module PC(addr_ins,clk,rst,pc_load,jump_ins);
    input clk,rst,pc_load;
    input [9:0] jump_ins;
    output reg [9:0] addr_ins;

    always @(negedge clk or posedge rst or posedge pc_load) begin
        if(rst) addr_ins <= 10'b0;
        else if(pc_load) addr_ins <= jump_ins;
        else addr_ins <= addr_ins + 10'b1;
    end
endmodule
