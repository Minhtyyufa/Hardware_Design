-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Tue Sep 24 11:31:52 2019
-- Host        : micro14 running 64-bit Debian GNU/Linux 10 (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top two_bit_2to1_mux_util_vector_logic_0_1 -prefix
--               two_bit_2to1_mux_util_vector_logic_0_1_ two_bit_2to1_mux_util_vector_logic_0_1_sim_netlist.vhdl
-- Design      : two_bit_2to1_mux_util_vector_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity two_bit_2to1_mux_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of two_bit_2to1_mux_util_vector_logic_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of two_bit_2to1_mux_util_vector_logic_0_1 : entity is "two_bit_2to1_mux_util_vector_logic_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of two_bit_2to1_mux_util_vector_logic_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of two_bit_2to1_mux_util_vector_logic_0_1 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2019.1";
end two_bit_2to1_mux_util_vector_logic_0_1;

architecture STRUCTURE of two_bit_2to1_mux_util_vector_logic_0_1 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
