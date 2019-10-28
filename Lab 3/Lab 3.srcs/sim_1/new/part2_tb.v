`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 12:37:29 PM
// Design Name: 
// Module Name: part2_tb
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


module part2_tb(

    );
    reg [2:0] x;
    reg g1, g2a_n, g2b_n;
    wire [7:0] y;
    integer k;
    part2 DUT (.g1(g1), .g2a_n(g2a_n), .g2b_n(g2b_n), .in(x), .out(y));
    initial
    begin
    x = 0; g1 = 0; g2a_n = 1; g2b_n = 1;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    x = 0; g1 = 1; g2a_n = 0; g2b_n = 1;
        for (k=0; k < 8; k=k+1)
           #5 x=k;
        #10;
    x = 0; g1 = 0; g2a_n = 1; g2b_n = 0;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    x = 0; g1 = 1; g2a_n = 0; g2b_n = 0;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    end

endmodule
