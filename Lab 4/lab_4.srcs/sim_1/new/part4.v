`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 05:43:28 PM
// Design Name: 
// Module Name: part4
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


module part4(

    );
    reg clk;
    reg clear_n;
    reg enable;
    wire [7:0]q;
    integer i;
    
    d_8_cnt my_counter(.clk(clk), .enable(enable), .reset(clear_n), .q(q));
    
    always #1 clk = !clk;
    
    initial
    begin
        clk =0;
        enable = 1;
        clear_n = 1;
        #1;
        clear_n =0;
        #80
        clk =0;
        enable = 0;
        clear_n = 0;
        #20
        clear_n = 0;
        clk = 0; 
        enable = 1;
        #20
        clear_n = 1;
        #1
        clear_n = 0;
        #5;
    end
    
endmodule
