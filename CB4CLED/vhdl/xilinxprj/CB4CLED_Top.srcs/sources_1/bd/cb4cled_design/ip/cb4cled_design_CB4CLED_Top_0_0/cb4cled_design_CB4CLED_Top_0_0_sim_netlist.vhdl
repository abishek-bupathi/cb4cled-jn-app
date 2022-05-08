-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sun Jan 16 10:56:24 2022
-- Host        : Helios running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/BE_Project/Project/Project_files/CB4CLED/CB4CLED_Top/CB4CLED_Top/vhdl/xilinxprj/CB4CLED_Top.srcs/sources_1/bd/cb4cled_design/ip/cb4cled_design_CB4CLED_Top_0_0/cb4cled_design_CB4CLED_Top_0_0_sim_netlist.vhdl
-- Design      : cb4cled_design_CB4CLED_Top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cb4cled_design_CB4CLED_Top_0_0_CB4CLED is
  port (
    TC : out STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    up : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    loadDat : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \CS_reg[3]_0\ : in STD_LOGIC;
    load : in STD_LOGIC;
    CS : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cb4cled_design_CB4CLED_Top_0_0_CB4CLED : entity is "CB4CLED";
end cb4cled_design_CB4CLED_Top_0_0_CB4CLED;

architecture STRUCTURE of cb4cled_design_CB4CLED_Top_0_0_CB4CLED is
  signal \CS[3]_i_4_n_0\ : STD_LOGIC;
  signal NS : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^count\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CS[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of TC_INST_0 : label is "soft_lutpair0";
begin
  count(3 downto 0) <= \^count\(3 downto 0);
\CS[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FBFB08FB0808FB"
    )
        port map (
      I0 => loadDat(0),
      I1 => load,
      I2 => CS,
      I3 => \^count\(0),
      I4 => up,
      I5 => \^count\(1),
      O => NS(1)
    );
\CS[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => loadDat(1),
      I1 => \CS_reg[3]_0\,
      I2 => \^count\(0),
      I3 => up,
      I4 => \^count\(2),
      I5 => \^count\(1),
      O => NS(2)
    );
\CS[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBB888BBB8888B"
    )
        port map (
      I0 => loadDat(2),
      I1 => \CS_reg[3]_0\,
      I2 => \CS[3]_i_4_n_0\,
      I3 => \^count\(1),
      I4 => \^count\(3),
      I5 => \^count\(2),
      O => NS(3)
    );
\CS[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \^count\(1),
      I1 => up,
      I2 => \^count\(0),
      O => \CS[3]_i_4_n_0\
    );
\CS_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => D(0),
      Q => \^count\(0)
    );
\CS_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => NS(1),
      Q => \^count\(1)
    );
\CS_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => NS(2),
      Q => \^count\(2)
    );
\CS_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => NS(3),
      Q => \^count\(3)
    );
TC_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000001"
    )
        port map (
      I0 => up,
      I1 => \^count\(3),
      I2 => \^count\(2),
      I3 => \^count\(0),
      I4 => \^count\(1),
      O => TC
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cb4cled_design_CB4CLED_Top_0_0_singleShot is
  port (
    CS : out STD_LOGIC;
    ceo : out STD_LOGIC;
    ce : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    TC : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cb4cled_design_CB4CLED_Top_0_0_singleShot : entity is "singleShot";
end cb4cled_design_CB4CLED_Top_0_0_singleShot;

architecture STRUCTURE of cb4cled_design_CB4CLED_Top_0_0_singleShot is
  signal \^cs\ : STD_LOGIC;
begin
  CS <= \^cs\;
CS_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => ce,
      Q => \^cs\
    );
ceo_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^cs\,
      I1 => ce,
      I2 => TC,
      O => ceo
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cb4cled_design_CB4CLED_Top_0_0_singleShot_0 is
  port (
    CS : out STD_LOGIC;
    load_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    load : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    CS_0 : in STD_LOGIC;
    ce : in STD_LOGIC;
    loadDat : in STD_LOGIC_VECTOR ( 0 to 0 );
    count : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cb4cled_design_CB4CLED_Top_0_0_singleShot_0 : entity is "singleShot";
end cb4cled_design_CB4CLED_Top_0_0_singleShot_0;

architecture STRUCTURE of cb4cled_design_CB4CLED_Top_0_0_singleShot_0 is
  signal \^cs\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CS[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \CS[3]_i_3\ : label is "soft_lutpair1";
begin
  CS <= \^cs\;
\CS[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => loadDat(0),
      I1 => load,
      I2 => \^cs\,
      I3 => count(0),
      O => D(0)
    );
\CS[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^cs\,
      I1 => load,
      I2 => CS_0,
      I3 => ce,
      O => E(0)
    );
\CS[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => load,
      I1 => \^cs\,
      O => load_0
    );
CS_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => load,
      Q => \^cs\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cb4cled_design_CB4CLED_Top_0_0_CB4CLED_Top is
  port (
    count : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ceo : out STD_LOGIC;
    TC : out STD_LOGIC;
    load : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ce : in STD_LOGIC;
    up : in STD_LOGIC;
    loadDat : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cb4cled_design_CB4CLED_Top_0_0_CB4CLED_Top : entity is "CB4CLED_Top";
end cb4cled_design_CB4CLED_Top_0_0_CB4CLED_Top;

architecture STRUCTURE of cb4cled_design_CB4CLED_Top_0_0_CB4CLED_Top is
  signal CS : STD_LOGIC;
  signal CS_0 : STD_LOGIC;
  signal NS : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^tc\ : STD_LOGIC;
  signal \^count\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal loadPulse_i_n_1 : STD_LOGIC;
  signal loadPulse_i_n_2 : STD_LOGIC;
begin
  TC <= \^tc\;
  count(3 downto 0) <= \^count\(3 downto 0);
CB4CLED_i: entity work.cb4cled_design_CB4CLED_Top_0_0_CB4CLED
     port map (
      CS => CS_0,
      \CS_reg[3]_0\ => loadPulse_i_n_1,
      D(0) => NS(0),
      E(0) => loadPulse_i_n_2,
      TC => \^tc\,
      clk => clk,
      count(3 downto 0) => \^count\(3 downto 0),
      load => load,
      loadDat(2 downto 0) => loadDat(3 downto 1),
      rst => rst,
      up => up
    );
cePulse_i: entity work.cb4cled_design_CB4CLED_Top_0_0_singleShot
     port map (
      CS => CS,
      TC => \^tc\,
      ce => ce,
      ceo => ceo,
      clk => clk,
      rst => rst
    );
loadPulse_i: entity work.cb4cled_design_CB4CLED_Top_0_0_singleShot_0
     port map (
      CS => CS_0,
      CS_0 => CS,
      D(0) => NS(0),
      E(0) => loadPulse_i_n_2,
      ce => ce,
      clk => clk,
      count(0) => \^count\(0),
      load => load,
      loadDat(0) => loadDat(0),
      load_0 => loadPulse_i_n_1,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cb4cled_design_CB4CLED_Top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cb4cled_design_CB4CLED_Top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cb4cled_design_CB4CLED_Top_0_0 : entity is "cb4cled_design_CB4CLED_Top_0_0,CB4CLED_Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cb4cled_design_CB4CLED_Top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of cb4cled_design_CB4CLED_Top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of cb4cled_design_CB4CLED_Top_0_0 : entity is "CB4CLED_Top,Vivado 2019.1";
end cb4cled_design_CB4CLED_Top_0_0;

architecture STRUCTURE of cb4cled_design_CB4CLED_Top_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.cb4cled_design_CB4CLED_Top_0_0_CB4CLED_Top
     port map (
      TC => TC,
      ce => ce,
      ceo => ceo,
      clk => clk,
      count(3 downto 0) => count(3 downto 0),
      load => load,
      loadDat(3 downto 0) => loadDat(3 downto 0),
      rst => rst,
      up => up
    );
end STRUCTURE;
