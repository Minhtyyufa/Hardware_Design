`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:21:59 AM
// Design Name: 
// Module Name: sl_2
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

//shift left by 2
module sl_2(
    input [31:0] in,
    output [31:0] out
    );
    
    assign out = {in[29:0], 2'b00};
endmodule
