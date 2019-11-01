`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2019 06:46:54 PM
// Design Name: 
// Module Name: part5
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


module part5(

    );
    reg clk;
    reg clear_n;
    reg enable;
    wire [2:0]q;
    integer i;
    
    always #5 clk = !clk;
    
    part_5 cust_count(.enable(enable), .clk(clk), .reset(clear_n), .q(q),.prev(q));
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
        #80
        clear_n = 1;
        #1
        clear_n = 0;
        #5;
    end
    
endmodule
