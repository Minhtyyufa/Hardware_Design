`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 12:08:22 PM
// Design Name: 
// Module Name: part2
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


module part2(
    g2a_n,
    g2b_n,
    g1,
    in,
    out
    );
    
    input [0:0]g2a_n;
    input [0:0]g2b_n;
    input [0:0]g1;
    input [2:0]in;
    output wire[7:0]out;
    reg [7:0]inter;
    integer k;    
    decoder_3_to_8 normal (.in(in),.out(inter));
    
    assign out = (g2a_n == 1 | g2b_n == 1 | !g1) ? 8'b11111111: inter;

    
       
    /*
    always @(*)  
    if(g2a_n == 1 || g2b_n == 1 || !g1)
        for(k=0; k < 8; k= k+ 1)
        begin
            out[k] = 1;
        end
    else
        for(k = 0; k< 8; k= k+1)
        begin
            if(k == in)
                out[k]=0;
            else
                out[k]=1;
        end
     */
   
        
endmodule
