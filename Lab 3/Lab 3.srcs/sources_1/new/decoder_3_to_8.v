`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 11:02:02 AM
// Design Name: 
// Module Name: decoder_3_to_8
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


module decoder_3_to_8(
    in,
    out
    );
    
    input [2:0]in;
    output reg[7:0]out;
    
    integer k = 0;
    always @(*)
        for(k=0; k < 8; k= k +1)
        begin
            if(k == in)
                out[k]=0;
            else
                out[k]=1;
        end
        
endmodule
