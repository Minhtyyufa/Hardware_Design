//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue Sep 24 11:49:31 2019
//Host        : micro14 running 64-bit Debian GNU/Linux 10 (buster)
//Command     : generate_target two_bit_2to1_mux_wrapper.bd
//Design      : two_bit_2to1_mux_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module two_bit_2to1_mux_wrapper
   (IN_1,
    IN_2,
    O,
    S);
  input [1:0]IN_1;
  input [1:0]IN_2;
  output [0:0]O;
  input [0:0]S;

  wire [1:0]IN_1;
  wire [1:0]IN_2;
  wire [0:0]O;
  wire [0:0]S;

  two_bit_2to1_mux two_bit_2to1_mux_i
       (.IN_1(IN_1),
        .IN_2(IN_2),
        .O(O),
        .S(S));
endmodule
