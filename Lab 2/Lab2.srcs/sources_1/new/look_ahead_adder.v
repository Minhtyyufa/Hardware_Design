`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 11:38:10 AM
// Design Name: 
// Module Name: look_ahead_adder
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


module look_ahead_adder(
    in_1,
    in_2,
    cin,
    cout,
    out
    );
    
    input wire [0:0]in_1;
    input wire [0:0]in_2;
    input wire [0:0]cin;
    
    wire p;
    wire g;
    wire in_sum;
    wire inter;
    output wire [0:0]out;
    output wire [0:0]cout;
    
    
    
    and(g, in_1,in_2);
    xor(in_sum, in_1,in_2);
    xor(out, in_sum, cin);
    and(inter, p, cin);
    or(cout,g, inter);
endmodule
