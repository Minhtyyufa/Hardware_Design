`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 11:50:24 PM
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0]src_a, src_b,
    input [2:0]alu_control,
    output [31:0]alu_out,
    output zero
    );
    
    wire [31:0] sum, sub;
    
    reg [31:0]inter;
    assign alu_out = inter;
    assign sum = src_a + src_b;
    assign sub = src_a - src_b;
    
    always @(*)
    case(alu_control)
        3'b010: inter <= sum;
        3'b110: inter <= sub;
        3'b000: inter <= src_a & src_b;
        3'b001: inter <= src_a | src_b;
        3'b111: inter <= sub[31];
    endcase
    assign zero = (src_b == 32'b0);
endmodule
