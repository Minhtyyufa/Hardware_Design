`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 11:38:32 AM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input clk, reset,
    input mem_to_reg, pc_src,
    input alu_src, reg_dst,
    input reg_write, jump,
    input [2:0]alu_control,
    output zero,
    output [31:0]pc,
    input [31:0]instr,
    output [31:0]alu_out, write_data,
    input [31:0]read_data
    );
    
    wire [4:0] write_reg;
    wire [31:0] pc_next, pc_next_br, pc_plus_4, pc_branch;
    wire [31:0] sign_imm, sign_imm_sh, src_a, src_b, result;
    
    // Move PC to next instruction
    // shift next pc address
    flop_r #(32)    pc_reg(clk, reset, pc_next, pc);
    adder           pc_add_1(pc, 32'b100, pc_plus_4);
    sl_2            imm_sh(sign_imm, sign_imm_sh);
    adder           pc_add_2(pc_plus_4, sign_imm_sh, pc_branch);
    mux_2 #(32)     pc_br_mux(pc_plus_4, pc_branch, pc_src, pc_next_br);
    mux_2 #(32)     pc_mux(pc_next_br, {pc_plus_4[31:28], instr[25:0], 2'b00}, jump, pc_next);
    
    
    reg_file        rf(clk, reg_write, instr[25:21], instr[20:16], write_reg, result, src_a, write_data);
    mux_2 #(5)      wr_mux(instr[20:16], instr[15:11], reg_dst, write_reg);
    mux_2 #(32)     res_mux(alu_out, read_data, mem_to_reg, result);
    sign_ext        se(instr[15:0], sign_imm);
    
    mux_2 #(32)     src_b_mux(write_data, sign_imm, alu_src, src_b);
    alu             alu(src_a, src_b, alu_control, alu_out, zero);
endmodule
