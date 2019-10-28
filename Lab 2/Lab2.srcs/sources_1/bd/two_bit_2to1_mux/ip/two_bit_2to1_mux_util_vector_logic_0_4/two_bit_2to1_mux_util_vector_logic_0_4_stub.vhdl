-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Sep 24 11:31:53 2019
-- Host        : micro14 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /afs/ee.cooper.edu/user/n/nguyen8/Lab2/Lab2.srcs/sources_1/bd/two_bit_2to1_mux/ip/two_bit_2to1_mux_util_vector_logic_0_4/two_bit_2to1_mux_util_vector_logic_0_4_stub.vhdl
-- Design      : two_bit_2to1_mux_util_vector_logic_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_bit_2to1_mux_util_vector_logic_0_4 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end two_bit_2to1_mux_util_vector_logic_0_4;

architecture stub of two_bit_2to1_mux_util_vector_logic_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Op2[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
begin
end;
