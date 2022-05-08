// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jan 16 10:56:23 2022
// Host        : Helios running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cb4cled_design_CB4CLED_Top_0_0_stub.v
// Design      : cb4cled_design_CB4CLED_Top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "CB4CLED_Top,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, loadDat, load, ce, up, count, TC, ceo)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,loadDat[3:0],load,ce,up,count[3:0],TC,ceo" */;
  input clk;
  input rst;
  input [3:0]loadDat;
  input load;
  input ce;
  input up;
  output [3:0]count;
  output TC;
  output ceo;
endmodule
