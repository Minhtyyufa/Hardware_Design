`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2019 11:25:20 AM
// Design Name: 
// Module Name: textbook_tb
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


module textbook_tb(

    );
    
    reg clk,reset;
    wire [31:0]write_data, data_addr;
    wire mem_write;
    
    mips_inst bleh(clk, reset, write_data, data_addr, mem_write);
    initial
        begin
            reset <= 1;
            #22;
            reset <=0;
        end
    
    always
        begin
            clk <= 1;
            #5;
            clk <=0;
            #5;
        end
    
    always @(negedge clk)
    begin
        if(mem_write) 
        begin
            if(data_addr === 84 & write_data === 7)
            begin
                $display("Simulation succeeded");
                $stop;
            end
            else if(data_addr !== 80)
            begin
                $display("Simulation failed");
                $stop;
            end
        end
    end
endmodule
