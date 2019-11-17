`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2019 11:39:59 AM
// Design Name: 
// Module Name: cont
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


module cont(
    input [5:0] op,funct,
    input zero,
    output mem_to_reg, mem_write,
    output pc_src, alu_src,
    output reg_dst, reg_write,
    output jump,
    output [2:0]alu_control
    );
    
    wire [1:0] alu_op;
    wire branch;
    
    main_decoder main_dec(op, mem_to_reg, mem_write, branch, alu_src, reg_dst, reg_write, jump, alu_op);
    alu_decoder alu_dec(funct, alu_op, alu_control);
    
    assign pc_src = branch & zero;
    
endmodule
