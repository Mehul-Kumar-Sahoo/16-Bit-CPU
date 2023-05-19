# 16 Bit CPU

- I am Mehul Kumar Sahoo pursuing Electronics Engineering at IIT (BHU), Varanasi.
- I have made a 16-bit CPU using Verilog HDL as a solution of the problem statement in event ICHIP of UDYAM'23.
- The verilog files along with testbench are attached in this repository.

     <img width="943" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/adb940e1-af67-44e0-92c6-46ee77fef546">

## CPU Design

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

## ALU Control Bits
- Each control signal represents a basic operation in inputs as mentioned:

  <img width="400" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/acbef46d-83ab-44a6-9c2d-04954a3ed68f">
- The control signals for various operations of the ALU are as follows:

  <img width="300" alt="image" src="https://github.com/Mehul-Kumar-Sahoo/16-Bit-CPU/assets/93527557/c2086dfa-f085-4c7f-a7fb-0254ce07eaf7">

