`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 11:49:37 AM
// Design Name: 
// Module Name: part2
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


module part2(

    );
    reg clk, shift_in, load, shift_en;
    wire shift_out;
    wire [3:0]reg_content;
    reg [3:0] par_in;
    
    integer i;
    
    sr_parallel my_sr(.clk(clk), .shift_in(shift_in), .load(load), .shift_en(shift_en), .shift_out(shift_out), .parallel_in(par_in), .reg_content(reg_content));
    
    always #1 clk = !clk;
    
    
    initial
    begin
        clk =0;
        shift_in = 0;
        load = 1;
        shift_en = 0;
        par_in = 4'b0000;
        for(i=0; i < 16; i = i+1)
            #5 par_in = i;
        #10;
        par_in = 4'b0000;
        #5;
        load = 0;
        clk = 0;
        shift_in = 1;
        shift_en = 1;
        #5;
    end
      
        
        
endmodule
