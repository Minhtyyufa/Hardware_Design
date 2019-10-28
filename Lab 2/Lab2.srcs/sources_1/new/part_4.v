`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 12:30:39 PM
// Design Name: 
// Module Name: part_4
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


module part_4(
    in_1,
    in_2,
    in_3,
    swt,
    out_1
    );
    input wire [1:0]in_1;
    input wire [1:0]in_2;
    input wire [1:0]in_3;  
    input wire [1:0]swt;
    output wire [1:0]out_1;
    wire [1:0]inter_1;
    part_3 mux_1(.in_1(in_1), .in_2(in_2),.s_1(swt[0]),.out_1(inter_1));
    part_3 mux_2(.in_1(in_3),.in_2(inter_1),.s_1(swt[1]),.out_1(out_1));

    
endmodule
