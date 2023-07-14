`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mehul Kumar Sahoo
// 
// Create Date: 17.05.2023 07:03:55
// Design Name: 
// Module Name: ControlUnit
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


module Control_Unit(zx,nx,zy,ny,f,no,load_acc,load_mem,pc_load,opcode,zr,ng,clk);
    input zr,ng,clk;
    input [4:0] opcode;
    output reg zx,nx,zy,ny,f,no,load_acc,load_mem,pc_load;

    // Opcode execution
    always @(*) begin
        if(clk==1'b1) begin
            load_acc=1'b0; load_mem=1'b0; pc_load=1'b0;
            case(opcode)
                5'b00000:begin zx=1; nx=0; zy=1; ny=0; f=1; no=0; end
                5'b00001:begin zx=1; nx=1; zy=1; ny=1; f=1; no=1; end
                5'b00010:begin zx=1; nx=1; zy=1; ny=0; f=1; no=0; end
                5'b00011:begin zx=0; nx=0; zy=1; ny=1; f=0; no=0; end
                5'b00100:begin zx=1; nx=1; zy=0; ny=0; f=0; no=1; end
                5'b00101:begin zx=0; nx=0; zy=1; ny=1; f=0; no=1; end
                5'b00110:begin zx=1; nx=0; zy=0; ny=0; f=0; no=1; end
                5'b00111:begin zx=0; nx=0; zy=1; ny=1; f=1; no=1; end
                5'b01000:begin zx=1; nx=1; zy=0; ny=0; f=1; no=1; end
                5'b01001:begin zx=0; nx=1; zy=1; ny=1; f=1; no=1; end
                5'b01010:begin zx=1; nx=1; zy=0; ny=1; f=1; no=1; end
                5'b01011:begin zx=0; nx=0; zy=1; ny=1; f=1; no=0; end
                5'b01100:begin zx=1; nx=1; zy=0; ny=0; f=1; no=0; end
                5'b01101:begin zx=0; nx=0; zy=0; ny=0; f=1; no=0; end
                5'b01110:begin zx=0; nx=1; zy=0; ny=0; f=1; no=1; end
                5'b01111:begin zx=0; nx=0; zy=0; ny=1; f=1; no=1; end
                5'b10000:begin zx=0; nx=0; zy=0; ny=0; f=0; no=0; end
                5'b10001:begin zx=0; nx=1; zy=0; ny=1; f=0; no=1; end
                5'b10010:begin zx=1; nx=0; zy=1; ny=0; f=1; no=0; end
                5'b10011:begin zx=1; nx=0; zy=1; ny=0; f=1; no=0; load_mem=1'b1; end
                5'b10100:pc_load=1'b1;
                5'b10101:if(zr) pc_load=1'b1;
                5'b10110:if(ng) pc_load=1'b1;
                5'b10111: $finish;
            endcase
        end
        else if(clk==1'b0) load_acc=(opcode<=5'b10010);
    end
endmodule
