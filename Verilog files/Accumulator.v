`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
// 
// Create Date: 17.05.2023 06:59:49
// Design Name: 
// Module Name: Accumulator
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


module Accumulator(acc_out,acc_in,load_acc,rst);
    input load_acc,rst;
    input [15:0] acc_in;
    output reg [15:0] acc_out;

    always @(posedge load_acc or posedge rst) begin
        if(rst) acc_out <= 15'b0;
        else if(load_acc) acc_out <= acc_in;
    end
endmodule
