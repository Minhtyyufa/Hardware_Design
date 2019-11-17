`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 12:11:52 PM
// Design Name: 
// Module Name: data_mem
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


module data_mem(
    input clk, we,
    input [31:0] index, wd,
    output [31:0] rd
    );
    
    reg [31:0] RAM[63:0];
    assign rd = RAM[index[31:2]];
    
    always @(posedge clk)
    if(we)
        RAM[index[31:2]] <= wd;
endmodule
