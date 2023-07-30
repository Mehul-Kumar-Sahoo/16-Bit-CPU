# 16 Bit CPU

Skills: Verilog HDL, Computer Architechture

- I am Mehul Kumar Sahoo pursuing Electronics Engineering at IIT (BHU), Varanasi.
- I have made a 16-bit CPU using Verilog HDL as a solution of the problem statement in event ICHIP of UDYAM'23.
- The verilog files along with testbench are attached in this repository.
- The block diagram of design is as follows -
  
    <img width="738" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/c2af725f-c487-4cfe-b0bc-403cfad9e645">

## CPU Design

   <img width="944" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/581f0bfe-0f1c-4b72-a149-c1e38a766155">

- The microprocessor follows Von Neuman Architechture and is an accumulator based processor (The output of ALU is always stored in the accumulator).
- The CPU will use an 2KB (1k X 16) main memory.
- The address 0-400 will be reserved for 16-bit instruction and 401-1023 will be reserved for 16-bit data.
- The CPU architechture is as follows - 

     <img width="576" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/c6b9ea6b-5b9b-4ef7-b9e6-e63907f76a3f">
     
## Instruction Code

- The instruction bits are divided into 3 parts -
 
     <img width="556" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/ee8ec862-728e-430c-a30f-7cb72731edf0">
1) 1st bit represnts the Addressing Mode:
    - '0' for Direct Addressing
    - '1' for Indirect Addressing
2) Next 5 bits represent the opcode for the instruction:
    - The opcodes description is as follows:
     <img width="500" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/5b5fc3b1-19f1-411a-af5c-fd39fd9c59a1">
3) The next 10 bits represent the Address of the memory that is needed in the instruction. 

## ALU(CalC) Control Bits
- Each control signal represents a basic operation in inputs as mentioned:

  <img width="400" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/acbef46d-83ab-44a6-9c2d-04954a3ed68f">
- The control signals for various operations of the ALU are as follows:

  <img width="300" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/c2086dfa-f085-4c7f-a7fb-0254ce07eaf7">
- [The explanation for the control bits of ALU is given here.](https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/blob/main/Control_Bits_CalC.pdf)

## Input and Output

- The Instructions are given in the file Program.txt and the Data is given in the file Data.txt. As soon as we run the CPU_tb.v file the instructions and data are loaded into their respective segments of memory.
- The output is written in the file Memory_output.txt.
