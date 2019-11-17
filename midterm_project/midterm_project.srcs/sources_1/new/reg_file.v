`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 11:17:31 AM
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input clk, we_3,
    input [4:0] ra_1, ra_2, wa_3,
    input [31:0] wd_3,
    output [31:0] rd_1, rd_2
    );
    reg [31:0] rf[31:0];
    
    always @(posedge clk)
        if (we_3)
            rf[wa_3] <= wd_3;
    assign rd_1 = (ra_1 != 0) ? rf[ra_1] : 0;
    assign rd_2 = (ra_2 != 0) ? rf[ra_2] : 0;
endmodule
