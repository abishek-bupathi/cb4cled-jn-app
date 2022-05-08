// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Jan 16 10:56:23 2022
// Host        : Helios running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cb4cled_design_CB4CLED_Top_0_0_sim_netlist.v
// Design      : cb4cled_design_CB4CLED_Top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CB4CLED
   (TC,
    count,
    up,
    D,
    loadDat,
    \CS_reg[3]_0 ,
    load,
    CS,
    E,
    clk,
    rst);
  output TC;
  output [3:0]count;
  input up;
  input [0:0]D;
  input [2:0]loadDat;
  input \CS_reg[3]_0 ;
  input load;
  input CS;
  input [0:0]E;
  input clk;
  input rst;

  wire CS;
  wire \CS[3]_i_4_n_0 ;
  wire \CS_reg[3]_0 ;
  wire [0:0]D;
  wire [0:0]E;
  wire [3:1]NS;
  wire TC;
  wire clk;
  wire [3:0]count;
  wire load;
  wire [2:0]loadDat;
  wire rst;
  wire up;

  LUT6 #(
    .INIT(64'h08FBFB08FB0808FB)) 
    \CS[1]_i_1 
       (.I0(loadDat[0]),
        .I1(load),
        .I2(CS),
        .I3(count[0]),
        .I4(up),
        .I5(count[1]),
        .O(NS[1]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \CS[2]_i_1 
       (.I0(loadDat[1]),
        .I1(\CS_reg[3]_0 ),
        .I2(count[0]),
        .I3(up),
        .I4(count[2]),
        .I5(count[1]),
        .O(NS[2]));
  LUT6 #(
    .INIT(64'h8BBBB888BBB8888B)) 
    \CS[3]_i_2 
       (.I0(loadDat[2]),
        .I1(\CS_reg[3]_0 ),
        .I2(\CS[3]_i_4_n_0 ),
        .I3(count[1]),
        .I4(count[3]),
        .I5(count[2]),
        .O(NS[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \CS[3]_i_4 
       (.I0(count[1]),
        .I1(up),
        .I2(count[0]),
        .O(\CS[3]_i_4_n_0 ));
  FDCE \CS_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(D),
        .Q(count[0]));
  FDCE \CS_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(NS[1]),
        .Q(count[1]));
  FDCE \CS_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(NS[2]),
        .Q(count[2]));
  FDCE \CS_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(NS[3]),
        .Q(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    TC_INST_0
       (.I0(up),
        .I1(count[3]),
        .I2(count[2]),
        .I3(count[0]),
        .I4(count[1]),
        .O(TC));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CB4CLED_Top
   (count,
    ceo,
    TC,
    load,
    clk,
    rst,
    ce,
    up,
    loadDat);
  output [3:0]count;
  output ceo;
  output TC;
  input load;
  input clk;
  input rst;
  input ce;
  input up;
  input [3:0]loadDat;

  wire CS;
  wire CS_0;
  wire [0:0]NS;
  wire TC;
  wire ce;
  wire ceo;
  wire clk;
  wire [3:0]count;
  wire load;
  wire [3:0]loadDat;
  wire loadPulse_i_n_1;
  wire loadPulse_i_n_2;
  wire rst;
  wire up;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CB4CLED CB4CLED_i
       (.CS(CS_0),
        .\CS_reg[3]_0 (loadPulse_i_n_1),
        .D(NS),
        .E(loadPulse_i_n_2),
        .TC(TC),
        .clk(clk),
        .count(count),
        .load(load),
        .loadDat(loadDat[3:1]),
        .rst(rst),
        .up(up));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_singleShot cePulse_i
       (.CS(CS),
        .TC(TC),
        .ce(ce),
        .ceo(ceo),
        .clk(clk),
        .rst(rst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_singleShot_0 loadPulse_i
       (.CS(CS_0),
        .CS_0(CS),
        .D(NS),
        .E(loadPulse_i_n_2),
        .ce(ce),
        .clk(clk),
        .count(count[0]),
        .load(load),
        .loadDat(loadDat[0]),
        .load_0(loadPulse_i_n_1),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "cb4cled_design_CB4CLED_Top_0_0,CB4CLED_Top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CB4CLED_Top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst,
    loadDat,
    load,
    ce,
    up,
    count,
    TC,
    ceo);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [3:0]loadDat;
  input load;
  input ce;
  input up;
  output [3:0]count;
  output TC;
  output ceo;

  wire TC;
  wire ce;
  wire ceo;
  wire clk;
  wire [3:0]count;
  wire load;
  wire [3:0]loadDat;
  wire rst;
  wire up;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CB4CLED_Top U0
       (.TC(TC),
        .ce(ce),
        .ceo(ceo),
        .clk(clk),
        .count(count),
        .load(load),
        .loadDat(loadDat),
        .rst(rst),
        .up(up));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_singleShot
   (CS,
    ceo,
    ce,
    clk,
    rst,
    TC);
  output CS;
  output ceo;
  input ce;
  input clk;
  input rst;
  input TC;

  wire CS;
  wire TC;
  wire ce;
  wire ceo;
  wire clk;
  wire rst;

  FDCE CS_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ce),
        .Q(CS));
  LUT3 #(
    .INIT(8'h40)) 
    ceo_INST_0
       (.I0(CS),
        .I1(ce),
        .I2(TC),
        .O(ceo));
endmodule

(* ORIG_REF_NAME = "singleShot" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_singleShot_0
   (CS,
    load_0,
    E,
    D,
    load,
    clk,
    rst,
    CS_0,
    ce,
    loadDat,
    count);
  output CS;
  output load_0;
  output [0:0]E;
  output [0:0]D;
  input load;
  input clk;
  input rst;
  input CS_0;
  input ce;
  input [0:0]loadDat;
  input [0:0]count;

  wire CS;
  wire CS_0;
  wire [0:0]D;
  wire [0:0]E;
  wire ce;
  wire clk;
  wire [0:0]count;
  wire load;
  wire [0:0]loadDat;
  wire load_0;
  wire rst;

  LUT4 #(
    .INIT(16'h08FB)) 
    \CS[0]_i_1 
       (.I0(loadDat),
        .I1(load),
        .I2(CS),
        .I3(count),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \CS[3]_i_1 
       (.I0(CS),
        .I1(load),
        .I2(CS_0),
        .I3(ce),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \CS[3]_i_3 
       (.I0(load),
        .I1(CS),
        .O(load_0));
  FDCE CS_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(load),
        .Q(CS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
