////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: routed.v
// /___/   /\     Timestamp: Fri Apr 12 15:03:37 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -ofmt verilog -sim -tm fifo_generator_v9_1_exdes -pcf mapped.pcf -w -sdf_anno false routed.ncd routed.v 
// Device	: 5vlx110tff1136-1 (PRODUCTION 1.73 2012-04-23)
// Input file	: routed.ncd
// Output file	: routed.v
// # of Modules	: 1
// Design Name	: fifo_generator_v9_1_exdes
// Xilinx        : /opt/Xilinx/14.1/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fifo_generator_v9_1_exdes (
  CLK, RD_EN, ALMOST_FULL, RST, WR_ACK, EMPTY, WR_EN, OVERFLOW, VALID, FULL, DATA_COUNT, DOUT, DIN
);
  input CLK;
  input RD_EN;
  output ALMOST_FULL;
  input RST;
  output WR_ACK;
  output EMPTY;
  input WR_EN;
  output OVERFLOW;
  output VALID;
  output FULL;
  output [9 : 0] DATA_COUNT;
  output [7 : 0] DOUT;
  input [7 : 0] DIN;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0_0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1_0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0_0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ;
  wire clk_i;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[3] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[7] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[3] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[7] ;
  wire FULL_OBUF_891;
  wire WR_EN_IBUF_892;
  wire DOUT_0_OBUF_893;
  wire DOUT_1_OBUF_894;
  wire DOUT_2_OBUF_895;
  wire DOUT_3_OBUF_897;
  wire DOUT_4_OBUF_899;
  wire RD_EN_IBUF_901;
  wire DOUT_5_OBUF_902;
  wire DOUT_6_OBUF_904;
  wire DOUT_7_OBUF_906;
  wire OVERFLOW_OBUF_910;
  wire DATA_COUNT_0_OBUF_911;
  wire DATA_COUNT_1_OBUF_912;
  wire DATA_COUNT_2_OBUF_913;
  wire DATA_COUNT_3_OBUF_914;
  wire DATA_COUNT_4_OBUF_915;
  wire DATA_COUNT_5_OBUF_916;
  wire DATA_COUNT_6_OBUF_917;
  wire DATA_COUNT_7_OBUF_918;
  wire DATA_COUNT_8_OBUF_919;
  wire DATA_COUNT_9_OBUF_920;
  wire WR_ACK_OBUF_921;
  wire RST_IBUF_922;
  wire EMPTY_OBUF_923;
  wire VALID_OBUF_924;
  wire ALMOST_FULL_OBUF_926;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_931 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_932 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_933 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_939 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_940 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1_0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_943 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_944 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_946 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2_0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[3] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[7] ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_952 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>_rt_27 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<2>_rt_23 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>_rt_11 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<4>_rt_60 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<5>_rt_56 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<6>_rt_52 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<7>_rt_40 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<8>_rt_77 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<9>_rt_74 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>_rt_99 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<2>_rt_95 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>_rt_83 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<4>_rt_132 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<5>_rt_128 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<6>_rt_124 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<7>_rt_112 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<8>_rt_149 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<9>_rt_146 ;
  wire \WR_EN/IBUF ;
  wire \DIN(0)/IBUF ;
  wire \DIN(1)/IBUF ;
  wire \DIN(2)/IBUF ;
  wire \RD_EN/IBUF ;
  wire \DIN(3)/IBUF ;
  wire \DIN(4)/IBUF ;
  wire \DIN(5)/IBUF ;
  wire \DIN(6)/IBUF ;
  wire \DIN(7)/IBUF ;
  wire \RST/IBUF ;
  wire \CLK/IBUF ;
  wire DATA_COUNT_0_OBUF_rt_344;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i_or0000 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i_and0000 ;
  wire \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8/CLK ;
  wire \NlwBufferSignal_FULL_OBUF/I ;
  wire \NlwBufferSignal_DOUT_0_OBUF/I ;
  wire \NlwBufferSignal_DOUT_1_OBUF/I ;
  wire \NlwBufferSignal_DOUT_2_OBUF/I ;
  wire \NlwBufferSignal_DOUT_3_OBUF/I ;
  wire \NlwBufferSignal_DOUT_4_OBUF/I ;
  wire \NlwBufferSignal_DOUT_5_OBUF/I ;
  wire \NlwBufferSignal_DOUT_6_OBUF/I ;
  wire \NlwBufferSignal_DOUT_7_OBUF/I ;
  wire \NlwBufferSignal_OVERFLOW_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_0_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_1_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_2_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_3_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_4_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_5_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_6_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_7_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_8_OBUF/I ;
  wire \NlwBufferSignal_DATA_COUNT_9_OBUF/I ;
  wire \NlwBufferSignal_WR_ACK_OBUF/I ;
  wire \NlwBufferSignal_EMPTY_OBUF/I ;
  wire \NlwBufferSignal_VALID_OBUF/I ;
  wire \NlwBufferSignal_ALMOST_FULL_OBUF/I ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<9> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<10> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<11> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<12> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<13> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<4> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<5> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<6> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<7> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<8> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<9> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<10> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<11> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<12> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<13> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<4> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<5> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<6> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<7> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<8> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKA ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKB ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<0> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<1> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<10> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<11> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<2> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<3> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<8> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<9> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENA ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENB ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/SSRB ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<0> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<1> ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_8/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/WR_ACK/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/IN ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i/CLK ;
  wire \NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_d1/CLK ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_46.SLICEL_A5LUT_O_UNCONNECTED ;
  wire GND;
  wire \NLW_exdes_inst/N0_12.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp2.CYINITGND_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_13.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_14.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N1.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_8.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_9.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_10.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_11.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_7.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_32.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp5.CYINITGND_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_33.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_34.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N1_4.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_28.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_29.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_30.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_31.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_27.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[10]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[11]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[12]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[13]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[14]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[15]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[4]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[5]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[6]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[7]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[8]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[9]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[12]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[13]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[14]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[15]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[4]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[5]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[6]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[7]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPB[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPB[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_22.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_18.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp28.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_19.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_20.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_21.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_17.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_40.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp31.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_39.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_38.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_37.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_41.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_23.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp32.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_24.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_25.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_26.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_45.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp33.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_44.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_43.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_42.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_50.SLICEL_D5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<4>/ProtoComp28.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_49.SLICEL_C5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_48.SLICEL_B5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_47.SLICEL_A5LUT_O_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[0]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[1]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[2]_UNCONNECTED ;
  wire \NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[3]_UNCONNECTED ;
  wire \NLW_exdes_inst/N0_51.SLICEL_A5LUT_O_UNCONNECTED ;
  wire VCC;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 ;
  wire [3 : 3] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 ;
  wire [3 : 3] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet ;
  wire [3 : 3] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count ;
  wire [1 : 1] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg ;
  wire [3 : 3] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/carrynet ;
  wire [3 : 3] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet ;
  wire [4 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 ;
  wire [0 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result ;
  wire [0 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result ;
  wire [9 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut ;
  wire [9 : 0] \exdes_inst/Result ;
  wire [4 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 ;
  wire [4 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 ;
  wire [4 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 ;
  wire [4 : 0] \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 ;
  X_BUF 
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1/exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1_AMUX_Delay  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X19Y64" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [3]),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1 }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_O[0]_UNCONNECTED }),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[4].gms.ms_S[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y64" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_4_and00001  (
    .ADR0(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_46.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_46.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [3]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>_rt_11 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_12.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_12.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X18Y62" ))
  \ProtoComp2.CYINITGND  (
    .O(\NLW_ProtoComp2.CYINITGND_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [2]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y62" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[3] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [0]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<3>_rt_11 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<2>_rt_23 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>_rt_27 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<2>_rt_23 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_13.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_13.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [1]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<1>_rt_27 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_14.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_14.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [0]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y62" ),
    .INIT ( 32'hFFFFFFFF ))
  \exdes_inst/N1.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N1.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [7]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<7>_rt_40 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_8.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_8.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [6]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[3] ),
    .CYINIT(1'b0),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[7] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [7], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [6], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [5], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [4]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<7>_rt_40 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<6>_rt_52 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<5>_rt_56 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<4>_rt_60 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<6>_rt_52 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_9.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_9.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [5]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<5>_rt_56 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_10.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_10.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [4]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<4>_rt_60 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_11.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_11.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X18Y64" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_CO[0]_UNCONNECTED }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_O[2]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [9], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [8]}),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Mcount_count_xor<9>_S[2]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<9>_rt_74 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<8>_rt_77 })
  );
  X_FF #(
    .LOC ( "SLICE_X18Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [9]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<9>_rt_74 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/Result [8]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count<8>_rt_77 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_7.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_7.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [3]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>_rt_83 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_32.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_32.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X20Y63" ))
  \ProtoComp5.CYINITGND  (
    .O(\NLW_ProtoComp5.CYINITGND_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [2]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[3] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b1}),
    .O({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [0]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<3>_rt_83 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<2>_rt_95 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>_rt_99 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<2>_rt_95 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_33.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_33.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [1]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<1>_rt_99 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_34.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_34.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [0]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut<0>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y63" ),
    .INIT ( 32'hFFFFFFFF ))
  \exdes_inst/N1_4.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N1_4.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [7]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<7>_rt_112 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_28.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_28.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [6]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y64" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[3] ),
    .CYINIT(1'b0),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[7] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [7], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [6], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [5], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [4]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<7>_rt_112 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<6>_rt_124 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<5>_rt_128 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<4>_rt_132 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<6>_rt_124 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_29.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_29.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [5]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<5>_rt_128 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_30.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_30.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [4]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<4>_rt_132 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_31.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_31.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X20Y65" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_CO[0]_UNCONNECTED }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_O[2]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [9], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [8]}),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Mcount_count_xor<9>_S[2]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<9>_rt_146 , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<8>_rt_149 })
  );
  X_FF #(
    .LOC ( "SLICE_X20Y65" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [9]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y65" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<9>_rt_146 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y65" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/Result [8]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y65" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count<8>_rt_149 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y65" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_27.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_27.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y118" ))
  \FULL/PAD  (
    .PAD(FULL)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y118" ))
  FULL_OBUF (
    .I(\NlwBufferSignal_FULL_OBUF/I ),
    .O(FULL)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y112" ))
  \WR_EN/PAD  (
    .PAD(WR_EN)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y112" ))
  \WR_EN/IMUX  (
    .I(\WR_EN/IBUF ),
    .O(WR_EN_IBUF_892)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y112" ))
  WR_EN_IBUF (
    .I(WR_EN),
    .O(\WR_EN/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y126" ))
  \DOUT(0)/PAD  (
    .PAD(DOUT[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y126" ))
  DOUT_0_OBUF (
    .I(\NlwBufferSignal_DOUT_0_OBUF/I ),
    .O(DOUT[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y124" ))
  \DOUT(1)/PAD  (
    .PAD(DOUT[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y124" ))
  DOUT_1_OBUF (
    .I(\NlwBufferSignal_DOUT_1_OBUF/I ),
    .O(DOUT[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y123" ))
  \DOUT(2)/PAD  (
    .PAD(DOUT[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y123" ))
  DOUT_2_OBUF (
    .I(\NlwBufferSignal_DOUT_2_OBUF/I ),
    .O(DOUT[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y119" ))
  \DIN(0)/PAD  (
    .PAD(DIN[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y119" ))
  DIN_0_IBUF (
    .I(DIN[0]),
    .O(\DIN(0)/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y137" ))
  \DOUT(3)/PAD  (
    .PAD(DOUT[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y137" ))
  DOUT_3_OBUF (
    .I(\NlwBufferSignal_DOUT_3_OBUF/I ),
    .O(DOUT[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y122" ))
  \DIN(1)/PAD  (
    .PAD(DIN[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y122" ))
  DIN_1_IBUF (
    .I(DIN[1]),
    .O(\DIN(1)/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y133" ))
  \DOUT(4)/PAD  (
    .PAD(DOUT[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y133" ))
  DOUT_4_OBUF (
    .I(\NlwBufferSignal_DOUT_4_OBUF/I ),
    .O(DOUT[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y120" ))
  \DIN(2)/PAD  (
    .PAD(DIN[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y120" ))
  DIN_2_IBUF (
    .I(DIN[2]),
    .O(\DIN(2)/IBUF )
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y122" ))
  \RD_EN/PAD  (
    .PAD(RD_EN)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y122" ))
  \RD_EN/IMUX  (
    .I(\RD_EN/IBUF ),
    .O(RD_EN_IBUF_901)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y122" ))
  RD_EN_IBUF (
    .I(RD_EN),
    .O(\RD_EN/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y108" ))
  \DOUT(5)/PAD  (
    .PAD(DOUT[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y108" ))
  DOUT_5_OBUF (
    .I(\NlwBufferSignal_DOUT_5_OBUF/I ),
    .O(DOUT[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y121" ))
  \DIN(3)/PAD  (
    .PAD(DIN[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y121" ))
  DIN_3_IBUF (
    .I(DIN[3]),
    .O(\DIN(3)/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y110" ))
  \DOUT(6)/PAD  (
    .PAD(DOUT[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y110" ))
  DOUT_6_OBUF (
    .I(\NlwBufferSignal_DOUT_6_OBUF/I ),
    .O(DOUT[6])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y127" ))
  \DIN(4)/PAD  (
    .PAD(DIN[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y127" ))
  DIN_4_IBUF (
    .I(DIN[4]),
    .O(\DIN(4)/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y113" ))
  \DOUT(7)/PAD  (
    .PAD(DOUT[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y113" ))
  DOUT_7_OBUF (
    .I(\NlwBufferSignal_DOUT_7_OBUF/I ),
    .O(DOUT[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y125" ))
  \DIN(5)/PAD  (
    .PAD(DIN[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y125" ))
  DIN_5_IBUF (
    .I(DIN[5]),
    .O(\DIN(5)/IBUF )
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y129" ))
  \DIN(6)/PAD  (
    .PAD(DIN[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y129" ))
  DIN_6_IBUF (
    .I(DIN[6]),
    .O(\DIN(6)/IBUF )
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y130" ))
  \DIN(7)/PAD  (
    .PAD(DIN[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y130" ))
  DIN_7_IBUF (
    .I(DIN[7]),
    .O(\DIN(7)/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y117" ))
  \OVERFLOW/PAD  (
    .PAD(OVERFLOW)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y117" ))
  OVERFLOW_OBUF (
    .I(\NlwBufferSignal_OVERFLOW_OBUF/I ),
    .O(OVERFLOW)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y109" ))
  \DATA_COUNT(0)/PAD  (
    .PAD(DATA_COUNT[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y109" ))
  DATA_COUNT_0_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_0_OBUF/I ),
    .O(DATA_COUNT[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y108" ))
  \DATA_COUNT(1)/PAD  (
    .PAD(DATA_COUNT[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y108" ))
  DATA_COUNT_1_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_1_OBUF/I ),
    .O(DATA_COUNT[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y107" ))
  \DATA_COUNT(2)/PAD  (
    .PAD(DATA_COUNT[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y107" ))
  DATA_COUNT_2_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_2_OBUF/I ),
    .O(DATA_COUNT[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y106" ))
  \DATA_COUNT(3)/PAD  (
    .PAD(DATA_COUNT[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y106" ))
  DATA_COUNT_3_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_3_OBUF/I ),
    .O(DATA_COUNT[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y105" ))
  \DATA_COUNT(4)/PAD  (
    .PAD(DATA_COUNT[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y105" ))
  DATA_COUNT_4_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_4_OBUF/I ),
    .O(DATA_COUNT[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y104" ))
  \DATA_COUNT(5)/PAD  (
    .PAD(DATA_COUNT[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y104" ))
  DATA_COUNT_5_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_5_OBUF/I ),
    .O(DATA_COUNT[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y110" ))
  \DATA_COUNT(6)/PAD  (
    .PAD(DATA_COUNT[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y110" ))
  DATA_COUNT_6_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_6_OBUF/I ),
    .O(DATA_COUNT[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y111" ))
  \DATA_COUNT(7)/PAD  (
    .PAD(DATA_COUNT[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y111" ))
  DATA_COUNT_7_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_7_OBUF/I ),
    .O(DATA_COUNT[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y113" ))
  \DATA_COUNT(8)/PAD  (
    .PAD(DATA_COUNT[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y113" ))
  DATA_COUNT_8_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_8_OBUF/I ),
    .O(DATA_COUNT[8])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y116" ))
  \DATA_COUNT(9)/PAD  (
    .PAD(DATA_COUNT[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y116" ))
  DATA_COUNT_9_OBUF (
    .I(\NlwBufferSignal_DATA_COUNT_9_OBUF/I ),
    .O(DATA_COUNT[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y121" ))
  \WR_ACK/PAD  (
    .PAD(WR_ACK)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y121" ))
  WR_ACK_OBUF (
    .I(\NlwBufferSignal_WR_ACK_OBUF/I ),
    .O(WR_ACK)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y120" ))
  \RST/PAD  (
    .PAD(RST)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y120" ))
  \RST/IMUX  (
    .I(\RST/IBUF ),
    .O(RST_IBUF_922)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y120" ))
  RST_IBUF (
    .I(RST),
    .O(\RST/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y115" ))
  \EMPTY/PAD  (
    .PAD(EMPTY)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y115" ))
  EMPTY_OBUF (
    .I(\NlwBufferSignal_EMPTY_OBUF/I ),
    .O(EMPTY)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y114" ))
  \VALID/PAD  (
    .PAD(VALID)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y114" ))
  VALID_OBUF (
    .I(\NlwBufferSignal_VALID_OBUF/I ),
    .O(VALID)
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y119" ))
  \CLK/PAD  (
    .PAD(CLK)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y119" ))
  CLK_IBUFG (
    .I(CLK),
    .O(\CLK/IBUF )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y125" ))
  \ALMOST_FULL/PAD  (
    .PAD(ALMOST_FULL)
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y125" ))
  ALMOST_FULL_OBUF (
    .I(\NlwBufferSignal_ALMOST_FULL_OBUF/I ),
    .O(ALMOST_FULL)
  );
  X_RAMB18 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .LOC ( "RAMB36_X0Y12" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP  (
    .CLKA
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKA )
,
    .CLKB
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKB )
,
    .ENA
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENA )
,
    .ENB
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENB )
,
    .REGCEA(1'b0),
    .REGCEB(1'b0),
    .SSRA(1'b0),
    .SSRB
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/SSRB )
,
    .ADDRA({
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<13> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<12> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<11> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<10> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<9> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<8> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<7> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<6> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<5> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<4> 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[3]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[2]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[1]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRA[0]_UNCONNECTED 
}),
    .ADDRB({
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<13> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<12> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<11> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<10> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<9> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<8> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<7> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<6> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<5> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<4> 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[3]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[2]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[1]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_ADDRB[0]_UNCONNECTED 
}),
    .DIA({1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<11> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<10> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<9> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<8> 
, 1'b0, 1'b0, 1'b0, 1'b0, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<3> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<2> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<1> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<0> 
}),
    .DIB({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
    .DIPA({1'b0, 1'b0}),
    .DIPB({1'b0, 1'b0}),
    .DOA({
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[15]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[14]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[13]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[12]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[11]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[10]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[9]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[8]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[7]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[6]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[5]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[4]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[3]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[2]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[1]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOA[0]_UNCONNECTED 
}),
    .DOB({
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[15]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[14]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[13]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[12]_UNCONNECTED 
, DOUT_7_OBUF_906, DOUT_6_OBUF_904, DOUT_5_OBUF_902, DOUT_4_OBUF_899, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[7]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[6]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[5]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOB[4]_UNCONNECTED 
, DOUT_3_OBUF_897, DOUT_2_OBUF_895, DOUT_1_OBUF_894, DOUT_0_OBUF_893}),
    .DOPA({
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA[1]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPA[0]_UNCONNECTED 
}),
    .DOPB({
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPB[1]_UNCONNECTED 
, 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP_DOPB[0]_UNCONNECTED 
}),
    .WEA({
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<1> 
, 
\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<0> 
}),
    .WEB({1'b0, 1'b0})
  );
  X_FF #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_3/CLK ),
    .I(\exdes_inst/Result [3]),
    .O(DATA_COUNT_3_OBUF_914),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 64'hFF00FF0033CC33CC ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<3>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_3_OBUF_914),
    .ADR1(RD_EN_IBUF_901),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [3])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_2/CLK ),
    .I(\exdes_inst/Result [2]),
    .O(DATA_COUNT_2_OBUF_913),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X44Y54" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>  (
    .CI(1'b0),
    .CYINIT(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[3] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<3>_CO[0]_UNCONNECTED }),
    .DI({DATA_COUNT_3_OBUF_914, DATA_COUNT_2_OBUF_913, DATA_COUNT_1_OBUF_912, DATA_COUNT_0_OBUF_rt_344}),
    .O({\exdes_inst/Result [3], \exdes_inst/Result [2], \exdes_inst/Result [1], \exdes_inst/Result [0]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 64'hFF00FF0033CC33CC ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<2>  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_2_OBUF_913),
    .ADR1(RD_EN_IBUF_901),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_1/CLK ),
    .I(\exdes_inst/Result [1]),
    .O(DATA_COUNT_1_OBUF_912),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 64'hBB44BB44BB44BB44 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<1>  (
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_1_OBUF_912),
    .ADR1(RD_EN_IBUF_901),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_0/CLK ),
    .I(\exdes_inst/Result [0]),
    .O(DATA_COUNT_0_OBUF_911),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 64'h44BB44BB44BB44BB ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<0>  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(RD_EN_IBUF_901),
    .ADR3(DATA_COUNT_0_OBUF_911),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y54" ),
    .INIT ( 32'hFF00FF00 ))
  DATA_COUNT_0_OBUF_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_0_OBUF_911),
    .ADR4(1'b1),
    .O(DATA_COUNT_0_OBUF_rt_344)
  );
  X_FF #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_7/CLK ),
    .I(\exdes_inst/Result [7]),
    .O(DATA_COUNT_7_OBUF_918),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 64'hFF00FF0000FFFF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_7_OBUF_918),
    .ADR4(RD_EN_IBUF_901),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_6/CLK ),
    .I(\exdes_inst/Result [6]),
    .O(DATA_COUNT_6_OBUF_917),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X44Y55" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[3] ),
    .CYINIT(1'b0),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[7] , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy<7>_CO[0]_UNCONNECTED }),
    .DI({DATA_COUNT_7_OBUF_918, DATA_COUNT_6_OBUF_917, DATA_COUNT_5_OBUF_916, DATA_COUNT_4_OBUF_915}),
    .O({\exdes_inst/Result [7], \exdes_inst/Result [6], \exdes_inst/Result [5], \exdes_inst/Result [4]}),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [7], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [6], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [5], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 64'hFF00FF0000FFFF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_6_OBUF_917),
    .ADR4(RD_EN_IBUF_901),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_5/CLK ),
    .I(\exdes_inst/Result [5]),
    .O(DATA_COUNT_5_OBUF_916),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 64'hAF50AF50AF50AF50 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<5>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(DATA_COUNT_5_OBUF_916),
    .ADR2(RD_EN_IBUF_901),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_4/CLK ),
    .I(\exdes_inst/Result [4]),
    .O(DATA_COUNT_4_OBUF_915),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y55" ),
    .INIT ( 64'hAF50AF50AF50AF50 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<4>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(DATA_COUNT_4_OBUF_915),
    .ADR2(RD_EN_IBUF_901),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [4])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X44Y56" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_CO[0]_UNCONNECTED }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_DI[1]_UNCONNECTED , 
DATA_COUNT_8_OBUF_919}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_O[2]_UNCONNECTED , 
\exdes_inst/Result [9], \exdes_inst/Result [8]}),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_xor<9>_S[2]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [9], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [8]})
  );
  X_FF #(
    .LOC ( "SLICE_X44Y56" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_9/CLK ),
    .I(\exdes_inst/Result [9]),
    .O(DATA_COUNT_9_OBUF_920),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y56" ),
    .INIT ( 64'hAA55FF00AA55FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<9>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_9_OBUF_920),
    .ADR4(RD_EN_IBUF_901),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [9])
  );
  X_FF #(
    .LOC ( "SLICE_X44Y56" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_8/CLK ),
    .I(\exdes_inst/Result [8]),
    .O(DATA_COUNT_8_OBUF_919),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y56" ),
    .INIT ( 64'hAA55FF00AA55FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut<8>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(DATA_COUNT_8_OBUF_919),
    .ADR4(RD_EN_IBUF_901),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/Mcount_count_lut [8])
  );
  X_BUF 
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1/exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1_AMUX_Delay  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X17Y65" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [3]),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1 }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_O[0]_UNCONNECTED }),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[4].gms.ms_S[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y65" ),
    .INIT ( 64'hA00A5005A00A5005 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_4_and00001  (
    .ADR1(1'b1),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [9]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [8]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y65" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_22.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_22.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y61" ),
    .INIT ( 64'hFFFF3333FFFF0000 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(RD_EN_IBUF_901),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_3_and00001  (
    .ADR0(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [7]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [6]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_18.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_18.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X16Y62" ))
  \ProtoComp28.CYINITVCC  (
    .O(\NLW_ProtoComp28.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y62" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [3], 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[3].gms.ms_O[0]_UNCONNECTED }),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 64'h8282414182824141 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_2_and00001  (
    .ADR3(1'b1),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [5]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [4]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_19.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_19.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 64'h8282414182824141 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_1_and00001  (
    .ADR3(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [3]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [2]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_20.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_20.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 64'h9900009999000099 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_0_and00001  (
    .ADR2(1'b1),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [1]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [0]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_21.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_21.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<7>/exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1<7>_AMUX_Delay  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/carrynet [3]),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0 }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_O[0]_UNCONNECTED }),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/gmux.gm[4].gms.ms_S[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [4]})
  );
  X_FF #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1_4_and00001  (
    .ADR1(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [9]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [8]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c1/v1 [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_17.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_17.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [8]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_3/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [3]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_3_and00001  (
    .ADR0(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [7]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [6]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_40.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_40.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y62" ))
  \ProtoComp31.CYINITVCC  (
    .O(\NLW_ProtoComp31.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [2]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X17Y62" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [3], 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[3].gms.ms_O[0]_UNCONNECTED }),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 64'h8282414182824141 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_2_and00001  (
    .ADR3(1'b1),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [5]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [4]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_39.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_39.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [1]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 64'h8484212184842121 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_1_and00001  (
    .ADR3(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [3]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [2]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_38.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_38.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [0]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 64'hC0300C03C0300C03 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_0_and00001  (
    .ADR0(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [1]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [0]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y62" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_37.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_37.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2<7>/exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2<7>_AMUX_Delay  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_7/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [7]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [6]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X17Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/carrynet [3]),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0 }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_O[0]_UNCONNECTED }),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/gmux.gm[4].gms.ms_S[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [4]})
  );
  X_FF #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [5]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [4]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1_4_and00001  (
    .ADR1(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [9]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [8]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c0/v1 [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_41.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_41.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_9/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [9]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_3_and00001  (
    .ADR1(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [7]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [7]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [6]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_23.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_23.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X17Y64" ))
  \ProtoComp32.CYINITVCC  (
    .O(\NLW_ProtoComp32.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [8]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X17Y64" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/carrynet [3], 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/gmux.gm[3].gms.ms_O[0]_UNCONNECTED }),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_2_and00001  (
    .ADR0(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [5]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [4]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [4]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_24.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_24.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 64'hA00A5005A00A5005 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_1_and00001  (
    .ADR1(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [3]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [3]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [2]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_25.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_25.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 64'h8241824182418241 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1_0_and00001  (
    .ADR4(1'b1),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [1]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [0]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [0]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/c2/v1 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_26.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_26.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_3_and00001  (
    .ADR1(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_45.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_45.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X19Y63" ))
  \ProtoComp33.CYINITVCC  (
    .O(\NLW_ProtoComp33.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X19Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/carrynet [3], 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/gmux.gm[3].gms.ms_O[0]_UNCONNECTED }),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 64'h8484212184842121 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_2_and00001  (
    .ADR3(1'b1),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_44.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_44.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 64'h9090090990900909 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_1_and00001  (
    .ADR3(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [2]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_43.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_43.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [3]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 64'h9009900990099009 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1_0_and00001  (
    .ADR4(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/c1/v1 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_42.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_42.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 64'hC30000C3C30000C3 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1_3_and00001  (
    .ADR0(1'b1),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_50.SLICEL_D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_50.SLICEL_D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X21Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<4>/ProtoComp28.CYINITVCC  (
    .O(\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<4>/ProtoComp28.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [7]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [7]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X21Y63" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/carrynet [3], 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[3].gms.ms_O[0]_UNCONNECTED }),
    .S({\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [3], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [2], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [1], 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 64'h9900009999000099 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1_2_and00001  (
    .ADR2(1'b1),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_49.SLICEL_C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_49.SLICEL_C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [5]),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 64'h8421842184218421 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1_1_and00001  (
    .ADR4(1'b1),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [2]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_48.SLICEL_B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_48.SLICEL_B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 64'hA00A5005A00A5005 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1_0_and00001  (
    .ADR1(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y63" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_47.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_47.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<8>/exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1<8>_AMUX_Delay  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_FF #(
    .LOC ( "SLICE_X21Y64" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [9]),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X21Y64" ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms  (
    .CI(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/carrynet [3]),
    .CYINIT(1'b0),
    .CO({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_CO[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2 }),
    .DI({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_DI[1]_UNCONNECTED , 1'b0}),
    .O({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[1]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_O[0]_UNCONNECTED }),
    .S({\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[3]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[2]_UNCONNECTED , 
\NLW_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/gmux.gm[4].gms.ms_S[1]_UNCONNECTED , 
\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y64" ),
    .INIT ( 64'hA0500A05A0500A05 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1_4_and00001  (
    .ADR1(1'b1),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .ADR5(1'b1),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/gaf.c2/v1 [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y64" ),
    .INIT ( 32'h00000000 ))
  \exdes_inst/N0_51.SLICEL_A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_exdes_inst/N0_51.SLICEL_A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y61" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] ),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y61" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y60" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_933 ),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_932 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_comb )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y58" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X28Y60" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_931 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2_933 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X28Y60" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_931 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X28Y61" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i_or0000 ),
    .O(ALMOST_FULL_OBUF_926),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y61" ),
    .INIT ( 64'h44005500D5C0D5C0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i_or00001  (
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_943 ),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .ADR3(ALMOST_FULL_OBUF_926),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp2_0 ),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1_0 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i_or0000 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y61" ),
    .INIT ( 64'h0F0F00000F0F0000 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/ram_rd_en_i1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(RD_EN_IBUF_901),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X28Y62" ),
    .INIT ( 64'h00FF000000FF0000 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_946 ),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_940 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X29Y61" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_939 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2_946 ),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y61" ),
    .INIT ( 64'hEE0CCC0CEEEECCCC ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or00001  (
    .ADR0(RD_EN_IBUF_901),
    .ADR5(WR_EN_IBUF_892),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp1_0 ),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/comp0_0 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X29Y61" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_939 ),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X29Y61" ),
    .INIT ( 64'h0500050055CC5500 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb1  (
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .ADR0(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_943 ),
    .ADR5(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/ram_rd_en ),
    .ADR1(WR_EN_IBUF_892),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp1_0 ),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/comp0_0 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb )
  );
  X_FF #(
    .LOC ( "SLICE_X29Y62" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1]),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_comb )
  );
  X_FF #(
    .LOC ( "SLICE_X30Y60" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/WR_ACK  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/WR_ACK/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .O(WR_ACK_OBUF_921),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X30Y60" ),
    .INIT ( 64'h0000FFFF00000000 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(WR_EN_IBUF_892),
    .ADR4(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X31Y60" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1_931 ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_932 ),
    .RST(GND),
    .SET(RST_IBUF_922)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X31Y61" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg  (
    .CE(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1_939 ),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_940 ),
    .RST(GND),
    .SET(RST_IBUF_922)
  );
  X_FF #(
    .LOC ( "SLICE_X32Y60" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN_943 ),
    .SET(GND),
    .RST(RST_IBUF_922)
  );
  X_FF #(
    .LOC ( "SLICE_X33Y60" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 )
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X37Y59" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/IN ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_944 ),
    .RST(GND),
    .SET(RST_IBUF_922)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X37Y59" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_952 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 ),
    .RST(GND),
    .SET(RST_IBUF_922)
  );
  X_FF #(
    .MSGON ( "TRUE" ),
    .LOC ( "SLICE_X37Y59" ),
    .XON ( "FALSE" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1/CLK ),
    .I(1'b0),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1_952 ),
    .RST(GND),
    .SET(RST_IBUF_922)
  );
  X_FF #(
    .LOC ( "SLICE_X38Y58" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/IN ),
    .O(EMPTY_OBUF_923),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_FF #(
    .LOC ( "SLICE_X39Y59" ),
    .INIT ( 1'b1 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/CLK ),
    .I(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/IN ),
    .O(FULL_OBUF_891),
    .RST(GND),
    .SET(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y56" ),
    .INIT ( 64'h339900AA339900AA ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/Mxor_cntr_en_Result1  (
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(RD_EN_IBUF_901),
    .ADR0(WR_EN_IBUF_892),
    .ADR3(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .ADR1(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_934 ),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/cntr_en )
  );
  X_FF #(
    .LOC ( "SLICE_X43Y58" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i_and0000 ),
    .O(OVERFLOW_OBUF_910),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y58" ),
    .INIT ( 64'hA0A0A0A0A0A0A0A0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i_and00001  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i_930 ),
    .ADR0(WR_EN_IBUF_892),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X46Y57" ),
    .INIT ( 1'b0 ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_d1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_d1/CLK ),
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i ),
    .O(VALID_OBUF_924),
    .SET(GND),
    .RST(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[2] )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X46Y57" ),
    .INIT ( 64'h00000000CCCCCCCC ))
  \exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(EMPTY_OBUF_923),
    .ADR1(RD_EN_IBUF_901),
    .O(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_i )
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clk_buf/BUF  (
    .I(\CLK/IBUF ),
    .O(clk_i)
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_8/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_8/CLK )
  );
  X_BUF   \NlwBufferBlock_FULL_OBUF/I  (
    .I(FULL_OBUF_891),
    .O(\NlwBufferSignal_FULL_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_0_OBUF/I  (
    .I(DOUT_0_OBUF_893),
    .O(\NlwBufferSignal_DOUT_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_1_OBUF/I  (
    .I(DOUT_1_OBUF_894),
    .O(\NlwBufferSignal_DOUT_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_2_OBUF/I  (
    .I(DOUT_2_OBUF_895),
    .O(\NlwBufferSignal_DOUT_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_3_OBUF/I  (
    .I(DOUT_3_OBUF_897),
    .O(\NlwBufferSignal_DOUT_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_4_OBUF/I  (
    .I(DOUT_4_OBUF_899),
    .O(\NlwBufferSignal_DOUT_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_5_OBUF/I  (
    .I(DOUT_5_OBUF_902),
    .O(\NlwBufferSignal_DOUT_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_6_OBUF/I  (
    .I(DOUT_6_OBUF_904),
    .O(\NlwBufferSignal_DOUT_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DOUT_7_OBUF/I  (
    .I(DOUT_7_OBUF_906),
    .O(\NlwBufferSignal_DOUT_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_OVERFLOW_OBUF/I  (
    .I(OVERFLOW_OBUF_910),
    .O(\NlwBufferSignal_OVERFLOW_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_0_OBUF/I  (
    .I(DATA_COUNT_0_OBUF_911),
    .O(\NlwBufferSignal_DATA_COUNT_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_1_OBUF/I  (
    .I(DATA_COUNT_1_OBUF_912),
    .O(\NlwBufferSignal_DATA_COUNT_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_2_OBUF/I  (
    .I(DATA_COUNT_2_OBUF_913),
    .O(\NlwBufferSignal_DATA_COUNT_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_3_OBUF/I  (
    .I(DATA_COUNT_3_OBUF_914),
    .O(\NlwBufferSignal_DATA_COUNT_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_4_OBUF/I  (
    .I(DATA_COUNT_4_OBUF_915),
    .O(\NlwBufferSignal_DATA_COUNT_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_5_OBUF/I  (
    .I(DATA_COUNT_5_OBUF_916),
    .O(\NlwBufferSignal_DATA_COUNT_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_6_OBUF/I  (
    .I(DATA_COUNT_6_OBUF_917),
    .O(\NlwBufferSignal_DATA_COUNT_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_7_OBUF/I  (
    .I(DATA_COUNT_7_OBUF_918),
    .O(\NlwBufferSignal_DATA_COUNT_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_8_OBUF/I  (
    .I(DATA_COUNT_8_OBUF_919),
    .O(\NlwBufferSignal_DATA_COUNT_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_DATA_COUNT_9_OBUF/I  (
    .I(DATA_COUNT_9_OBUF_920),
    .O(\NlwBufferSignal_DATA_COUNT_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_WR_ACK_OBUF/I  (
    .I(WR_ACK_OBUF_921),
    .O(\NlwBufferSignal_WR_ACK_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_EMPTY_OBUF/I  (
    .I(EMPTY_OBUF_923),
    .O(\NlwBufferSignal_EMPTY_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_VALID_OBUF/I  (
    .I(VALID_OBUF_924),
    .O(\NlwBufferSignal_VALID_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_ALMOST_FULL_OBUF/I  (
    .I(ALMOST_FULL_OBUF_926),
    .O(\NlwBufferSignal_ALMOST_FULL_OBUF/I )
  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<9>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [5]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<9> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<10>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [6]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<10> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<11>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [7]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<11> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<12>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [8]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<12> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<13>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [9]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<13> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<4>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [0]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<4> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<5>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [1]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<5> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<6>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [2]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<6> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<7>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [3]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<7> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<8>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2 [4]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRA<8> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<9>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [5]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<9> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<10>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [6]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<10> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<11>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [7]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<11> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<12>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [8]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<12> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<13>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [9]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<13> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<4>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [0]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<4> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<5>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [1]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<5> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<6>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [2]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<6> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<7>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [3]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<7> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<8>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1 [4]),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ADDRB<8> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKA  (
    .I(clk_i),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKA )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKB  (
    .I(clk_i),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/CLKB )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<0>  (
    .I(\DIN(0)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<0> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<1>  (
    .I(\DIN(1)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<1> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<10>  (
    .I(\DIN(6)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<10> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<11>  (
    .I(\DIN(7)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<11> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<2>  (
    .I(\DIN(2)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<2> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<3>  (
    .I(\DIN(3)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<3> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<8>  (
    .I(\DIN(4)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<8> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<9>  (
    .I(\DIN(5)/IBUF ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/DIA<9> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENA  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENA )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENB  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/tmp_ram_rd_en ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/ENB )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/SSRB  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg[0] ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/SSRB )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<0>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<0> )

  );
  X_BUF 
  \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<1>  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/wr_ack_i ),
    .O
(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/v5_noinit.ram/SDP.SINGLE_PRIM18.SDP/WEA<1> )

  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.gdc.dc/dc/count_8/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [2]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_2/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [1]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_1/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [6]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_6/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [5]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_5/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count [9]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_9/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/rpntr/count_d1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [1]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_1/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [0]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_0/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [6]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_6/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [5]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_5/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [4]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_4/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1 [8]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d2_8/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [0]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_0/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [1]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_1/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [3]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_3/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [4]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_4/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_7/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_5/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [6]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_6/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [8]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_8/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count [9]),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/count_d1_9/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_reg_0/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_932 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg_d1/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_940 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg_d1/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_reg_1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/WR_ACK/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/WR_ACK/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rd_rst_asreg/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/wr_rst_asreg/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3_944 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/RST_FULL_GEN/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_fb_i/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2_938 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d3/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d2/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/rstblk/rst_d1/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_fb_i_or0000 ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grss.rsts/ram_empty_i/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/IN  (
    .I(\exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_comb ),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_full_i/IN )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwhf.whf/overflow_i/CLK )
  );
  X_BUF   \NlwBufferBlock_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_d1/CLK  (
    .I(clk_i),
    .O(\NlwBufferSignal_exdes_inst/U0/xst_fifo_generator/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/grhf.rhf/ram_valid_d1/CLK )
  );
  X_ZERO   NlwBlock_fifo_generator_v9_1_exdes_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_fifo_generator_v9_1_exdes_VCC (
    .O(VCC)
  );
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

