`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 07:22:06 PM
// Design Name: 
// Module Name: mult_test
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


module mult_test(

    );
    
    reg[2:0] in_1;
    reg[2:0] in_2;
    wire [6:0]out;
    integer i;
    integer j;
    three_bit_mult my_mult(.in_1(in_1), .in_2(in_2), .out(out));
    initial
    for(i = 0; i<8; i= i+1)
    begin
        in_1 = i;
        for(j = 0; j< 8; j= j+1)
            #1 in_2=j;
    end
endmodule
