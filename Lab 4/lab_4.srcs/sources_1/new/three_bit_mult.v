`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 07:19:21 PM
// Design Name: 
// Module Name: three_bit_mult
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


module three_bit_mult(
    input [2:0]in_1,
    input [2:0]in_2,
    output [6:0]out
    );
    
    assign out = in_1*in_2;
    
endmodule
