//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Tue Sep 24 11:49:30 2019
//Host        : micro14 running 64-bit Debian GNU/Linux 10 (buster)
//Command     : generate_target two_bit_2to1_mux.bd
//Design      : two_bit_2to1_mux
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "two_bit_2to1_mux,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=two_bit_2to1_mux,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "two_bit_2to1_mux.hwdef" *) 
module two_bit_2to1_mux
   (IN_1,
    IN_2,
    O,
    S);
  input [1:0]IN_1;
  input [1:0]IN_2;
  output [0:0]O;
  input [0:0]S;

  wire [1:0]Din_0_1;
  wire [1:0]Din_0_2;
  wire [0:0]S_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign Din_0_1 = IN_1[1:0];
  assign Din_0_2 = IN_2[1:0];
  assign O[0] = util_vector_logic_2_Res;
  assign S_1 = S[0];
  two_bit_2to1_mux_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(xlslice_0_Dout),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_0_Res));
  two_bit_2to1_mux_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(S_1),
        .Op2(xlslice_1_Dout),
        .Res(util_vector_logic_1_Res));
  two_bit_2to1_mux_util_vector_logic_0_4 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
  two_bit_2to1_mux_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(S_1),
        .Res(util_vector_logic_3_Res));
  two_bit_2to1_mux_xlslice_0_0 xlslice_0
       (.Din(Din_0_1),
        .Dout(xlslice_0_Dout));
  two_bit_2to1_mux_xlslice_0_1 xlslice_1
       (.Din(Din_0_2),
        .Dout(xlslice_1_Dout));
endmodule
