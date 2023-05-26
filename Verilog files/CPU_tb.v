`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2023 08:25:20
// Design Name: 
// Module Name: CPU_tb
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


module CPU_tb;
    reg clk,rst_pc,rst_acc;
    wire wr,addr_mode;
    wire [9:0] addr;
    wire [15:0] data_in,data_out;

    // Instantiating the CPU and Memory module
    CPU c0(data_out,addr,wr,addr_mode,data_in,clk,rst_pc,rst_acc);
    Memory m0(data_in,data_out,addr,addr_mode,wr);

    initial begin
        // Initalising
        clk=0; rst_acc=1; rst_pc=1;
        #1 rst_acc=0; rst_pc=0;
    end

    // Defining the clock 100 Mhz
    always #5 clk = ~clk;
endmodule
