`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 11:42:20 AM
// Design Name: 
// Module Name: main_decoder
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


module main_decoder(
    input [5:0] op,
    output mem_to_reg, mem_write,
    output branch, alu_src,
    output reg_dst, reg_write,
    output jump,
    output [1:0]alu_op
    );
    
    reg [8:0] controls;
    
    assign {reg_write, reg_dst, alu_src, branch, mem_write, mem_to_reg, jump, alu_op} = controls;
    
    //hardcoded list of instructions
    always @(*)
    case(op)
        //Rtype - Rtype instruction
        6'b000000: controls <= 9'b110000010; 
        //LW - load word
        6'b100011: controls <= 9'b101001000;
        //SW - store word
        6'b101011: controls <= 9'b001010000;
        //BEQ - branch if equal
        6'b000100: controls <= 9'b000100001;
        //ADDI - Add immediate
        6'b001000: controls <= 9'b101000000; 
        //J - jump
        6'b000010: controls <= 9'b000000100;
        //Undefined instruction
        default: controls <= 9'bxxxxxxxxx; 
    endcase    
endmodule
