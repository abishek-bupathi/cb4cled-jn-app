-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jan 16 10:56:24 2022
-- Host        : Helios running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/BE_Project/Project/Project_files/CB4CLED/CB4CLED_Top/CB4CLED_Top/vhdl/xilinxprj/CB4CLED_Top.srcs/sources_1/bd/cb4cled_design/ip/cb4cled_design_CB4CLED_Top_0_0/cb4cled_design_CB4CLED_Top_0_0_stub.vhdl
-- Design      : cb4cled_design_CB4CLED_Top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cb4cled_design_CB4CLED_Top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    loadDat : in STD_LOGIC_VECTOR ( 3 downto 0 );
    load : in STD_LOGIC;
    ce : in STD_LOGIC;
    up : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TC : out STD_LOGIC;
    ceo : out STD_LOGIC
  );

end cb4cled_design_CB4CLED_Top_0_0;

architecture stub of cb4cled_design_CB4CLED_Top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,loadDat[3:0],load,ce,up,count[3:0],TC,ceo";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "CB4CLED_Top,Vivado 2019.1";
begin
end;
