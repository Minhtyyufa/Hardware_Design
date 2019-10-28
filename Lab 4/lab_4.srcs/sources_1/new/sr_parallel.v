`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 11:45:32 AM
// Design Name: 
// Module Name: sr_parallel
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


module sr_parallel(
    input clk,
    input shift_in,
    input [3:0] parallel_in,
    input load,
    input shift_en,
    output shift_out,
    output [3:0] reg_content
    );
    reg [3:0] shift_reg;
    
    always @(posedge clk)
        if(load)
            shift_reg <= parallel_in;
        else if (shift_en)
            shift_reg <= {shift_reg[2:0], shift_in};
        assign shift_out = shift_reg[3];
        assign reg_content = shift_reg;
endmodule
