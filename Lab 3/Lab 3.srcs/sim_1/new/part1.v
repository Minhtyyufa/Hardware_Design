`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 11:37:29 AM
// Design Name: 
// Module Name: part1
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


module part1(

    );
    
    reg [2:0]x;
    wire [7:0]y;
    integer k;
    decoder_3_to_8 DUT (.in(x), .out(y));

    initial
    begin
        x = 0;
        for (k=0; k < 8; k=k+1)
            #5 x=k;
        #10;
    end
    
endmodule
