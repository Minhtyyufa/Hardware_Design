`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 05:33:46 PM
// Design Name: 
// Module Name: d_8_cnt
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


module d_8_cnt(
    input reset,
    input clk,
    input enable,
    output [7:0]q
    );
    
    d_ff f0(.clk(clk), .reset(reset), .d(!q[0]), .q(q[0]), .enable(enable));
    d_ff f1(.clk(!q[0]), .reset(reset), .d(!q[1]), .q(q[1]), .enable(enable));
    d_ff f2(.clk(!q[1]), .reset(reset), .d(!q[2]), .q(q[2]), .enable(enable));
    d_ff f3(.clk(!q[2]), .reset(reset), .d(!q[3]), .q(q[3]), .enable(enable));
    d_ff f4(.clk(!q[3]), .reset(reset), .d(!q[4]), .q(q[4]), .enable(enable));
    d_ff f5(.clk(!q[4]), .reset(reset), .d(!q[5]), .q(q[5]), .enable(enable));
    d_ff f6(.clk(!q[5]), .reset(reset), .d(!q[6]), .q(q[6]), .enable(enable));
    d_ff f7(.clk(!q[6]), .reset(reset), .d(!q[7]), .q(q[7]), .enable(enable));
    
endmodule
