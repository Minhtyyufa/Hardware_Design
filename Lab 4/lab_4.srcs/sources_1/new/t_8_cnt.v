`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 04:09:05 PM
// Design Name: 
// Module Name: t_8_cnt
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


module t_8_cnt(
    input clk,
    input clear_n,
    input enable,
    output [7:0]q
    );
    
    t_ff f0(.clk(should_run), .t(1), .reset_n(clear_n), .q(q[0]));
    t_ff f1(.clk(q[0]), .t(1), .reset_n(clear_n), .q(q[1]));
    t_ff f2(.clk(q[1]), .t(1), .reset_n(clear_n), .q(q[2]));
    t_ff f3(.clk(q[2]), .t(1), .reset_n(clear_n), .q(q[3]));
    t_ff f4(.clk(q[3]), .t(1), .reset_n(clear_n), .q(q[4]));
    t_ff f5(.clk(q[4]), .t(1), .reset_n(clear_n), .q(q[5]));
    t_ff f6(.clk(q[5]), .t(1), .reset_n(clear_n), .q(q[6]));
    t_ff f7(.clk(q[6]), .t(1), .reset_n(clear_n), .q(q[7]));
    
endmodule
