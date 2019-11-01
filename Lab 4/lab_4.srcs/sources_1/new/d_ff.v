`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 05:26:47 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d,
    input clk,
    input reset,
    input enable,
    output reg q
    );
    
    always @(posedge clk or posedge reset)
        if (reset)
        begin
            q <= 1'b0;
        end
        else if(enable)
            q <= d;
            
    
    
endmodule
