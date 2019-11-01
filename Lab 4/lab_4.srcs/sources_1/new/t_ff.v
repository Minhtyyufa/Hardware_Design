`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 03:55:39 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input clk,
    input reset_n, 
    input t,
    output reg q
    );
    always @(negedge clk or posedge reset_n)
        if (reset_n)
            q <= 1'b0;
        else if (t)
            q <= ~q;
endmodule
