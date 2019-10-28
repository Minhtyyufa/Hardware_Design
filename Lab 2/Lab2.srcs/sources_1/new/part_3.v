`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 11:09:31 AM
// Design Name: 
// Module Name: part_3
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


module part_3(
    in_1,
    in_2,
    s_1,
    out_1
    );
 
    input wire [1:0]in_1;
    input wire [1:0]in_2;  
    input wire [0:0]s_1;
    output wire [1:0]out_1;
    reg [1:0]inter;
/*
    and(wire_1, in_1[0], !s_1);
    and(wire_2, in_2[0], s_1);
    or(out_1[0], wire_1, wire_2);
    
    and(wire_3, in_1[1], !s_1);
    and(wire_4, in_2[1], s_1);
    or(out_1[1], wire_3, wire_4);
    */
    assign out_1 = inter;
    always @ (*)
    begin
        if(s_1 == 0)
            inter = in_1;
        else
            inter = in_2;
    end
    
    
    
endmodule
