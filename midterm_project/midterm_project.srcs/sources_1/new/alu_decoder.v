`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 12:11:15 PM
// Design Name: 
// Module Name: alu_decoder
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


module alu_decoder(
    input [5:0] funct,
    input [1:0] alu_op,
    output reg[2:0] alu_control
    );
    
    always @(*)
    case(alu_op)
        //add
        2'b00: alu_control <= 3'b010;
        //sub
        2'b01: alu_control <= 3'b110;
        //Rtype instruction
        default: case (funct)
            //ADD
            6'b100000: alu_control <= 3'b010;
            //SUB
            6'b100010: alu_control <= 3'b110;
            //AND
            6'b100100: alu_control <= 3'b000;
            //OR
            6'b100101: alu_control <= 3'b001;
            //SLT - set if less than
            6'b101010: alu_control <= 3'b111;
            //unknown instruction
            default: alu_control <= 3'bxxx;
        endcase
    endcase
endmodule
