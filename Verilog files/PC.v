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


module PC(addr_ins,clk,rst,pc_hold);
    input clk,rst,pc_hold;
    output reg [9:0] addr_ins;

    always @(negedge clk or posedge rst) begin
        if(rst) addr_ins <= 10'b0;
        else if(pc_hold) addr_ins <= addr_ins;
        else addr_ins <= addr_ins + 10'b1;
    end
endmodule
