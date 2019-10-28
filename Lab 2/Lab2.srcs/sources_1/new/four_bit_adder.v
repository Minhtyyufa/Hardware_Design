`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2019 11:06:51 AM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    a,
    b,
    s,
    cin,
    cout
    );
    
    input wire [3:0]a,b;
    input wire [0:0]cin;
    output wire [3:0]s;
    output wire [0:0]cout;
    
    wire [3:0]inters;
    
    
    smol_adder add1(.in_1(a[0]), .in_2(b[0]), .cin(cin), .cout(inters[0]), .out(s[0]));
    smol_adder add2(.in_1(a[1]), .in_2(b[1]), .cin(inters[0]), .cout(inters[1]), .out(s[1]));
    smol_adder add3(.in_1(a[2]), .in_2(b[2]), .cin(inters[2]), .cout(inters[2]), .out(s[2]));
    smol_adder add4(.in_1(a[3]), .in_2(b[3]), .cin(inters[2]), .cout(cout), .out(s[3]));
    
    
    
endmodule
