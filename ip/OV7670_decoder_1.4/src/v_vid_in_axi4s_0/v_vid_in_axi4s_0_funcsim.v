// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
// Date        : Wed Mar 25 20:24:21 2015
// Host        : Gustavo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/users/gustavo/uoft/digital_systems_design/holeinthewall9/ip/ip_repo/ov7670_decoder_1.4/src/v_vid_in_axi4s_0/v_vid_in_axi4s_0_funcsim.v
// Design      : v_vid_in_axi4s_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* X_CORE_INFO = "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.1" *) (* CHECK_LICENSE_TYPE = "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{}" *) (* CORE_GENERATION_INFO = "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{x_ipProduct=Vivado 2014.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_vid_in_axi4s,x_ipVersion=3.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,C_M_AXIS_VIDEO_DATA_WIDTH=8,C_M_AXIS_VIDEO_FORMAT=6,VID_IN_DATA_WIDTH=32,C_M_AXIS_VIDEO_TDATA_WIDTH=32,RAM_ADDR_BITS=10,HYSTERESIS_LEVEL=12}" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
(* NotValidForBitStream *)
module v_vid_in_axi4s_0
   (vid_io_in_clk,
    rst,
    vid_io_in_ce,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    wr_error,
    empty,
    axis_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 vid_io_in_clk_intf CLK" *) input vid_io_in_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_intf RST" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_in_ce_intf CE" *) input vid_io_in_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in ACTIVE_VIDEO" *) input vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK" *) input vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK" *) input vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC" *) input vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC" *) input vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in FIELD" *) input vid_field_id;
  input [31:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) input aresetn;
  output [31:0]m_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output m_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input m_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output m_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output m_axis_video_tlast;
  output fid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out ACTIVE_VIDEO" *) output vtd_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VBLANK" *) output vtd_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HBLANK" *) output vtd_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out VSYNC" *) output vtd_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out HSYNC" *) output vtd_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_out FIELD" *) output vtd_field_id;
  output wr_error;
  output empty;
  input axis_enable;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire empty;
  wire fid;
  wire [31:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rst;
  wire vid_active_video;
  wire [31:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;
  wire wr_error;

(* C_M_AXIS_VIDEO_DATA_WIDTH = "8" *) 
   (* C_M_AXIS_VIDEO_FORMAT = "6" *) 
   (* C_M_AXIS_VIDEO_TDATA_WIDTH = "32" *) 
   (* DowngradeIPIdentifiedWarnings = "yes" *) 
   (* HYSTERESIS_LEVEL = "12" *) 
   (* RAM_ADDR_BITS = "10" *) 
   (* VID_IN_DATA_WIDTH = "32" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) 
   v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .empty(empty),
        .fid(fid),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .rst(rst),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_active_video(vtd_active_video),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync),
        .wr_error(wr_error));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2" *) 
module v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2
   (DOPBDOP,
    SR,
    O1,
    wr_error,
    O2,
    D,
    E,
    idf_de,
    vid_io_in_clk,
    aclk,
    idf_data,
    vid_io_in_ce,
    first_sof_reg,
    I1,
    aclken,
    m_axis_video_tready,
    p_0_in_0,
    rst,
    aresetn);
  output [1:0]DOPBDOP;
  output [0:0]SR;
  output O1;
  output wr_error;
  output O2;
  output [34:0]D;
  output [0:0]E;
  input idf_de;
  input vid_io_in_clk;
  input aclk;
  input [34:0]idf_data;
  input vid_io_in_ce;
  input first_sof_reg;
  input I1;
  input aclken;
  input m_axis_video_tready;
  input p_0_in_0;
  input rst;
  input aresetn;

  wire [34:0]D;
  wire [1:0]DOPBDOP;
  wire [0:0]E;
  wire I1;
  wire O1;
  wire O2;
  wire [0:0]SR;
  wire ack_rd_dom_1;
  wire ack_rd_dom_2;
  wire ack_rd_dom_3;
  wire ack_wr_dom_1;
  wire ack_wr_dom_2;
  wire ack_wr_dom_3;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire ce_rd_ptr_sample;
  wire ce_rd_ptr_wr_dom;
  wire ce_wr_ptr_rd_dom;
  wire ce_wr_ptr_sample;
  wire empty0;
  wire fifo_empty;
  wire fifo_eol;
  wire fifo_full;
  wire first_sof_reg;
  wire full_comb;
  wire [34:0]idf_data;
  wire idf_de;
  wire [9:2]level_rd;
  wire m_axis_video_tready;
  wire n_0_empty_i_2;
  wire n_0_empty_i_3;
  wire n_0_fifo_ram_reg_i_1;
  wire n_0_full_i_10;
  wire n_0_full_i_11;
  wire n_0_full_i_12;
  wire n_0_full_i_13;
  wire n_0_full_i_14;
  wire n_0_full_i_3;
  wire n_0_full_i_4;
  wire n_0_full_i_5;
  wire n_0_full_i_7;
  wire n_0_full_i_8;
  wire n_0_full_i_9;
  wire n_0_full_reg_i_2;
  wire n_0_full_reg_i_6;
  wire \n_0_ptr_diff_rd_dom[3]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[3]_i_5 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[7]_i_5 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_2 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_3 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_4 ;
  wire \n_0_ptr_diff_rd_dom[9]_i_5 ;
  wire \n_0_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_0_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire n_0_ram_out_rd_error_i_1;
  wire n_0_ram_out_rd_error_i_2;
  wire \n_0_rd_data[31]_i_4 ;
  wire n_0_rd_error_i_1;
  wire n_0_rd_error_i_2;
  wire n_0_rd_error_i_3;
  wire n_0_rd_error_i_4;
  wire n_0_rd_error_i_5;
  wire n_0_rd_error_i_6;
  wire n_0_rd_error_i_7;
  wire \n_0_rd_ptr[0]_i_2 ;
  wire \n_0_rd_ptr[0]_i_3 ;
  wire \n_0_rd_ptr[0]_i_4 ;
  wire \n_0_rd_ptr[0]_i_5 ;
  wire \n_0_rd_ptr[4]_i_2 ;
  wire \n_0_rd_ptr[4]_i_3 ;
  wire \n_0_rd_ptr[4]_i_4 ;
  wire \n_0_rd_ptr[4]_i_5 ;
  wire \n_0_rd_ptr[8]_i_2 ;
  wire \n_0_rd_ptr[8]_i_3 ;
  wire \n_0_rd_ptr[8]_i_4 ;
  wire \n_0_rd_ptr[8]_i_5 ;
  wire \n_0_rd_ptr_reg[0]_i_1 ;
  wire \n_0_rd_ptr_reg[4]_i_1 ;
  wire \n_0_rd_ptr_reg_rep[0] ;
  wire \n_0_rd_ptr_reg_rep[1] ;
  wire \n_0_rd_ptr_reg_rep[2] ;
  wire \n_0_rd_ptr_reg_rep[3] ;
  wire \n_0_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_0_rd_ptr_reg_rep[4] ;
  wire \n_0_rd_ptr_reg_rep[5] ;
  wire \n_0_rd_ptr_reg_rep[6] ;
  wire \n_0_rd_ptr_reg_rep[7] ;
  wire \n_0_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_0_rd_ptr_reg_rep[8] ;
  wire \n_0_rd_ptr_reg_rep[9] ;
  wire \n_0_rd_ptr_rep[3]_i_2 ;
  wire \n_0_rd_ptr_rep[3]_i_3 ;
  wire \n_0_rd_ptr_rep[3]_i_4 ;
  wire \n_0_rd_ptr_rep[7]_i_2 ;
  wire \n_0_rd_ptr_rep[7]_i_3 ;
  wire \n_0_rd_ptr_rep[7]_i_4 ;
  wire \n_0_rd_ptr_rep[7]_i_5 ;
  wire \n_0_rd_ptr_rep[9]_i_1 ;
  wire \n_0_rd_ptr_rep[9]_i_3 ;
  wire \n_0_rd_ptr_rep[9]_i_4 ;
  wire \n_0_rd_ptr_rep[9]_i_5 ;
  wire \n_0_rd_ptr_rep[9]_i_6 ;
  wire \n_0_rd_ptr_rep[9]_i_7 ;
  wire \n_0_rd_ptr_wr_dom_reg[0] ;
  wire \n_0_rd_ptr_wr_dom_reg[10] ;
  wire \n_0_rd_ptr_wr_dom_reg[1] ;
  wire \n_0_rd_ptr_wr_dom_reg[2] ;
  wire \n_0_rd_ptr_wr_dom_reg[3] ;
  wire \n_0_rd_ptr_wr_dom_reg[4] ;
  wire \n_0_rd_ptr_wr_dom_reg[5] ;
  wire \n_0_rd_ptr_wr_dom_reg[6] ;
  wire \n_0_rd_ptr_wr_dom_reg[7] ;
  wire \n_0_rd_ptr_wr_dom_reg[8] ;
  wire \n_0_rd_ptr_wr_dom_reg[9] ;
  wire n_0_valid_i_3;
  wire n_0_valid_i_4;
  wire n_0_wr_error_i_1;
  wire \n_0_wr_ptr[0]_i_1 ;
  wire \n_0_wr_ptr[0]_i_3 ;
  wire \n_0_wr_ptr[0]_i_4 ;
  wire \n_0_wr_ptr[0]_i_5 ;
  wire \n_0_wr_ptr[0]_i_6 ;
  wire \n_0_wr_ptr[4]_i_2 ;
  wire \n_0_wr_ptr[4]_i_3 ;
  wire \n_0_wr_ptr[4]_i_4 ;
  wire \n_0_wr_ptr[4]_i_5 ;
  wire \n_0_wr_ptr[8]_i_2 ;
  wire \n_0_wr_ptr[8]_i_3 ;
  wire \n_0_wr_ptr[8]_i_4 ;
  wire \n_0_wr_ptr[8]_i_5 ;
  wire \n_0_wr_ptr_reg[0]_i_2 ;
  wire \n_0_wr_ptr_reg[4]_i_1 ;
  wire n_1_full_reg_i_2;
  wire n_1_full_reg_i_6;
  wire \n_1_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_1_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_1_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_1_rd_ptr_reg[0]_i_1 ;
  wire \n_1_rd_ptr_reg[4]_i_1 ;
  wire \n_1_rd_ptr_reg[8]_i_1 ;
  wire \n_1_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_1_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_1_wr_ptr_reg[0]_i_2 ;
  wire \n_1_wr_ptr_reg[4]_i_1 ;
  wire \n_1_wr_ptr_reg[8]_i_1 ;
  wire n_2_full_reg_i_1;
  wire n_2_full_reg_i_2;
  wire n_2_full_reg_i_6;
  wire \n_2_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_2_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_2_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_2_rd_ptr_reg[0]_i_1 ;
  wire \n_2_rd_ptr_reg[4]_i_1 ;
  wire \n_2_rd_ptr_reg[8]_i_1 ;
  wire \n_2_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_2_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_2_wr_ptr_reg[0]_i_2 ;
  wire \n_2_wr_ptr_reg[4]_i_1 ;
  wire \n_2_wr_ptr_reg[8]_i_1 ;
  wire n_36_fifo_ram_reg;
  wire n_37_fifo_ram_reg;
  wire n_38_fifo_ram_reg;
  wire n_39_fifo_ram_reg;
  wire n_3_full_reg_i_1;
  wire n_3_full_reg_i_2;
  wire n_3_full_reg_i_6;
  wire \n_3_ptr_diff_rd_dom_reg[3]_i_1 ;
  wire \n_3_ptr_diff_rd_dom_reg[7]_i_1 ;
  wire \n_3_ptr_diff_rd_dom_reg[9]_i_1 ;
  wire \n_3_rd_ptr_reg[0]_i_1 ;
  wire \n_3_rd_ptr_reg[4]_i_1 ;
  wire \n_3_rd_ptr_reg[8]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_3_rd_ptr_reg_rep[9]_i_2 ;
  wire \n_3_wr_ptr_reg[0]_i_2 ;
  wire \n_3_wr_ptr_reg[4]_i_1 ;
  wire \n_3_wr_ptr_reg[8]_i_1 ;
  wire n_40_fifo_ram_reg;
  wire n_41_fifo_ram_reg;
  wire n_42_fifo_ram_reg;
  wire n_43_fifo_ram_reg;
  wire n_44_fifo_ram_reg;
  wire n_45_fifo_ram_reg;
  wire n_46_fifo_ram_reg;
  wire n_47_fifo_ram_reg;
  wire n_48_fifo_ram_reg;
  wire n_49_fifo_ram_reg;
  wire \n_4_rd_ptr_reg[0]_i_1 ;
  wire \n_4_rd_ptr_reg[4]_i_1 ;
  wire \n_4_rd_ptr_reg[8]_i_1 ;
  wire \n_4_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_4_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_4_wr_ptr_reg[0]_i_2 ;
  wire \n_4_wr_ptr_reg[4]_i_1 ;
  wire \n_4_wr_ptr_reg[8]_i_1 ;
  wire n_50_fifo_ram_reg;
  wire n_51_fifo_ram_reg;
  wire n_52_fifo_ram_reg;
  wire n_53_fifo_ram_reg;
  wire n_54_fifo_ram_reg;
  wire n_55_fifo_ram_reg;
  wire n_56_fifo_ram_reg;
  wire n_57_fifo_ram_reg;
  wire n_58_fifo_ram_reg;
  wire n_59_fifo_ram_reg;
  wire \n_5_rd_ptr_reg[0]_i_1 ;
  wire \n_5_rd_ptr_reg[4]_i_1 ;
  wire \n_5_rd_ptr_reg[8]_i_1 ;
  wire \n_5_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_5_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_5_wr_ptr_reg[0]_i_2 ;
  wire \n_5_wr_ptr_reg[4]_i_1 ;
  wire \n_5_wr_ptr_reg[8]_i_1 ;
  wire n_60_fifo_ram_reg;
  wire n_61_fifo_ram_reg;
  wire n_62_fifo_ram_reg;
  wire n_63_fifo_ram_reg;
  wire n_64_fifo_ram_reg;
  wire n_65_fifo_ram_reg;
  wire n_66_fifo_ram_reg;
  wire n_67_fifo_ram_reg;
  wire \n_6_rd_ptr_reg[0]_i_1 ;
  wire \n_6_rd_ptr_reg[4]_i_1 ;
  wire \n_6_rd_ptr_reg[8]_i_1 ;
  wire \n_6_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_6_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_6_rd_ptr_reg_rep[9]_i_2 ;
  wire \n_6_wr_ptr_reg[0]_i_2 ;
  wire \n_6_wr_ptr_reg[4]_i_1 ;
  wire \n_6_wr_ptr_reg[8]_i_1 ;
  wire \n_7_rd_ptr_reg[0]_i_1 ;
  wire \n_7_rd_ptr_reg[4]_i_1 ;
  wire \n_7_rd_ptr_reg[8]_i_1 ;
  wire \n_7_rd_ptr_reg_rep[3]_i_1 ;
  wire \n_7_rd_ptr_reg_rep[7]_i_1 ;
  wire \n_7_rd_ptr_reg_rep[9]_i_2 ;
  wire \n_7_wr_ptr_reg[0]_i_2 ;
  wire \n_7_wr_ptr_reg[4]_i_1 ;
  wire \n_7_wr_ptr_reg[8]_i_1 ;
  wire [0:0]p_0_in;
  wire p_0_in_0;
  wire [9:2]ptr_diff_rd_dom_comb0_out;
  wire [11:1]ptr_diff_rd_dom_comb0_out__0;
  wire ram_out_rd_error;
  wire [11:11]rd_ptr_reg;
  wire [10:0]rd_ptr_reg__0;
  wire [10:0]rd_ptr_sample;
  wire rd_to_wr_req;
  wire req_rd_dom_1;
  wire req_rd_dom_2;
  wire req_rd_dom_3;
  wire req_wr_dom_1;
  wire req_wr_dom_2;
  wire req_wr_dom_3;
  wire rst;
  wire rst_rd_1;
  wire rst_rd_2;
  wire rst_wr_1;
  wire rst_wr_2;
  wire valid2_out;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire wr_error;
  wire [11:0]wr_ptr_rd_dom;
  wire [9:0]wr_ptr_reg;
  wire [11:10]wr_ptr_reg__0;
  wire [11:0]wr_ptr_sample;
  wire wr_to_rd_req;
  wire NLW_fifo_ram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_fifo_ram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_fifo_ram_reg_DBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_fifo_ram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_fifo_ram_reg_DOADO_UNCONNECTED;
  wire [3:0]NLW_fifo_ram_reg_DOPADOP_UNCONNECTED;
  wire [3:3]NLW_fifo_ram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_fifo_ram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_fifo_ram_reg_RDADDRECC_UNCONNECTED;
  wire [3:2]NLW_full_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_full_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_full_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_full_reg_i_6_O_UNCONNECTED;
  wire [0:0]\NLW_ptr_diff_rd_dom_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_rd_ptr_reg_rep[9]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_wr_ptr_reg[8]_i_1_CO_UNCONNECTED ;

(* ASYNC_REG *) 
   FDRE ack_rd_dom_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_wr_dom_3),
        .Q(ack_rd_dom_1),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   FDRE ack_rd_dom_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ack_rd_dom_1),
        .Q(ack_rd_dom_2),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   FDRE ack_rd_dom_3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ack_rd_dom_2),
        .Q(ack_rd_dom_3),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   FDRE ack_wr_dom_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_rd_dom_3),
        .Q(ack_wr_dom_1),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   FDRE ack_wr_dom_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(ack_wr_dom_1),
        .Q(ack_wr_dom_2),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   FDRE ack_wr_dom_3_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(ack_wr_dom_2),
        .Q(ack_wr_dom_3),
        .R(rst_wr_2));
LUT6 #(
    .INIT(64'h00000000EFFFEFAA)) 
     empty_i_1
       (.I0(fifo_empty),
        .I1(m_axis_video_tready),
        .I2(I1),
        .I3(n_0_empty_i_2),
        .I4(n_0_empty_i_3),
        .I5(\n_0_rd_ptr_rep[9]_i_3 ),
        .O(empty0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hAEAA)) 
     empty_i_2
       (.I0(first_sof_reg),
        .I1(DOPBDOP[0]),
        .I2(DOPBDOP[1]),
        .I3(p_0_in_0),
        .O(n_0_empty_i_2));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'hFFEA)) 
     empty_i_3
       (.I0(fifo_full),
        .I1(level_rd[2]),
        .I2(level_rd[3]),
        .I3(n_0_rd_error_i_7),
        .O(n_0_empty_i_3));
FDSE empty_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty0),
        .Q(fifo_empty),
        .S(rst_rd_2));
(* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
   (* RTL_RAM_BITS = "35840" *) 
   (* RTL_RAM_NAME = "fifo_ram" *) 
   (* bram_addr_begin = "0" *) 
   (* bram_addr_end = "1023" *) 
   (* bram_slice_begin = "0" *) 
   (* bram_slice_end = "35" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
     fifo_ram_reg
       (.ADDRARDADDR({1'b1,wr_ptr_reg,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,\n_0_rd_ptr_reg_rep[9] ,\n_0_rd_ptr_reg_rep[8] ,\n_0_rd_ptr_reg_rep[7] ,\n_0_rd_ptr_reg_rep[6] ,\n_0_rd_ptr_reg_rep[5] ,\n_0_rd_ptr_reg_rep[4] ,\n_0_rd_ptr_reg_rep[3] ,\n_0_rd_ptr_reg_rep[2] ,\n_0_rd_ptr_reg_rep[1] ,\n_0_rd_ptr_reg_rep[0] ,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_fifo_ram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_fifo_ram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(vid_io_in_clk),
        .CLKBWRCLK(aclk),
        .DBITERR(NLW_fifo_ram_reg_DBITERR_UNCONNECTED),
        .DIADI(idf_data[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,idf_data[34:32]}),
        .DIPBDIP({1'b0,1'b1,1'b1,1'b1}),
        .DOADO(NLW_fifo_ram_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({n_36_fifo_ram_reg,n_37_fifo_ram_reg,n_38_fifo_ram_reg,n_39_fifo_ram_reg,n_40_fifo_ram_reg,n_41_fifo_ram_reg,n_42_fifo_ram_reg,n_43_fifo_ram_reg,n_44_fifo_ram_reg,n_45_fifo_ram_reg,n_46_fifo_ram_reg,n_47_fifo_ram_reg,n_48_fifo_ram_reg,n_49_fifo_ram_reg,n_50_fifo_ram_reg,n_51_fifo_ram_reg,n_52_fifo_ram_reg,n_53_fifo_ram_reg,n_54_fifo_ram_reg,n_55_fifo_ram_reg,n_56_fifo_ram_reg,n_57_fifo_ram_reg,n_58_fifo_ram_reg,n_59_fifo_ram_reg,n_60_fifo_ram_reg,n_61_fifo_ram_reg,n_62_fifo_ram_reg,n_63_fifo_ram_reg,n_64_fifo_ram_reg,n_65_fifo_ram_reg,n_66_fifo_ram_reg,n_67_fifo_ram_reg}),
        .DOPADOP(NLW_fifo_ram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_fifo_ram_reg_DOPBDOP_UNCONNECTED[3],DOPBDOP,fifo_eol}),
        .ECCPARITY(NLW_fifo_ram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(idf_de),
        .ENBWREN(n_0_fifo_ram_reg_i_1),
        .INJECTDBITERR(NLW_fifo_ram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_fifo_ram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_fifo_ram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(rst_rd_2),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_fifo_ram_reg_SBITERR_UNCONNECTED),
        .WEA({vid_io_in_ce,vid_io_in_ce,vid_io_in_ce,vid_io_in_ce}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
LUT5 #(
    .INIT(32'hFFFFFF45)) 
     fifo_ram_reg_i_1
       (.I0(n_0_rd_error_i_2),
        .I1(first_sof_reg),
        .I2(n_0_rd_error_i_3),
        .I3(rst_rd_2),
        .I4(n_0_rd_error_i_4),
        .O(n_0_fifo_ram_reg_i_1));
LUT2 #(
    .INIT(4'h9)) 
     full_i_10
       (.I0(wr_ptr_reg[4]),
        .I1(\n_0_rd_ptr_wr_dom_reg[4] ),
        .O(n_0_full_i_10));
LUT2 #(
    .INIT(4'h9)) 
     full_i_11
       (.I0(wr_ptr_reg[3]),
        .I1(\n_0_rd_ptr_wr_dom_reg[3] ),
        .O(n_0_full_i_11));
LUT2 #(
    .INIT(4'h9)) 
     full_i_12
       (.I0(wr_ptr_reg[2]),
        .I1(\n_0_rd_ptr_wr_dom_reg[2] ),
        .O(n_0_full_i_12));
LUT2 #(
    .INIT(4'h9)) 
     full_i_13
       (.I0(wr_ptr_reg[1]),
        .I1(\n_0_rd_ptr_wr_dom_reg[1] ),
        .O(n_0_full_i_13));
LUT2 #(
    .INIT(4'h9)) 
     full_i_14
       (.I0(wr_ptr_reg[0]),
        .I1(\n_0_rd_ptr_wr_dom_reg[0] ),
        .O(n_0_full_i_14));
LUT2 #(
    .INIT(4'h9)) 
     full_i_3
       (.I0(wr_ptr_reg__0[10]),
        .I1(\n_0_rd_ptr_wr_dom_reg[10] ),
        .O(n_0_full_i_3));
LUT2 #(
    .INIT(4'h9)) 
     full_i_4
       (.I0(wr_ptr_reg[9]),
        .I1(\n_0_rd_ptr_wr_dom_reg[9] ),
        .O(n_0_full_i_4));
LUT2 #(
    .INIT(4'h9)) 
     full_i_5
       (.I0(wr_ptr_reg[8]),
        .I1(\n_0_rd_ptr_wr_dom_reg[8] ),
        .O(n_0_full_i_5));
LUT2 #(
    .INIT(4'h9)) 
     full_i_7
       (.I0(wr_ptr_reg[7]),
        .I1(\n_0_rd_ptr_wr_dom_reg[7] ),
        .O(n_0_full_i_7));
LUT2 #(
    .INIT(4'h9)) 
     full_i_8
       (.I0(wr_ptr_reg[6]),
        .I1(\n_0_rd_ptr_wr_dom_reg[6] ),
        .O(n_0_full_i_8));
LUT2 #(
    .INIT(4'h9)) 
     full_i_9
       (.I0(wr_ptr_reg[5]),
        .I1(\n_0_rd_ptr_wr_dom_reg[5] ),
        .O(n_0_full_i_9));
FDRE full_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(full_comb),
        .Q(fifo_full),
        .R(rst_wr_2));
CARRY4 full_reg_i_1
       (.CI(n_0_full_reg_i_2),
        .CO({NLW_full_reg_i_1_CO_UNCONNECTED[3:2],n_2_full_reg_i_1,n_3_full_reg_i_1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,wr_ptr_reg[9:8]}),
        .O({NLW_full_reg_i_1_O_UNCONNECTED[3],full_comb,NLW_full_reg_i_1_O_UNCONNECTED[1:0]}),
        .S({1'b0,n_0_full_i_3,n_0_full_i_4,n_0_full_i_5}));
CARRY4 full_reg_i_2
       (.CI(n_0_full_reg_i_6),
        .CO({n_0_full_reg_i_2,n_1_full_reg_i_2,n_2_full_reg_i_2,n_3_full_reg_i_2}),
        .CYINIT(1'b0),
        .DI(wr_ptr_reg[7:4]),
        .O(NLW_full_reg_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_full_i_7,n_0_full_i_8,n_0_full_i_9,n_0_full_i_10}));
CARRY4 full_reg_i_6
       (.CI(1'b0),
        .CO({n_0_full_reg_i_6,n_1_full_reg_i_6,n_2_full_reg_i_6,n_3_full_reg_i_6}),
        .CYINIT(1'b1),
        .DI(wr_ptr_reg[3:0]),
        .O(NLW_full_reg_i_6_O_UNCONNECTED[3:0]),
        .S({n_0_full_i_11,n_0_full_i_12,n_0_full_i_13,n_0_full_i_14}));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_2 
       (.I0(wr_ptr_rd_dom[3]),
        .I1(rd_ptr_reg__0[3]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_3 
       (.I0(wr_ptr_rd_dom[2]),
        .I1(rd_ptr_reg__0[2]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_4 
       (.I0(wr_ptr_rd_dom[1]),
        .I1(rd_ptr_reg__0[1]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[3]_i_5 
       (.I0(wr_ptr_rd_dom[0]),
        .I1(rd_ptr_reg__0[0]),
        .O(\n_0_ptr_diff_rd_dom[3]_i_5 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_2 
       (.I0(wr_ptr_rd_dom[7]),
        .I1(rd_ptr_reg__0[7]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_3 
       (.I0(wr_ptr_rd_dom[6]),
        .I1(rd_ptr_reg__0[6]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_4 
       (.I0(wr_ptr_rd_dom[5]),
        .I1(rd_ptr_reg__0[5]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[7]_i_5 
       (.I0(wr_ptr_rd_dom[4]),
        .I1(rd_ptr_reg__0[4]),
        .O(\n_0_ptr_diff_rd_dom[7]_i_5 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_2 
       (.I0(wr_ptr_rd_dom[11]),
        .I1(rd_ptr_reg),
        .O(\n_0_ptr_diff_rd_dom[9]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_3 
       (.I0(wr_ptr_rd_dom[10]),
        .I1(rd_ptr_reg__0[10]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_4 
       (.I0(wr_ptr_rd_dom[9]),
        .I1(rd_ptr_reg__0[9]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \ptr_diff_rd_dom[9]_i_5 
       (.I0(wr_ptr_rd_dom[8]),
        .I1(rd_ptr_reg__0[8]),
        .O(\n_0_ptr_diff_rd_dom[9]_i_5 ));
FDRE \ptr_diff_rd_dom_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[2]),
        .Q(level_rd[2]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[3]),
        .Q(level_rd[3]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_ptr_diff_rd_dom_reg[3]_i_1 ,\n_1_ptr_diff_rd_dom_reg[3]_i_1 ,\n_2_ptr_diff_rd_dom_reg[3]_i_1 ,\n_3_ptr_diff_rd_dom_reg[3]_i_1 }),
        .CYINIT(1'b1),
        .DI(wr_ptr_rd_dom[3:0]),
        .O({ptr_diff_rd_dom_comb0_out[3:2],ptr_diff_rd_dom_comb0_out__0[1],\NLW_ptr_diff_rd_dom_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\n_0_ptr_diff_rd_dom[3]_i_2 ,\n_0_ptr_diff_rd_dom[3]_i_3 ,\n_0_ptr_diff_rd_dom[3]_i_4 ,\n_0_ptr_diff_rd_dom[3]_i_5 }));
FDRE \ptr_diff_rd_dom_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[4]),
        .Q(level_rd[4]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[5]),
        .Q(level_rd[5]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[6]),
        .Q(level_rd[6]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[7]),
        .Q(level_rd[7]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[7]_i_1 
       (.CI(\n_0_ptr_diff_rd_dom_reg[3]_i_1 ),
        .CO({\n_0_ptr_diff_rd_dom_reg[7]_i_1 ,\n_1_ptr_diff_rd_dom_reg[7]_i_1 ,\n_2_ptr_diff_rd_dom_reg[7]_i_1 ,\n_3_ptr_diff_rd_dom_reg[7]_i_1 }),
        .CYINIT(1'b0),
        .DI(wr_ptr_rd_dom[7:4]),
        .O(ptr_diff_rd_dom_comb0_out[7:4]),
        .S({\n_0_ptr_diff_rd_dom[7]_i_2 ,\n_0_ptr_diff_rd_dom[7]_i_3 ,\n_0_ptr_diff_rd_dom[7]_i_4 ,\n_0_ptr_diff_rd_dom[7]_i_5 }));
FDRE \ptr_diff_rd_dom_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[8]),
        .Q(level_rd[8]),
        .R(rst_rd_2));
FDRE \ptr_diff_rd_dom_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ptr_diff_rd_dom_comb0_out[9]),
        .Q(level_rd[9]),
        .R(rst_rd_2));
CARRY4 \ptr_diff_rd_dom_reg[9]_i_1 
       (.CI(\n_0_ptr_diff_rd_dom_reg[7]_i_1 ),
        .CO({\NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED [3],\n_1_ptr_diff_rd_dom_reg[9]_i_1 ,\n_2_ptr_diff_rd_dom_reg[9]_i_1 ,\n_3_ptr_diff_rd_dom_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,wr_ptr_rd_dom[10:8]}),
        .O({ptr_diff_rd_dom_comb0_out__0[11:10],ptr_diff_rd_dom_comb0_out[9:8]}),
        .S({\n_0_ptr_diff_rd_dom[9]_i_2 ,\n_0_ptr_diff_rd_dom[9]_i_3 ,\n_0_ptr_diff_rd_dom[9]_i_4 ,\n_0_ptr_diff_rd_dom[9]_i_5 }));
LUT5 #(
    .INIT(32'hFF570054)) 
     ram_out_rd_error_i_1
       (.I0(\n_0_rd_ptr_rep[9]_i_3 ),
        .I1(n_0_rd_error_i_4),
        .I2(n_0_ram_out_rd_error_i_2),
        .I3(rst_rd_2),
        .I4(ram_out_rd_error),
        .O(n_0_ram_out_rd_error_i_1));
LUT6 #(
    .INIT(64'hD0DD000000000000)) 
     ram_out_rd_error_i_2
       (.I0(n_0_rd_error_i_3),
        .I1(first_sof_reg),
        .I2(fifo_eol),
        .I3(fifo_empty),
        .I4(aclken),
        .I5(n_0_valid_i_4),
        .O(n_0_ram_out_rd_error_i_2));
FDRE ram_out_rd_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_ram_out_rd_error_i_1),
        .Q(ram_out_rd_error),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[0]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_67_fifo_ram_reg),
        .O(D[0]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[10]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_57_fifo_ram_reg),
        .O(D[10]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[11]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_56_fifo_ram_reg),
        .O(D[11]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[12]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_55_fifo_ram_reg),
        .O(D[12]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[13]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_54_fifo_ram_reg),
        .O(D[13]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[14]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_53_fifo_ram_reg),
        .O(D[14]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[15]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_52_fifo_ram_reg),
        .O(D[15]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[16]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_51_fifo_ram_reg),
        .O(D[16]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[17]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_50_fifo_ram_reg),
        .O(D[17]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[18]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_49_fifo_ram_reg),
        .O(D[18]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[19]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_48_fifo_ram_reg),
        .O(D[19]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[1]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_66_fifo_ram_reg),
        .O(D[1]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[20]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_47_fifo_ram_reg),
        .O(D[20]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[21]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_46_fifo_ram_reg),
        .O(D[21]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[22]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_45_fifo_ram_reg),
        .O(D[22]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[23]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_44_fifo_ram_reg),
        .O(D[23]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[24]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_43_fifo_ram_reg),
        .O(D[24]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[25]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_42_fifo_ram_reg),
        .O(D[25]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[26]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_41_fifo_ram_reg),
        .O(D[26]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[27]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_40_fifo_ram_reg),
        .O(D[27]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[28]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_39_fifo_ram_reg),
        .O(D[28]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[29]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_38_fifo_ram_reg),
        .O(D[29]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[2]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_65_fifo_ram_reg),
        .O(D[2]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[30]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_37_fifo_ram_reg),
        .O(D[30]));
LUT2 #(
    .INIT(4'hB)) 
     \rd_data[31]_i_1 
       (.I0(rst),
        .I1(aresetn),
        .O(SR));
LUT6 #(
    .INIT(64'hFFFFFFFFBB0B0000)) 
     \rd_data[31]_i_2 
       (.I0(fifo_eol),
        .I1(fifo_empty),
        .I2(I1),
        .I3(m_axis_video_tready),
        .I4(aclken),
        .I5(\n_0_rd_data[31]_i_4 ),
        .O(E));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[31]_i_3 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_36_fifo_ram_reg),
        .O(D[31]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h0000DF00)) 
     \rd_data[31]_i_4 
       (.I0(DOPBDOP[0]),
        .I1(DOPBDOP[1]),
        .I2(p_0_in_0),
        .I3(aclken),
        .I4(first_sof_reg),
        .O(\n_0_rd_data[31]_i_4 ));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[32]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(fifo_eol),
        .O(D[32]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h8C88)) 
     \rd_data[33]_i_1 
       (.I0(first_sof_reg),
        .I1(DOPBDOP[0]),
        .I2(DOPBDOP[1]),
        .I3(p_0_in_0),
        .O(D[33]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \rd_data[34]_i_1 
       (.I0(first_sof_reg),
        .I1(DOPBDOP[1]),
        .O(D[34]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[3]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_64_fifo_ram_reg),
        .O(D[3]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[4]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_63_fifo_ram_reg),
        .O(D[4]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[5]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_62_fifo_ram_reg),
        .O(D[5]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[6]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_61_fifo_ram_reg),
        .O(D[6]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[7]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_60_fifo_ram_reg),
        .O(D[7]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[8]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_59_fifo_ram_reg),
        .O(D[8]));
LUT5 #(
    .INIT(32'hFF200000)) 
     \rd_data[9]_i_1 
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .I3(first_sof_reg),
        .I4(n_58_fifo_ram_reg),
        .O(D[9]));
LUT6 #(
    .INIT(64'hAAAAEFEEAAAA2022)) 
     rd_error_i_1
       (.I0(ram_out_rd_error),
        .I1(n_0_rd_error_i_2),
        .I2(first_sof_reg),
        .I3(n_0_rd_error_i_3),
        .I4(n_0_rd_error_i_4),
        .I5(O1),
        .O(n_0_rd_error_i_1));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h4FFF4F4F)) 
     rd_error_i_2
       (.I0(fifo_eol),
        .I1(fifo_empty),
        .I2(aclken),
        .I3(m_axis_video_tready),
        .I4(I1),
        .O(n_0_rd_error_i_2));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hDF)) 
     rd_error_i_3
       (.I0(p_0_in_0),
        .I1(DOPBDOP[1]),
        .I2(DOPBDOP[0]),
        .O(n_0_rd_error_i_3));
LUT6 #(
    .INIT(64'h0000DDD000000000)) 
     rd_error_i_4
       (.I0(DOPBDOP[0]),
        .I1(n_0_rd_error_i_5),
        .I2(n_0_rd_error_i_6),
        .I3(n_0_rd_error_i_7),
        .I4(first_sof_reg),
        .I5(aclken),
        .O(n_0_rd_error_i_4));
LUT2 #(
    .INIT(4'hB)) 
     rd_error_i_5
       (.I0(DOPBDOP[1]),
        .I1(p_0_in_0),
        .O(n_0_rd_error_i_5));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hF8)) 
     rd_error_i_6
       (.I0(level_rd[3]),
        .I1(level_rd[2]),
        .I2(fifo_full),
        .O(n_0_rd_error_i_6));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     rd_error_i_7
       (.I0(level_rd[5]),
        .I1(level_rd[4]),
        .I2(level_rd[6]),
        .I3(level_rd[9]),
        .I4(level_rd[7]),
        .I5(level_rd[8]),
        .O(n_0_rd_error_i_7));
FDRE rd_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_rd_error_i_1),
        .Q(O1),
        .R(rst_rd_2));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[0]_i_2 
       (.I0(rd_ptr_reg__0[3]),
        .O(\n_0_rd_ptr[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[0]_i_3 
       (.I0(rd_ptr_reg__0[2]),
        .O(\n_0_rd_ptr[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[0]_i_4 
       (.I0(rd_ptr_reg__0[1]),
        .O(\n_0_rd_ptr[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr[0]_i_5 
       (.I0(rd_ptr_reg__0[0]),
        .O(\n_0_rd_ptr[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[4]_i_2 
       (.I0(rd_ptr_reg__0[7]),
        .O(\n_0_rd_ptr[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[4]_i_3 
       (.I0(rd_ptr_reg__0[6]),
        .O(\n_0_rd_ptr[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[4]_i_4 
       (.I0(rd_ptr_reg__0[5]),
        .O(\n_0_rd_ptr[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[4]_i_5 
       (.I0(rd_ptr_reg__0[4]),
        .O(\n_0_rd_ptr[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[8]_i_2 
       (.I0(rd_ptr_reg),
        .O(\n_0_rd_ptr[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[8]_i_3 
       (.I0(rd_ptr_reg__0[10]),
        .O(\n_0_rd_ptr[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[8]_i_4 
       (.I0(rd_ptr_reg__0[9]),
        .O(\n_0_rd_ptr[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr[8]_i_5 
       (.I0(rd_ptr_reg__0[8]),
        .O(\n_0_rd_ptr[8]_i_5 ));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg[0]_i_1 ),
        .Q(rd_ptr_reg__0[0]),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_rd_ptr_reg[0]_i_1 ,\n_1_rd_ptr_reg[0]_i_1 ,\n_2_rd_ptr_reg[0]_i_1 ,\n_3_rd_ptr_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_rd_ptr_reg[0]_i_1 ,\n_5_rd_ptr_reg[0]_i_1 ,\n_6_rd_ptr_reg[0]_i_1 ,\n_7_rd_ptr_reg[0]_i_1 }),
        .S({\n_0_rd_ptr[0]_i_2 ,\n_0_rd_ptr[0]_i_3 ,\n_0_rd_ptr[0]_i_4 ,\n_0_rd_ptr[0]_i_5 }));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[10] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg[8]_i_1 ),
        .Q(rd_ptr_reg__0[10]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[11] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg[8]_i_1 ),
        .Q(rd_ptr_reg),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[1] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg[0]_i_1 ),
        .Q(rd_ptr_reg__0[1]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[2] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg[0]_i_1 ),
        .Q(rd_ptr_reg__0[2]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[3] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg[0]_i_1 ),
        .Q(rd_ptr_reg__0[3]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[4] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg[4]_i_1 ),
        .Q(rd_ptr_reg__0[4]),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg[4]_i_1 
       (.CI(\n_0_rd_ptr_reg[0]_i_1 ),
        .CO({\n_0_rd_ptr_reg[4]_i_1 ,\n_1_rd_ptr_reg[4]_i_1 ,\n_2_rd_ptr_reg[4]_i_1 ,\n_3_rd_ptr_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rd_ptr_reg[4]_i_1 ,\n_5_rd_ptr_reg[4]_i_1 ,\n_6_rd_ptr_reg[4]_i_1 ,\n_7_rd_ptr_reg[4]_i_1 }),
        .S({\n_0_rd_ptr[4]_i_2 ,\n_0_rd_ptr[4]_i_3 ,\n_0_rd_ptr[4]_i_4 ,\n_0_rd_ptr[4]_i_5 }));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[5] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg[4]_i_1 ),
        .Q(rd_ptr_reg__0[5]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[6] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg[4]_i_1 ),
        .Q(rd_ptr_reg__0[6]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[7] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg[4]_i_1 ),
        .Q(rd_ptr_reg__0[7]),
        .R(rst_rd_2));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[8] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg[8]_i_1 ),
        .Q(rd_ptr_reg__0[8]),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg[8]_i_1 
       (.CI(\n_0_rd_ptr_reg[4]_i_1 ),
        .CO({\NLW_rd_ptr_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_rd_ptr_reg[8]_i_1 ,\n_2_rd_ptr_reg[8]_i_1 ,\n_3_rd_ptr_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rd_ptr_reg[8]_i_1 ,\n_5_rd_ptr_reg[8]_i_1 ,\n_6_rd_ptr_reg[8]_i_1 ,\n_7_rd_ptr_reg[8]_i_1 }),
        .S({\n_0_rd_ptr[8]_i_2 ,\n_0_rd_ptr[8]_i_3 ,\n_0_rd_ptr[8]_i_4 ,\n_0_rd_ptr[8]_i_5 }));
(* counter = "3" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg[9] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg[8]_i_1 ),
        .Q(rd_ptr_reg__0[9]),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[0] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[0] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[1] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[1] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[2] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[2] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[3] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg_rep[3]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[3] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[3]_i_1 
       (.CI(1'b0),
        .CO({\n_0_rd_ptr_reg_rep[3]_i_1 ,\n_1_rd_ptr_reg_rep[3]_i_1 ,\n_2_rd_ptr_reg_rep[3]_i_1 ,\n_3_rd_ptr_reg_rep[3]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,rd_ptr_reg__0[0]}),
        .O({\n_4_rd_ptr_reg_rep[3]_i_1 ,\n_5_rd_ptr_reg_rep[3]_i_1 ,\n_6_rd_ptr_reg_rep[3]_i_1 ,\n_7_rd_ptr_reg_rep[3]_i_1 }),
        .S({\n_0_rd_ptr_rep[3]_i_2 ,\n_0_rd_ptr_rep[3]_i_3 ,\n_0_rd_ptr_rep[3]_i_4 ,p_0_in}));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[4] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[4] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[5] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[5] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[6] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_5_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[6] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[7] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_4_rd_ptr_reg_rep[7]_i_1 ),
        .Q(\n_0_rd_ptr_reg_rep[7] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[7]_i_1 
       (.CI(\n_0_rd_ptr_reg_rep[3]_i_1 ),
        .CO({\n_0_rd_ptr_reg_rep[7]_i_1 ,\n_1_rd_ptr_reg_rep[7]_i_1 ,\n_2_rd_ptr_reg_rep[7]_i_1 ,\n_3_rd_ptr_reg_rep[7]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rd_ptr_reg_rep[7]_i_1 ,\n_5_rd_ptr_reg_rep[7]_i_1 ,\n_6_rd_ptr_reg_rep[7]_i_1 ,\n_7_rd_ptr_reg_rep[7]_i_1 }),
        .S({\n_0_rd_ptr_rep[7]_i_2 ,\n_0_rd_ptr_rep[7]_i_3 ,\n_0_rd_ptr_rep[7]_i_4 ,\n_0_rd_ptr_rep[7]_i_5 }));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[8] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_7_rd_ptr_reg_rep[9]_i_2 ),
        .Q(\n_0_rd_ptr_reg_rep[8] ),
        .R(rst_rd_2));
(* equivalent_register_removal = "no" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rd_ptr_reg_rep[9] 
       (.C(aclk),
        .CE(\n_0_rd_ptr_rep[9]_i_1 ),
        .D(\n_6_rd_ptr_reg_rep[9]_i_2 ),
        .Q(\n_0_rd_ptr_reg_rep[9] ),
        .R(rst_rd_2));
CARRY4 \rd_ptr_reg_rep[9]_i_2 
       (.CI(\n_0_rd_ptr_reg_rep[7]_i_1 ),
        .CO({\NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED [3:1],\n_3_rd_ptr_reg_rep[9]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_reg_rep[9]_i_2_O_UNCONNECTED [3:2],\n_6_rd_ptr_reg_rep[9]_i_2 ,\n_7_rd_ptr_reg_rep[9]_i_2 }),
        .S({1'b0,1'b0,\n_0_rd_ptr_rep[9]_i_5 ,\n_0_rd_ptr_rep[9]_i_6 }));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_2 
       (.I0(rd_ptr_reg__0[3]),
        .O(\n_0_rd_ptr_rep[3]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_3 
       (.I0(rd_ptr_reg__0[2]),
        .O(\n_0_rd_ptr_rep[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[3]_i_4 
       (.I0(rd_ptr_reg__0[1]),
        .O(\n_0_rd_ptr_rep[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \rd_ptr_rep[3]_i_5 
       (.I0(rd_ptr_reg__0[0]),
        .O(p_0_in));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_2 
       (.I0(rd_ptr_reg__0[7]),
        .O(\n_0_rd_ptr_rep[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_3 
       (.I0(rd_ptr_reg__0[6]),
        .O(\n_0_rd_ptr_rep[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_4 
       (.I0(rd_ptr_reg__0[5]),
        .O(\n_0_rd_ptr_rep[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[7]_i_5 
       (.I0(rd_ptr_reg__0[4]),
        .O(\n_0_rd_ptr_rep[7]_i_5 ));
LUT5 #(
    .INIT(32'h8888AA8A)) 
     \rd_ptr_rep[9]_i_1 
       (.I0(\n_0_rd_ptr_rep[9]_i_3 ),
        .I1(n_0_rd_error_i_4),
        .I2(n_0_rd_error_i_3),
        .I3(first_sof_reg),
        .I4(\n_0_rd_ptr_rep[9]_i_4 ),
        .O(\n_0_rd_ptr_rep[9]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rd_ptr_rep[9]_i_3 
       (.I0(ptr_diff_rd_dom_comb0_out[8]),
        .I1(ptr_diff_rd_dom_comb0_out[9]),
        .I2(ptr_diff_rd_dom_comb0_out[6]),
        .I3(ptr_diff_rd_dom_comb0_out__0[10]),
        .I4(ptr_diff_rd_dom_comb0_out__0[11]),
        .I5(\n_0_rd_ptr_rep[9]_i_7 ),
        .O(\n_0_rd_ptr_rep[9]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h4F4FFF4F)) 
     \rd_ptr_rep[9]_i_4 
       (.I0(m_axis_video_tready),
        .I1(I1),
        .I2(aclken),
        .I3(fifo_empty),
        .I4(fifo_eol),
        .O(\n_0_rd_ptr_rep[9]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_5 
       (.I0(rd_ptr_reg__0[9]),
        .O(\n_0_rd_ptr_rep[9]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rd_ptr_rep[9]_i_6 
       (.I0(rd_ptr_reg__0[8]),
        .O(\n_0_rd_ptr_rep[9]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rd_ptr_rep[9]_i_7 
       (.I0(ptr_diff_rd_dom_comb0_out[5]),
        .I1(ptr_diff_rd_dom_comb0_out[7]),
        .I2(ptr_diff_rd_dom_comb0_out[3]),
        .I3(ptr_diff_rd_dom_comb0_out__0[1]),
        .I4(ptr_diff_rd_dom_comb0_out[4]),
        .I5(ptr_diff_rd_dom_comb0_out[2]),
        .O(\n_0_rd_ptr_rep[9]_i_7 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr_sample[10]_i_1 
       (.I0(ack_rd_dom_2),
        .I1(ack_rd_dom_3),
        .O(ce_rd_ptr_sample));
FDRE \rd_ptr_sample_reg[0] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[0]),
        .Q(rd_ptr_sample[0]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[10] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[10]),
        .Q(rd_ptr_sample[10]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[1] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[1]),
        .Q(rd_ptr_sample[1]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[2] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[2]),
        .Q(rd_ptr_sample[2]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[3] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[3]),
        .Q(rd_ptr_sample[3]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[4] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[4]),
        .Q(rd_ptr_sample[4]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[5] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[5]),
        .Q(rd_ptr_sample[5]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[6] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[6]),
        .Q(rd_ptr_sample[6]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[7] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[7]),
        .Q(rd_ptr_sample[7]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[8] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[8]),
        .Q(rd_ptr_sample[8]),
        .R(rst_rd_2));
FDRE \rd_ptr_sample_reg[9] 
       (.C(aclk),
        .CE(ce_rd_ptr_sample),
        .D(rd_ptr_reg__0[9]),
        .Q(rd_ptr_sample[9]),
        .R(rst_rd_2));
LUT2 #(
    .INIT(4'h6)) 
     \rd_ptr_wr_dom[10]_i_1 
       (.I0(req_wr_dom_2),
        .I1(req_wr_dom_3),
        .O(ce_rd_ptr_wr_dom));
FDRE \rd_ptr_wr_dom_reg[0] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[0]),
        .Q(\n_0_rd_ptr_wr_dom_reg[0] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[10] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[10]),
        .Q(\n_0_rd_ptr_wr_dom_reg[10] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[1] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[1]),
        .Q(\n_0_rd_ptr_wr_dom_reg[1] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[2] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[2]),
        .Q(\n_0_rd_ptr_wr_dom_reg[2] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[3] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[3]),
        .Q(\n_0_rd_ptr_wr_dom_reg[3] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[4] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[4]),
        .Q(\n_0_rd_ptr_wr_dom_reg[4] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[5] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[5]),
        .Q(\n_0_rd_ptr_wr_dom_reg[5] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[6] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[6]),
        .Q(\n_0_rd_ptr_wr_dom_reg[6] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[7] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[7]),
        .Q(\n_0_rd_ptr_wr_dom_reg[7] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[8] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[8]),
        .Q(\n_0_rd_ptr_wr_dom_reg[8] ),
        .R(rst_wr_2));
FDRE \rd_ptr_wr_dom_reg[9] 
       (.C(vid_io_in_clk),
        .CE(ce_rd_ptr_wr_dom),
        .D(rd_ptr_sample[9]),
        .Q(\n_0_rd_ptr_wr_dom_reg[9] ),
        .R(rst_wr_2));
LUT1 #(
    .INIT(2'h1)) 
     req_rd_dom_1_i_1
       (.I0(ack_wr_dom_3),
        .O(wr_to_rd_req));
(* ASYNC_REG *) 
   FDRE req_rd_dom_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wr_to_rd_req),
        .Q(req_rd_dom_1),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   FDRE req_rd_dom_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_rd_dom_1),
        .Q(req_rd_dom_2),
        .R(rst_rd_2));
(* ASYNC_REG *) 
   FDRE req_rd_dom_3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(req_rd_dom_2),
        .Q(req_rd_dom_3),
        .R(rst_rd_2));
LUT1 #(
    .INIT(2'h1)) 
     req_wr_dom_1_i_1
       (.I0(ack_rd_dom_3),
        .O(rd_to_wr_req));
(* ASYNC_REG *) 
   FDRE req_wr_dom_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(rd_to_wr_req),
        .Q(req_wr_dom_1),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   FDRE req_wr_dom_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_wr_dom_1),
        .Q(req_wr_dom_2),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   FDRE req_wr_dom_3_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(req_wr_dom_2),
        .Q(req_wr_dom_3),
        .R(rst_wr_2));
(* ASYNC_REG *) 
   FDRE rst_rd_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst_rd_1),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE rst_rd_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rst_rd_1),
        .Q(rst_rd_2),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE rst_wr_1_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(SR),
        .Q(rst_wr_1),
        .R(1'b0));
(* ASYNC_REG *) 
   FDRE rst_wr_2_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(rst_wr_1),
        .Q(rst_wr_2),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAAAAB8A8B8)) 
     valid_i_1
       (.I0(valid2_out),
        .I1(n_0_valid_i_3),
        .I2(I1),
        .I3(aclken),
        .I4(m_axis_video_tready),
        .I5(SR),
        .O(O2));
LUT6 #(
    .INIT(64'h0404040444440444)) 
     valid_i_2
       (.I0(SR),
        .I1(n_0_empty_i_2),
        .I2(n_0_valid_i_4),
        .I3(fifo_empty),
        .I4(fifo_eol),
        .I5(O1),
        .O(valid2_out));
LUT5 #(
    .INIT(32'hFFFF00B0)) 
     valid_i_3
       (.I0(fifo_eol),
        .I1(fifo_empty),
        .I2(aclken),
        .I3(O1),
        .I4(\n_0_rd_data[31]_i_4 ),
        .O(n_0_valid_i_3));
LUT2 #(
    .INIT(4'hB)) 
     valid_i_4
       (.I0(m_axis_video_tready),
        .I1(I1),
        .O(n_0_valid_i_4));
LUT5 #(
    .INIT(32'h0000CA0A)) 
     wr_error_i_1
       (.I0(wr_error),
        .I1(full_comb),
        .I2(vid_io_in_ce),
        .I3(idf_de),
        .I4(rst_wr_2),
        .O(n_0_wr_error_i_1));
FDRE wr_error_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(n_0_wr_error_i_1),
        .Q(wr_error),
        .R(1'b0));
LUT3 #(
    .INIT(8'h40)) 
     \wr_ptr[0]_i_1 
       (.I0(full_comb),
        .I1(vid_io_in_ce),
        .I2(idf_de),
        .O(\n_0_wr_ptr[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[0]_i_3 
       (.I0(wr_ptr_reg[3]),
        .O(\n_0_wr_ptr[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[0]_i_4 
       (.I0(wr_ptr_reg[2]),
        .O(\n_0_wr_ptr[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[0]_i_5 
       (.I0(wr_ptr_reg[1]),
        .O(\n_0_wr_ptr[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wr_ptr[0]_i_6 
       (.I0(wr_ptr_reg[0]),
        .O(\n_0_wr_ptr[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[4]_i_2 
       (.I0(wr_ptr_reg[7]),
        .O(\n_0_wr_ptr[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[4]_i_3 
       (.I0(wr_ptr_reg[6]),
        .O(\n_0_wr_ptr[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[4]_i_4 
       (.I0(wr_ptr_reg[5]),
        .O(\n_0_wr_ptr[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[4]_i_5 
       (.I0(wr_ptr_reg[4]),
        .O(\n_0_wr_ptr[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[8]_i_2 
       (.I0(wr_ptr_reg__0[11]),
        .O(\n_0_wr_ptr[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[8]_i_3 
       (.I0(wr_ptr_reg__0[10]),
        .O(\n_0_wr_ptr[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[8]_i_4 
       (.I0(wr_ptr_reg[9]),
        .O(\n_0_wr_ptr[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_ptr[8]_i_5 
       (.I0(wr_ptr_reg[8]),
        .O(\n_0_wr_ptr[8]_i_5 ));
LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr_rd_dom[11]_i_1 
       (.I0(req_rd_dom_2),
        .I1(req_rd_dom_3),
        .O(ce_wr_ptr_rd_dom));
FDRE \wr_ptr_rd_dom_reg[0] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[0]),
        .Q(wr_ptr_rd_dom[0]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[10] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[10]),
        .Q(wr_ptr_rd_dom[10]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[11] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[11]),
        .Q(wr_ptr_rd_dom[11]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[1] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[1]),
        .Q(wr_ptr_rd_dom[1]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[2] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[2]),
        .Q(wr_ptr_rd_dom[2]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[3] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[3]),
        .Q(wr_ptr_rd_dom[3]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[4] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[4]),
        .Q(wr_ptr_rd_dom[4]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[5] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[5]),
        .Q(wr_ptr_rd_dom[5]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[6] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[6]),
        .Q(wr_ptr_rd_dom[6]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[7] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[7]),
        .Q(wr_ptr_rd_dom[7]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[8] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[8]),
        .Q(wr_ptr_rd_dom[8]),
        .R(rst_rd_2));
FDRE \wr_ptr_rd_dom_reg[9] 
       (.C(aclk),
        .CE(ce_wr_ptr_rd_dom),
        .D(wr_ptr_sample[9]),
        .Q(wr_ptr_rd_dom[9]),
        .R(rst_rd_2));
(* counter = "2" *) 
   FDSE #(
    .INIT(1'b1)) 
     \wr_ptr_reg[0] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_7_wr_ptr_reg[0]_i_2 ),
        .Q(wr_ptr_reg[0]),
        .S(rst_wr_2));
CARRY4 \wr_ptr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_wr_ptr_reg[0]_i_2 ,\n_1_wr_ptr_reg[0]_i_2 ,\n_2_wr_ptr_reg[0]_i_2 ,\n_3_wr_ptr_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wr_ptr_reg[0]_i_2 ,\n_5_wr_ptr_reg[0]_i_2 ,\n_6_wr_ptr_reg[0]_i_2 ,\n_7_wr_ptr_reg[0]_i_2 }),
        .S({\n_0_wr_ptr[0]_i_3 ,\n_0_wr_ptr[0]_i_4 ,\n_0_wr_ptr[0]_i_5 ,\n_0_wr_ptr[0]_i_6 }));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[10] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_5_wr_ptr_reg[8]_i_1 ),
        .Q(wr_ptr_reg__0[10]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[11] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_4_wr_ptr_reg[8]_i_1 ),
        .Q(wr_ptr_reg__0[11]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[1] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_6_wr_ptr_reg[0]_i_2 ),
        .Q(wr_ptr_reg[1]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[2] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_5_wr_ptr_reg[0]_i_2 ),
        .Q(wr_ptr_reg[2]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[3] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_4_wr_ptr_reg[0]_i_2 ),
        .Q(wr_ptr_reg[3]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[4] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_7_wr_ptr_reg[4]_i_1 ),
        .Q(wr_ptr_reg[4]),
        .R(rst_wr_2));
CARRY4 \wr_ptr_reg[4]_i_1 
       (.CI(\n_0_wr_ptr_reg[0]_i_2 ),
        .CO({\n_0_wr_ptr_reg[4]_i_1 ,\n_1_wr_ptr_reg[4]_i_1 ,\n_2_wr_ptr_reg[4]_i_1 ,\n_3_wr_ptr_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wr_ptr_reg[4]_i_1 ,\n_5_wr_ptr_reg[4]_i_1 ,\n_6_wr_ptr_reg[4]_i_1 ,\n_7_wr_ptr_reg[4]_i_1 }),
        .S({\n_0_wr_ptr[4]_i_2 ,\n_0_wr_ptr[4]_i_3 ,\n_0_wr_ptr[4]_i_4 ,\n_0_wr_ptr[4]_i_5 }));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[5] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_6_wr_ptr_reg[4]_i_1 ),
        .Q(wr_ptr_reg[5]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[6] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_5_wr_ptr_reg[4]_i_1 ),
        .Q(wr_ptr_reg[6]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[7] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_4_wr_ptr_reg[4]_i_1 ),
        .Q(wr_ptr_reg[7]),
        .R(rst_wr_2));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[8] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_7_wr_ptr_reg[8]_i_1 ),
        .Q(wr_ptr_reg[8]),
        .R(rst_wr_2));
CARRY4 \wr_ptr_reg[8]_i_1 
       (.CI(\n_0_wr_ptr_reg[4]_i_1 ),
        .CO({\NLW_wr_ptr_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_wr_ptr_reg[8]_i_1 ,\n_2_wr_ptr_reg[8]_i_1 ,\n_3_wr_ptr_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wr_ptr_reg[8]_i_1 ,\n_5_wr_ptr_reg[8]_i_1 ,\n_6_wr_ptr_reg[8]_i_1 ,\n_7_wr_ptr_reg[8]_i_1 }),
        .S({\n_0_wr_ptr[8]_i_2 ,\n_0_wr_ptr[8]_i_3 ,\n_0_wr_ptr[8]_i_4 ,\n_0_wr_ptr[8]_i_5 }));
(* counter = "2" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wr_ptr_reg[9] 
       (.C(vid_io_in_clk),
        .CE(\n_0_wr_ptr[0]_i_1 ),
        .D(\n_6_wr_ptr_reg[8]_i_1 ),
        .Q(wr_ptr_reg[9]),
        .R(rst_wr_2));
LUT2 #(
    .INIT(4'h6)) 
     \wr_ptr_sample[11]_i_1 
       (.I0(ack_wr_dom_2),
        .I1(ack_wr_dom_3),
        .O(ce_wr_ptr_sample));
FDRE \wr_ptr_sample_reg[0] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[0]),
        .Q(wr_ptr_sample[0]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[10] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg__0[10]),
        .Q(wr_ptr_sample[10]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[11] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg__0[11]),
        .Q(wr_ptr_sample[11]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[1] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[1]),
        .Q(wr_ptr_sample[1]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[2] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[2]),
        .Q(wr_ptr_sample[2]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[3] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[3]),
        .Q(wr_ptr_sample[3]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[4] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[4]),
        .Q(wr_ptr_sample[4]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[5] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[5]),
        .Q(wr_ptr_sample[5]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[6] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[6]),
        .Q(wr_ptr_sample[6]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[7] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[7]),
        .Q(wr_ptr_sample[7]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[8] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[8]),
        .Q(wr_ptr_sample[8]),
        .R(rst_wr_2));
FDRE \wr_ptr_sample_reg[9] 
       (.C(vid_io_in_clk),
        .CE(ce_wr_ptr_sample),
        .D(wr_ptr_reg[9]),
        .Q(wr_ptr_sample[9]),
        .R(rst_wr_2));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_in_coupler" *) 
module v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler
   (O1,
    wr_error,
    O2,
    Q,
    idf_de,
    vid_io_in_clk,
    aclk,
    idf_data,
    vid_io_in_ce,
    aclken,
    m_axis_video_tready,
    rst,
    aresetn,
    axis_enable);
  output O1;
  output wr_error;
  output O2;
  output [34:0]Q;
  input idf_de;
  input vid_io_in_clk;
  input aclk;
  input [34:0]idf_data;
  input vid_io_in_ce;
  input aclken;
  input m_axis_video_tready;
  input rst;
  input aresetn;
  input axis_enable;

  wire O1;
  wire O2;
  wire [34:0]Q;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire first_sof_reg;
  wire [34:0]idf_data;
  wire idf_de;
  wire locked_1;
  wire locked_2;
  wire m_axis_video_tready;
  wire n_0_first_sof_reg_i_1;
  wire n_0_in_bridge_async_fifo_2_i;
  wire n_0_locked_1_i_1;
  wire n_0_locked_2_i_1;
  wire n_10_in_bridge_async_fifo_2_i;
  wire n_11_in_bridge_async_fifo_2_i;
  wire n_12_in_bridge_async_fifo_2_i;
  wire n_13_in_bridge_async_fifo_2_i;
  wire n_14_in_bridge_async_fifo_2_i;
  wire n_15_in_bridge_async_fifo_2_i;
  wire n_16_in_bridge_async_fifo_2_i;
  wire n_17_in_bridge_async_fifo_2_i;
  wire n_18_in_bridge_async_fifo_2_i;
  wire n_19_in_bridge_async_fifo_2_i;
  wire n_20_in_bridge_async_fifo_2_i;
  wire n_21_in_bridge_async_fifo_2_i;
  wire n_22_in_bridge_async_fifo_2_i;
  wire n_23_in_bridge_async_fifo_2_i;
  wire n_24_in_bridge_async_fifo_2_i;
  wire n_25_in_bridge_async_fifo_2_i;
  wire n_26_in_bridge_async_fifo_2_i;
  wire n_27_in_bridge_async_fifo_2_i;
  wire n_28_in_bridge_async_fifo_2_i;
  wire n_29_in_bridge_async_fifo_2_i;
  wire n_30_in_bridge_async_fifo_2_i;
  wire n_31_in_bridge_async_fifo_2_i;
  wire n_32_in_bridge_async_fifo_2_i;
  wire n_33_in_bridge_async_fifo_2_i;
  wire n_34_in_bridge_async_fifo_2_i;
  wire n_35_in_bridge_async_fifo_2_i;
  wire n_36_in_bridge_async_fifo_2_i;
  wire n_37_in_bridge_async_fifo_2_i;
  wire n_38_in_bridge_async_fifo_2_i;
  wire n_39_in_bridge_async_fifo_2_i;
  wire n_40_in_bridge_async_fifo_2_i;
  wire n_41_in_bridge_async_fifo_2_i;
  wire n_5_in_bridge_async_fifo_2_i;
  wire n_6_in_bridge_async_fifo_2_i;
  wire n_7_in_bridge_async_fifo_2_i;
  wire n_8_in_bridge_async_fifo_2_i;
  wire n_9_in_bridge_async_fifo_2_i;
  wire p_5_in;
  wire reset;
  wire rst;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire wr_error;

LUT6 #(
    .INIT(64'h0000F20000000000)) 
     first_sof_reg_i_1
       (.I0(p_5_in),
        .I1(n_0_in_bridge_async_fifo_2_i),
        .I2(first_sof_reg),
        .I3(locked_2),
        .I4(rst),
        .I5(aresetn),
        .O(n_0_first_sof_reg_i_1));
FDRE first_sof_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_first_sof_reg_i_1),
        .Q(first_sof_reg),
        .R(1'b0));
v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 in_bridge_async_fifo_2_i
       (.D({n_6_in_bridge_async_fifo_2_i,n_7_in_bridge_async_fifo_2_i,n_8_in_bridge_async_fifo_2_i,n_9_in_bridge_async_fifo_2_i,n_10_in_bridge_async_fifo_2_i,n_11_in_bridge_async_fifo_2_i,n_12_in_bridge_async_fifo_2_i,n_13_in_bridge_async_fifo_2_i,n_14_in_bridge_async_fifo_2_i,n_15_in_bridge_async_fifo_2_i,n_16_in_bridge_async_fifo_2_i,n_17_in_bridge_async_fifo_2_i,n_18_in_bridge_async_fifo_2_i,n_19_in_bridge_async_fifo_2_i,n_20_in_bridge_async_fifo_2_i,n_21_in_bridge_async_fifo_2_i,n_22_in_bridge_async_fifo_2_i,n_23_in_bridge_async_fifo_2_i,n_24_in_bridge_async_fifo_2_i,n_25_in_bridge_async_fifo_2_i,n_26_in_bridge_async_fifo_2_i,n_27_in_bridge_async_fifo_2_i,n_28_in_bridge_async_fifo_2_i,n_29_in_bridge_async_fifo_2_i,n_30_in_bridge_async_fifo_2_i,n_31_in_bridge_async_fifo_2_i,n_32_in_bridge_async_fifo_2_i,n_33_in_bridge_async_fifo_2_i,n_34_in_bridge_async_fifo_2_i,n_35_in_bridge_async_fifo_2_i,n_36_in_bridge_async_fifo_2_i,n_37_in_bridge_async_fifo_2_i,n_38_in_bridge_async_fifo_2_i,n_39_in_bridge_async_fifo_2_i,n_40_in_bridge_async_fifo_2_i}),
        .DOPBDOP({n_0_in_bridge_async_fifo_2_i,p_5_in}),
        .E(n_41_in_bridge_async_fifo_2_i),
        .I1(O2),
        .O1(O1),
        .O2(n_5_in_bridge_async_fifo_2_i),
        .SR(reset),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .first_sof_reg(first_sof_reg),
        .idf_data(idf_data),
        .idf_de(idf_de),
        .m_axis_video_tready(m_axis_video_tready),
        .p_0_in_0(locked_2),
        .rst(rst),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .wr_error(wr_error));
LUT3 #(
    .INIT(8'hB8)) 
     locked_1_i_1
       (.I0(axis_enable),
        .I1(aclken),
        .I2(locked_1),
        .O(n_0_locked_1_i_1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     locked_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_locked_1_i_1),
        .Q(locked_1),
        .R(reset));
LUT3 #(
    .INIT(8'hB8)) 
     locked_2_i_1
       (.I0(locked_1),
        .I1(aclken),
        .I2(locked_2),
        .O(n_0_locked_2_i_1));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     locked_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_0_locked_2_i_1),
        .Q(locked_2),
        .R(reset));
FDRE \rd_data_reg[0] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_40_in_bridge_async_fifo_2_i),
        .Q(Q[0]),
        .R(reset));
FDRE \rd_data_reg[10] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_30_in_bridge_async_fifo_2_i),
        .Q(Q[10]),
        .R(reset));
FDRE \rd_data_reg[11] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_29_in_bridge_async_fifo_2_i),
        .Q(Q[11]),
        .R(reset));
FDRE \rd_data_reg[12] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_28_in_bridge_async_fifo_2_i),
        .Q(Q[12]),
        .R(reset));
FDRE \rd_data_reg[13] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_27_in_bridge_async_fifo_2_i),
        .Q(Q[13]),
        .R(reset));
FDRE \rd_data_reg[14] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_26_in_bridge_async_fifo_2_i),
        .Q(Q[14]),
        .R(reset));
FDRE \rd_data_reg[15] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_25_in_bridge_async_fifo_2_i),
        .Q(Q[15]),
        .R(reset));
FDRE \rd_data_reg[16] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_24_in_bridge_async_fifo_2_i),
        .Q(Q[16]),
        .R(reset));
FDRE \rd_data_reg[17] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_23_in_bridge_async_fifo_2_i),
        .Q(Q[17]),
        .R(reset));
FDRE \rd_data_reg[18] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_22_in_bridge_async_fifo_2_i),
        .Q(Q[18]),
        .R(reset));
FDRE \rd_data_reg[19] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_21_in_bridge_async_fifo_2_i),
        .Q(Q[19]),
        .R(reset));
FDRE \rd_data_reg[1] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_39_in_bridge_async_fifo_2_i),
        .Q(Q[1]),
        .R(reset));
FDRE \rd_data_reg[20] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_20_in_bridge_async_fifo_2_i),
        .Q(Q[20]),
        .R(reset));
FDRE \rd_data_reg[21] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_19_in_bridge_async_fifo_2_i),
        .Q(Q[21]),
        .R(reset));
FDRE \rd_data_reg[22] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_18_in_bridge_async_fifo_2_i),
        .Q(Q[22]),
        .R(reset));
FDRE \rd_data_reg[23] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_17_in_bridge_async_fifo_2_i),
        .Q(Q[23]),
        .R(reset));
FDRE \rd_data_reg[24] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_16_in_bridge_async_fifo_2_i),
        .Q(Q[24]),
        .R(reset));
FDRE \rd_data_reg[25] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_15_in_bridge_async_fifo_2_i),
        .Q(Q[25]),
        .R(reset));
FDRE \rd_data_reg[26] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_14_in_bridge_async_fifo_2_i),
        .Q(Q[26]),
        .R(reset));
FDRE \rd_data_reg[27] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_13_in_bridge_async_fifo_2_i),
        .Q(Q[27]),
        .R(reset));
FDRE \rd_data_reg[28] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_12_in_bridge_async_fifo_2_i),
        .Q(Q[28]),
        .R(reset));
FDRE \rd_data_reg[29] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_11_in_bridge_async_fifo_2_i),
        .Q(Q[29]),
        .R(reset));
FDRE \rd_data_reg[2] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_38_in_bridge_async_fifo_2_i),
        .Q(Q[2]),
        .R(reset));
FDRE \rd_data_reg[30] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_10_in_bridge_async_fifo_2_i),
        .Q(Q[30]),
        .R(reset));
FDRE \rd_data_reg[31] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_9_in_bridge_async_fifo_2_i),
        .Q(Q[31]),
        .R(reset));
FDRE \rd_data_reg[32] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_8_in_bridge_async_fifo_2_i),
        .Q(Q[32]),
        .R(reset));
FDRE \rd_data_reg[33] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_7_in_bridge_async_fifo_2_i),
        .Q(Q[33]),
        .R(reset));
FDRE \rd_data_reg[34] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_6_in_bridge_async_fifo_2_i),
        .Q(Q[34]),
        .R(reset));
FDRE \rd_data_reg[3] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_37_in_bridge_async_fifo_2_i),
        .Q(Q[3]),
        .R(reset));
FDRE \rd_data_reg[4] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_36_in_bridge_async_fifo_2_i),
        .Q(Q[4]),
        .R(reset));
FDRE \rd_data_reg[5] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_35_in_bridge_async_fifo_2_i),
        .Q(Q[5]),
        .R(reset));
FDRE \rd_data_reg[6] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_34_in_bridge_async_fifo_2_i),
        .Q(Q[6]),
        .R(reset));
FDRE \rd_data_reg[7] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_33_in_bridge_async_fifo_2_i),
        .Q(Q[7]),
        .R(reset));
FDRE \rd_data_reg[8] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_32_in_bridge_async_fifo_2_i),
        .Q(Q[8]),
        .R(reset));
FDRE \rd_data_reg[9] 
       (.C(aclk),
        .CE(n_41_in_bridge_async_fifo_2_i),
        .D(n_31_in_bridge_async_fifo_2_i),
        .Q(Q[9]),
        .R(reset));
FDRE valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(n_5_in_bridge_async_fifo_2_i),
        .Q(O2),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* C_M_AXIS_VIDEO_DATA_WIDTH = "8" *) (* C_M_AXIS_VIDEO_FORMAT = "6" *) 
(* VID_IN_DATA_WIDTH = "32" *) (* C_M_AXIS_VIDEO_TDATA_WIDTH = "32" *) (* RAM_ADDR_BITS = "10" *) 
(* HYSTERESIS_LEVEL = "12" *) (* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_vid_in_axi4s_top" *) 
module v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top
   (vid_io_in_clk,
    rst,
    vid_io_in_ce,
    vid_active_video,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data,
    aclk,
    aclken,
    aresetn,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tuser,
    m_axis_video_tlast,
    fid,
    vtd_active_video,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    wr_error,
    empty,
    axis_enable);
  input vid_io_in_clk;
  input rst;
  input vid_io_in_ce;
  input vid_active_video;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [31:0]vid_data;
  input aclk;
  input aclken;
  input aresetn;
  output [31:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
  output fid;
  output vtd_active_video;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output wr_error;
  output empty;
  input axis_enable;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire axis_enable;
  wire empty;
  wire fid;
  wire [34:0]idf_data;
  wire idf_de;
  wire [31:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire rst;
  wire vid_active_video;
  wire [31:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_active_video;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;
  wire wr_error;

v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler in_coupler_i
       (.O1(empty),
        .O2(m_axis_video_tvalid),
        .Q({fid,m_axis_video_tuser,m_axis_video_tlast,m_axis_video_tdata}),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .axis_enable(axis_enable),
        .idf_data(idf_data),
        .idf_de(idf_de),
        .m_axis_video_tready(m_axis_video_tready),
        .rst(rst),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .wr_error(wr_error));
v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter vid_in_formatter
       (.O1(vtd_active_video),
        .idf_data(idf_data),
        .idf_de(idf_de),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_in_ce(vid_io_in_ce),
        .vid_io_in_clk(vid_io_in_clk),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtd_field_id(vtd_field_id),
        .vtd_hblank(vtd_hblank),
        .vtd_hsync(vtd_hsync),
        .vtd_vblank(vtd_vblank),
        .vtd_vsync(vtd_vsync));
endmodule

(* ORIG_REF_NAME = "v_vid_in_axi4s_v3_0_vid_in_formatter" *) 
module v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter
   (O1,
    vtd_vblank,
    vtd_hblank,
    vtd_vsync,
    vtd_hsync,
    vtd_field_id,
    idf_data,
    idf_de,
    vid_io_in_ce,
    vid_active_video,
    vid_io_in_clk,
    vid_vblank,
    vid_hblank,
    vid_vsync,
    vid_hsync,
    vid_field_id,
    vid_data);
  output O1;
  output vtd_vblank;
  output vtd_hblank;
  output vtd_vsync;
  output vtd_hsync;
  output vtd_field_id;
  output [34:0]idf_data;
  output idf_de;
  input vid_io_in_ce;
  input vid_active_video;
  input vid_io_in_clk;
  input vid_vblank;
  input vid_hblank;
  input vid_vsync;
  input vid_hsync;
  input vid_field_id;
  input [31:0]vid_data;

  wire O1;
  wire [31:0]data_1;
  wire [31:0]data_2;
  wire de_2;
  wire field_id_2;
  wire [34:0]idf_data;
  wire idf_de;
  wire n_0_eol_i_1;
  wire n_0_vert_blanking_intvl_i_1;
  wire n_0_vert_blanking_intvl_reg;
  wire sof;
  wire sof0;
  wire v_blank_sync_1;
  wire v_blank_sync_2;
  wire vid_active_video;
  wire [31:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_in_ce;
  wire vid_io_in_clk;
  wire vid_vblank;
  wire vid_vsync;
  wire vtd_field_id;
  wire vtd_hblank;
  wire vtd_hsync;
  wire vtd_vblank;
  wire vtd_vsync;

FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[0]),
        .Q(data_1[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[10]),
        .Q(data_1[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[11]),
        .Q(data_1[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[12]),
        .Q(data_1[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[13]),
        .Q(data_1[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[14]),
        .Q(data_1[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[15]),
        .Q(data_1[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[16]),
        .Q(data_1[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[17]),
        .Q(data_1[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[18]),
        .Q(data_1[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[19]),
        .Q(data_1[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[1]),
        .Q(data_1[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[20]),
        .Q(data_1[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[21]),
        .Q(data_1[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[22]),
        .Q(data_1[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[23]),
        .Q(data_1[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[24]),
        .Q(data_1[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[25]),
        .Q(data_1[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[26]),
        .Q(data_1[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[27]),
        .Q(data_1[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[28]),
        .Q(data_1[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[29]),
        .Q(data_1[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[2]),
        .Q(data_1[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[30]),
        .Q(data_1[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[31]),
        .Q(data_1[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[3]),
        .Q(data_1[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[4]),
        .Q(data_1[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[5]),
        .Q(data_1[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[6]),
        .Q(data_1[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[7]),
        .Q(data_1[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[8]),
        .Q(data_1[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_1_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_data[9]),
        .Q(data_1[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[0]),
        .Q(data_2[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[10]),
        .Q(data_2[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[11]),
        .Q(data_2[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[12]),
        .Q(data_2[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[13]),
        .Q(data_2[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[14]),
        .Q(data_2[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[15]),
        .Q(data_2[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[16]),
        .Q(data_2[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[17]),
        .Q(data_2[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[18]),
        .Q(data_2[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[19]),
        .Q(data_2[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[1]),
        .Q(data_2[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[20]),
        .Q(data_2[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[21]),
        .Q(data_2[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[22]),
        .Q(data_2[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[23]),
        .Q(data_2[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[24]),
        .Q(data_2[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[25]),
        .Q(data_2[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[26]),
        .Q(data_2[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[27]),
        .Q(data_2[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[28]),
        .Q(data_2[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[29]),
        .Q(data_2[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[2]),
        .Q(data_2[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[30]),
        .Q(data_2[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[31]),
        .Q(data_2[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[3]),
        .Q(data_2[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[4]),
        .Q(data_2[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[5]),
        .Q(data_2[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[6]),
        .Q(data_2[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[7]),
        .Q(data_2[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[8]),
        .Q(data_2[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_2_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_1[9]),
        .Q(data_2[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[0] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[0]),
        .Q(idf_data[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[10] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[10]),
        .Q(idf_data[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[11] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[11]),
        .Q(idf_data[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[12] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[12]),
        .Q(idf_data[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[13] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[13]),
        .Q(idf_data[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[14] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[14]),
        .Q(idf_data[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[15] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[15]),
        .Q(idf_data[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[16] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[16]),
        .Q(idf_data[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[17] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[17]),
        .Q(idf_data[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[18] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[18]),
        .Q(idf_data[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[19] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[19]),
        .Q(idf_data[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[1] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[1]),
        .Q(idf_data[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[20] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[20]),
        .Q(idf_data[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[21] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[21]),
        .Q(idf_data[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[22] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[22]),
        .Q(idf_data[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[23] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[23]),
        .Q(idf_data[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[24] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[24]),
        .Q(idf_data[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[25] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[25]),
        .Q(idf_data[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[26] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[26]),
        .Q(idf_data[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[27] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[27]),
        .Q(idf_data[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[28] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[28]),
        .Q(idf_data[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[29] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[29]),
        .Q(idf_data[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[2] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[2]),
        .Q(idf_data[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[30] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[30]),
        .Q(idf_data[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[31] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[31]),
        .Q(idf_data[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[3] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[3]),
        .Q(idf_data[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[4] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[4]),
        .Q(idf_data[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[5] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[5]),
        .Q(idf_data[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[6] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[6]),
        .Q(idf_data[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[7] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[7]),
        .Q(idf_data[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[8] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[8]),
        .Q(idf_data[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \data_3_reg[9] 
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(data_2[9]),
        .Q(idf_data[9]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_active_video),
        .Q(O1),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(O1),
        .Q(de_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     de_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(de_2),
        .Q(idf_de),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h2)) 
     eol_i_1
       (.I0(de_2),
        .I1(O1),
        .O(n_0_eol_i_1));
FDRE eol_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(n_0_eol_i_1),
        .Q(idf_data[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_field_id),
        .Q(vtd_field_id),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vtd_field_id),
        .Q(field_id_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     field_id_3_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(field_id_2),
        .Q(idf_data[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     hblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hblank),
        .Q(vtd_hblank),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     hsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_hsync),
        .Q(vtd_hsync),
        .R(1'b0));
FDRE sof_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof),
        .Q(idf_data[33]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h40)) 
     sof_i_1
       (.I0(de_2),
        .I1(O1),
        .I2(n_0_vert_blanking_intvl_reg),
        .O(sof0));
FDRE sof_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(sof0),
        .Q(sof),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     v_blank_sync_2_i_1
       (.I0(vtd_vblank),
        .I1(vtd_vsync),
        .O(v_blank_sync_1));
FDRE #(
    .INIT(1'b0)) 
     v_blank_sync_2_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(v_blank_sync_1),
        .Q(v_blank_sync_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     vblank_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vblank),
        .Q(vtd_vblank),
        .R(1'b0));
LUT6 #(
    .INIT(64'hB0B0F0F0FFB0F0F0)) 
     vert_blanking_intvl_i_1
       (.I0(de_2),
        .I1(O1),
        .I2(n_0_vert_blanking_intvl_reg),
        .I3(v_blank_sync_1),
        .I4(vid_io_in_ce),
        .I5(v_blank_sync_2),
        .O(n_0_vert_blanking_intvl_i_1));
FDRE #(
    .INIT(1'b0)) 
     vert_blanking_intvl_reg
       (.C(vid_io_in_clk),
        .CE(1'b1),
        .D(n_0_vert_blanking_intvl_i_1),
        .Q(n_0_vert_blanking_intvl_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     vsync_1_reg
       (.C(vid_io_in_clk),
        .CE(vid_io_in_ce),
        .D(vid_vsync),
        .Q(vtd_vsync),
        .R(1'b0));
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
