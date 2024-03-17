// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Tue Mar 05 09:54:42 2024
// Host        : LAPTOP-CCOCB3FQ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Mini project
//               Vivado/2016/NMC/NMC.sim/sim_1/synth/func/NMC_tb_func_synth.v}
// Design      : NMC
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module NMC
   (clk,
    rst,
    rd,
    wr,
    din0,
    din1,
    din2,
    din3,
    din4,
    din5,
    din6,
    din7,
    addr,
    seg,
    an);
  input clk;
  input rst;
  input rd;
  input wr;
  input din0;
  input din1;
  input din2;
  input din3;
  input din4;
  input din5;
  input din6;
  input din7;
  input [2:0]addr;
  output [6:0]seg;
  output [3:0]an;

  wire [2:0]addr;
  wire [2:0]addr_IBUF;
  wire [3:0]an;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire din0;
  wire din0_IBUF;
  wire din1;
  wire din1_IBUF;
  wire din2;
  wire din2_IBUF;
  wire din3;
  wire din3_IBUF;
  wire din4;
  wire din4_IBUF;
  wire din5;
  wire din5_IBUF;
  wire din6;
  wire din6_IBUF;
  wire din7;
  wire din7_IBUF;
  wire rd;
  wire rd_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire wr;
  wire wr_IBUF;

  IBUF \addr_IBUF[0]_inst 
       (.I(addr[0]),
        .O(addr_IBUF[0]));
  IBUF \addr_IBUF[1]_inst 
       (.I(addr[1]),
        .O(addr_IBUF[1]));
  IBUF \addr_IBUF[2]_inst 
       (.I(addr[2]),
        .O(addr_IBUF[2]));
  OBUF \an_OBUF[0]_inst 
       (.I(1'b0),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF din0_IBUF_inst
       (.I(din0),
        .O(din0_IBUF));
  IBUF din1_IBUF_inst
       (.I(din1),
        .O(din1_IBUF));
  IBUF din2_IBUF_inst
       (.I(din2),
        .O(din2_IBUF));
  IBUF din3_IBUF_inst
       (.I(din3),
        .O(din3_IBUF));
  IBUF din4_IBUF_inst
       (.I(din4),
        .O(din4_IBUF));
  IBUF din5_IBUF_inst
       (.I(din5),
        .O(din5_IBUF));
  IBUF din6_IBUF_inst
       (.I(din6),
        .O(din6_IBUF));
  IBUF din7_IBUF_inst
       (.I(din7),
        .O(din7_IBUF));
  RAM1 r1
       (.addr(addr_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_1_in({din7_IBUF,din6_IBUF,din5_IBUF,din4_IBUF,din3_IBUF,din2_IBUF,din1_IBUF,din0_IBUF}),
        .rd_IBUF(rd_IBUF),
        .rst_IBUF(rst_IBUF),
        .seg_OBUF(seg_OBUF),
        .wr_IBUF(wr_IBUF));
  IBUF rd_IBUF_inst
       (.I(rd),
        .O(rd_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF wr_IBUF_inst
       (.I(wr),
        .O(wr_IBUF));
endmodule

module RAM1
   (seg_OBUF,
    rst_IBUF,
    rd_IBUF,
    clk_IBUF_BUFG,
    p_1_in,
    addr,
    wr_IBUF);
  output [6:0]seg_OBUF;
  input rst_IBUF;
  input rd_IBUF;
  input clk_IBUF_BUFG;
  input [7:0]p_1_in;
  input [2:0]addr;
  input wr_IBUF;

  wire [2:0]addr;
  wire block_reg_0_7_0_0_n_0;
  wire clk_IBUF_BUFG;
  wire [1:0]data;
  wire [2:2]data__0;
  wire dout0;
  wire [7:1]dout00;
  wire dout1;
  wire dout2;
  wire dout3;
  wire dout4;
  wire dout5;
  wire dout6;
  wire dout7;
  wire p_0_in;
  wire [7:0]p_1_in;
  wire rd_IBUF;
  wire rst_IBUF;
  wire [6:0]seg_OBUF;
  wire \seg_OBUF[6]_inst_i_10_n_0 ;
  wire \seg_OBUF[6]_inst_i_11_n_0 ;
  wire \seg_OBUF[6]_inst_i_12_n_0 ;
  wire \seg_OBUF[6]_inst_i_13_n_0 ;
  wire \seg_OBUF[6]_inst_i_14_n_0 ;
  wire \seg_OBUF[6]_inst_i_2_n_0 ;
  wire \seg_OBUF[6]_inst_i_6_n_0 ;
  wire \seg_OBUF[6]_inst_i_7_n_0 ;
  wire \seg_OBUF[6]_inst_i_8_n_0 ;
  wire \seg_OBUF[6]_inst_i_9_n_0 ;
  wire wr_IBUF;

  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_0_0
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[0]),
        .O(block_reg_0_7_0_0_n_0),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    block_reg_0_7_0_0_i_1
       (.I0(wr_IBUF),
        .I1(rst_IBUF),
        .O(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_1_1
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[1]),
        .O(dout00[1]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_2_2
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[2]),
        .O(dout00[2]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_3_3
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[3]),
        .O(dout00[3]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_4_4
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[4]),
        .O(dout00[4]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_5_5
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[5]),
        .O(dout00[5]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_6_6
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[6]),
        .O(dout00[6]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    block_reg_0_7_7_7
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .A4(1'b0),
        .D(p_1_in[7]),
        .O(dout00[7]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    dout0_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(block_reg_0_7_0_0_n_0),
        .Q(dout0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout1_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[1]),
        .Q(dout1),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout2_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[2]),
        .Q(dout2),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout3_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[3]),
        .Q(dout3),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout4_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[4]),
        .Q(dout4),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout5_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[5]),
        .Q(dout5),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout6_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[6]),
        .Q(dout6),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    dout7_reg
       (.C(clk_IBUF_BUFG),
        .CE(rd_IBUF),
        .D(dout00[7]),
        .Q(dout7),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h0000000000BFBF00)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data__0),
        .I4(data[0]),
        .I5(data[1]),
        .O(seg_OBUF[0]));
  LUT6 #(
    .INIT(64'h00BFBF0000000000)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data[0]),
        .I4(data[1]),
        .I5(data__0),
        .O(seg_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000000000BF0000)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data__0),
        .I4(data[1]),
        .I5(data[0]),
        .O(seg_OBUF[2]));
  LUT6 #(
    .INIT(64'hBF00000000BFBF00)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data[0]),
        .I4(data__0),
        .I5(data[1]),
        .O(seg_OBUF[3]));
  LUT6 #(
    .INIT(64'hBFBF0000BFFFBF00)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data__0),
        .I4(data[0]),
        .I5(data[1]),
        .O(seg_OBUF[4]));
  LUT6 #(
    .INIT(64'hBF00BFBF0000BF00)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data[0]),
        .I4(data__0),
        .I5(data[1]),
        .O(seg_OBUF[5]));
  LUT6 #(
    .INIT(64'hFF4040404040BFBF)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(dout4),
        .I1(dout6),
        .I2(\seg_OBUF[6]_inst_i_2_n_0 ),
        .I3(data[0]),
        .I4(data[1]),
        .I5(data__0),
        .O(seg_OBUF[6]));
  LUT4 #(
    .INIT(16'hDD4D)) 
    \seg_OBUF[6]_inst_i_10 
       (.I0(dout2),
        .I1(dout0),
        .I2(dout3),
        .I3(dout1),
        .O(\seg_OBUF[6]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0444000000000000)) 
    \seg_OBUF[6]_inst_i_11 
       (.I0(dout4),
        .I1(dout5),
        .I2(dout3),
        .I3(dout1),
        .I4(dout2),
        .I5(dout0),
        .O(\seg_OBUF[6]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8880800080008000)) 
    \seg_OBUF[6]_inst_i_12 
       (.I0(dout4),
        .I1(dout5),
        .I2(dout2),
        .I3(dout0),
        .I4(dout1),
        .I5(dout3),
        .O(\seg_OBUF[6]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h68B59D40)) 
    \seg_OBUF[6]_inst_i_13 
       (.I0(dout6),
        .I1(dout1),
        .I2(dout3),
        .I3(dout2),
        .I4(dout0),
        .O(\seg_OBUF[6]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h04FBFB04)) 
    \seg_OBUF[6]_inst_i_14 
       (.I0(dout4),
        .I1(dout3),
        .I2(dout1),
        .I3(dout0),
        .I4(dout2),
        .O(\seg_OBUF[6]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4200220202000200)) 
    \seg_OBUF[6]_inst_i_2 
       (.I0(dout7),
        .I1(dout5),
        .I2(dout0),
        .I3(dout2),
        .I4(dout1),
        .I5(dout3),
        .O(\seg_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_3 
       (.I0(\seg_OBUF[6]_inst_i_6_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(data[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \seg_OBUF[6]_inst_i_4 
       (.I0(\seg_OBUF[6]_inst_i_8_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_7_n_0 ),
        .O(data[1]));
  LUT6 #(
    .INIT(64'h1F100F0F1F100000)) 
    \seg_OBUF[6]_inst_i_5 
       (.I0(\seg_OBUF[6]_inst_i_9_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_10_n_0 ),
        .I2(dout7),
        .I3(\seg_OBUF[6]_inst_i_11_n_0 ),
        .I4(dout6),
        .I5(\seg_OBUF[6]_inst_i_12_n_0 ),
        .O(data__0));
  LUT4 #(
    .INIT(16'h4BB0)) 
    \seg_OBUF[6]_inst_i_6 
       (.I0(dout7),
        .I1(dout6),
        .I2(dout1),
        .I3(dout3),
        .O(\seg_OBUF[6]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8640)) 
    \seg_OBUF[6]_inst_i_7 
       (.I0(dout7),
        .I1(dout5),
        .I2(dout4),
        .I3(dout6),
        .O(\seg_OBUF[6]_inst_i_7_n_0 ));
  MUXF7 \seg_OBUF[6]_inst_i_8 
       (.I0(\seg_OBUF[6]_inst_i_13_n_0 ),
        .I1(\seg_OBUF[6]_inst_i_14_n_0 ),
        .O(\seg_OBUF[6]_inst_i_8_n_0 ),
        .S(dout7));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \seg_OBUF[6]_inst_i_9 
       (.I0(dout4),
        .I1(dout5),
        .O(\seg_OBUF[6]_inst_i_9_n_0 ));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
