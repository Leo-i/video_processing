-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
-- Date        : Wed Mar 25 20:24:21 2015
-- Host        : Gustavo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/users/gustavo/uoft/digital_systems_design/holeinthewall9/ip/ip_repo/ov7670_decoder_1.4/src/v_vid_in_axi4s_0/v_vid_in_axi4s_0_stub.vhdl
-- Design      : v_vid_in_axi4s_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity v_vid_in_axi4s_0 is
  Port ( 
    vid_io_in_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    empty : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );

end v_vid_in_axi4s_0;

architecture stub of v_vid_in_axi4s_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "vid_io_in_clk,rst,vid_io_in_ce,vid_active_video,vid_vblank,vid_hblank,vid_vsync,vid_hsync,vid_field_id,vid_data[31:0],aclk,aclken,aresetn,m_axis_video_tdata[31:0],m_axis_video_tvalid,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tlast,fid,vtd_active_video,vtd_vblank,vtd_hblank,vtd_vsync,vtd_hsync,vtd_field_id,wr_error,empty,axis_enable";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.1";
begin
end;
