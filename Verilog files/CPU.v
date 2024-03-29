`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
// 
// Create Date: 17.05.2023 07:53:26
// Design Name: 
// Module Name: CPU
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


module CPU(data_out,addr,wr,addr_mode,data_in,clk,rst_pc,rst_acc);
    input clk,rst_pc,rst_acc;
    input [15:0] data_in;
    output wr,addr_mode;
    output [9:0] addr;
    output [15:0] data_out;

    wire load_pc,load_acc,load_mem,zr,ng,mode,acc_load,zr_acc,ng_acc,zx,nx,zy,ny,f,no;
    wire [4:0] opcode;
    wire [9:0] addr_data,addr_ins;
    wire [15:0] acc_in,acc_out,alu_out;

    // Instantiating the modules
    PC a0(addr_ins,clk,rst_pc,load_pc,addr);
    InstReg a1(mode,opcode,addr_data,clk,data_in);
    Accumulator a2(acc_out,acc_in,load_acc,rst_acc);
    CalC a3(alu_out,zr,ng,acc_out,data_in,zx,nx,zy,ny,f,no);
    Control_Unit a4(zx,nx,zy,ny,f,no,load_acc,wr,load_pc,opcode,zr_acc,ng_acc,clk);

    assign addr = clk ? addr_data : addr_ins;
    assign acc_in = (opcode==5'b10010) ? data_in : alu_out;
    assign data_out = acc_out;
    assign addr_mode = clk & mode;
    assign zr_acc = (acc_out==15'b0);
    assign ng_acc = (acc_out[15]);
endmodule
