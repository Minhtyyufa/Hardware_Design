`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 11:38:31 AM
// Design Name: 
// Module Name: part1
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


module part1(
    );
    reg clk;
    reg reset;
    reg load;
    reg [3:0] d;
    wire [3:0] q;
    integer i;
    
    reg_sync my_reg(.clk(clk), .reset(reset), .load(load), .d_input(d), .q(q));
    
    always #1 clk=!clk;
    
    initial
        begin
            clk = 0;
            reset = 0;
            load = 1;
            d = 0;
            for(i = 0; i< 16; i = i+1)
                #5 d=i;
            #10;
            clk = 0;
            reset = 1;
            load = 1;
            d = 0;
            for(i = 0; i< 16; i=i+1)
                #5 d = i;
            #10;
            clk = 0;
            reset = 1;
            load = 0;
            for(i =0; i< 16; i=i+1)
                #5 d = i;
            #10;
            end
            
    
endmodule
