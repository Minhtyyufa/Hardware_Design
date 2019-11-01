`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 06:03:33 PM
// Design Name: 
// Module Name: part_5
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


module part_5(
    input enable,
    input reset,
    input clk,
    input [2:0]prev,
    output reg [2:0]q
    );
    
    always @(posedge clk or posedge reset)
        if(reset)
            q = 3'b000;
        else if(enable)
            case(prev)
                3'b000: q = 3'b001;
                3'b001: q = 3'b011;
                3'b011: q = 3'b101;
                3'b101: q = 3'b111;
                3'b111: q = 3'b010;
                default: q = 3'b000;
            endcase
endmodule
