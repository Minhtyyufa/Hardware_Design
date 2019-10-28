`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 12:23:04 PM
// Design Name: 
// Module Name: part3
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


module part3(
    op1,
    op2,
    out
    );
    
    input [1:0]op1;
    input [1:0]op2; 
    output [3:0]out;
    
    reg [3:0]ROM[15:0];
   
    assign out = ROM[{op1,op2}];
    initial $readmemb ("mult_lu.mem", ROM,0,15); 
    
    
endmodule
