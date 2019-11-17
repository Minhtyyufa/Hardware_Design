`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 11:23:55 AM
// Design Name: 
// Module Name: main
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


module main(
    input clk, reset,
    output [31:0] pc,
    input [31:0] instr,
    output mem_write,
    output [31:0] alu_out, write_data,
    input [31:0] read_data
    );
    
    wire mem_to_reg, branch, alu_src, reg_dst, reg_write, jump, zero, pc_src;
    wire [2:0] alu_control;
    
    cont controller(instr[31:26], instr[5:0], zero, mem_to_reg, mem_write, pc_src, alu_src, reg_dst, reg_write, jump, alu_control);
    datapath data(clk, reset, mem_to_reg, pc_src, alu_src, reg_dst, reg_write, jump, alu_control, zero, pc, instr, alu_out, write_data, read_data);
    
    
endmodule
