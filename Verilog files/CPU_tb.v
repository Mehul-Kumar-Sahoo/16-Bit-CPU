`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
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
    reg [15:0] data_in;
    wire wr,addr_mode;
    wire [9:0] addr;
    wire [9:0] ind_addr;
    wire [15:0] data_out;

    // Inistialising Memory
    reg [15:0] memory [0:1023];

    // Instantiating the CPU
    CPU c0(data_out,addr,wr,addr_mode,data_in,clk,rst_pc,rst_acc);

    // Loading the address and data file into Memory
    initial begin
        // Input file for Program
        $readmemh("C:/Users/sahoo/OneDrive/Documents/PROJECTS/16_BIT_CPU_Verilog/Program.txt",memory,0,400);
        // Input file for Data
        $readmemh("C:/Users/sahoo/OneDrive/Documents/PROJECTS/16_BIT_CPU_Verilog/Data.txt",memory,401,1023);
        // Initalising
        clk=0; rst_acc=1; rst_pc=1;
        #1 rst_acc=0; rst_pc=0;
    end

    // Defining the clock 100 Mhz
    always #5 clk = ~clk;

    assign ind_addr = memory[addr];
    always @(*) begin
        if(addr_mode) data_in <= memory[ind_addr];
        else data_in <= memory[addr];
    end

    always @(posedge wr) memory[addr] <= data_out;

    initial begin
        // Writing output to file
        #300
        $writememh("C:/Users/sahoo/OneDrive/Documents/PROJECTS/16_BIT_CPU_Verilog/Memory_Output.txt",memory,401,430);
        $finish;
    end

endmodule
