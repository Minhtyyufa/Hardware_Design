`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 11:31:16 AM
// Design Name: 
// Module Name: part_2
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


module part_2;
    reg [0:0]s_1;
    reg [1:0]in_1;
    reg [1:0]in_2;
    
    wire [1:0]out_1;
    
    wire wire_1;
    wire wire_2;
    wire wire_3;
    wire wire_4;

    and(wire_1, in_1[0], !s_1);
    and(wire_2, in_2[0], s_1);
    or(out_1[0], wire_1, wire_2);
    
    and(wire_3, in_1[1], !s_1);
    and(wire_4, in_2[1], s_1);
    or(out_1[1], wire_3, wire_4);
initial
    begin
        in_1 = 0; in_2 = 0; s_1 = 0;
        #10 in_1 = 1;
        #10 in_1 = 1;
        #10 in_1 = 3; in_2 = 0;
        #10 in_1 = 2; in_2 = 3;
        #10 s_1 = 1;
        #10 in_1 = 1;
        #10 in_2 = 1;
        #10 in_1 = 3; in_2 = 0;
        #10 in_1 = 2; in_2 = 3;
            #20;
    end

    
endmodule
