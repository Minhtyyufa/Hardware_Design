`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:30:15 AM
// Design Name: 
// Module Name: mux_2
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


module mux_2 #(parameter WIDTH = 8)(
    input [WIDTH-1:0] d_0, d_1,
    input s,
    output [WIDTH-1:0] out
    );
    
    assign out = s ? d_1: d_0;
    
endmodule
