`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2019 12:05:58 PM
// Design Name: 
// Module Name: instr_mem
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


module instr_mem(
    input [5:0] index,
    output [31:0] mem
    );
    
    reg[31:0] RAM[63:0];
    
    initial
        begin
            $readmemh ("test_prog.mem",RAM);
        end
    assign mem = RAM[index];
endmodule
