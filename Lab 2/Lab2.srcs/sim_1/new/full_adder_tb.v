`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2019 11:16:57 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(

    );
    reg a, b, cin;
    wire cout, s;
    smol_adder DUT (.in_1(a), .in_2(b), .cin(cin), .cout(cout), .out(s));
    initial
    begin
        a = 0; b = 0; cin = 0;
        #10 a = 1;
        #10 b = 1; a = 0;
        #10 a = 1;
        #10 cin = 1; a = 0; b = 0;
        #10 a = 1;
        #10 b = 1; a = 0;
        #10 a = 1;
        #10;
    end
    
endmodule
