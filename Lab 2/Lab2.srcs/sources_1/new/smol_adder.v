`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 11:09:20 AM
// Design Name: 
// Module Name: smol_adder
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


module smol_adder(
    in_1,
    in_2,
    cin,
    cout,
    out
    );
    
    input wire [0:0]in_1;
    input wire [0:0]in_2;
    input wire [0:0]cin;
    
    output wire [0:0]cout;
    output wire [0:0]out;
    
    wire in_sum;
    wire in_carry;
    wire cin_carry;
    
    and(in_carry, in_1,in_2);
    xor(in_sum, in_1,in_2);
    xor(out, in_sum, cin);
    and(cin_carry, in_sum, cin);
    or(cout, in_carry, cin_carry);
    
endmodule
