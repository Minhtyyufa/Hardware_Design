`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 11:25:11 AM
// Design Name: 
// Module Name: mips_inst
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


module mips_inst(
    input clk, reset,
    output [31:0] write_data, data_addr,
    output mem_write
    );
    
    wire [31:0] pc, instr, read_data;
    
    main mips(clk, reset, pc, instr, mem_write, data_addr, write_data, read_data);
    
    instr_mem im(pc[7:2], instr);
    data_mem dm(clk, mem_write, data_addr, write_data, read_data);
    
endmodule
