`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 11:34:00 AM
// Design Name: 
// Module Name: reg_sync
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


module reg_sync(
    input [3:0]d_input,
    input reset,
    input load,
    input clk,
    output reg[3:0]q
    );
    
    always @(posedge clk)
        if (reset)
        begin
            q <= 4'b0000;
        end
        else if (load)
        begin
            q <= d_input;
        end

    
endmodule
