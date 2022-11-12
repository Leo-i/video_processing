-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.1 (win64) Build 881834 Fri Apr  4 14:15:54 MDT 2014
-- Date        : Wed Mar 25 20:24:22 2015
-- Host        : Gustavo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/users/gustavo/uoft/digital_systems_design/holeinthewall9/ip/ip_repo/ov7670_decoder_1.4/src/v_vid_in_axi4s_0/v_vid_in_axi4s_0_funcsim.vhdl
-- Design      : v_vid_in_axi4s_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 is
  port (
    DOPBDOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    O2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 34 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    idf_de : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    idf_data : in STD_LOGIC_VECTOR ( 34 downto 0 );
    vid_io_in_ce : in STD_LOGIC;
    first_sof_reg : in STD_LOGIC;
    I1 : in STD_LOGIC;
    aclken : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC;
    rst : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 : entity is "v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2";
end v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2;

architecture STRUCTURE of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2 is
  signal \^dopbdop\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o1\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_rd_dom_1 : STD_LOGIC;
  signal ack_rd_dom_2 : STD_LOGIC;
  signal ack_rd_dom_3 : STD_LOGIC;
  signal ack_wr_dom_1 : STD_LOGIC;
  signal ack_wr_dom_2 : STD_LOGIC;
  signal ack_wr_dom_3 : STD_LOGIC;
  signal ce_rd_ptr_sample : STD_LOGIC;
  signal ce_rd_ptr_wr_dom : STD_LOGIC;
  signal ce_wr_ptr_rd_dom : STD_LOGIC;
  signal ce_wr_ptr_sample : STD_LOGIC;
  signal empty0 : STD_LOGIC;
  signal fifo_empty : STD_LOGIC;
  signal fifo_eol : STD_LOGIC;
  signal fifo_full : STD_LOGIC;
  signal full_comb : STD_LOGIC;
  signal level_rd : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal n_0_empty_i_2 : STD_LOGIC;
  signal n_0_empty_i_3 : STD_LOGIC;
  signal n_0_fifo_ram_reg_i_1 : STD_LOGIC;
  signal n_0_full_i_10 : STD_LOGIC;
  signal n_0_full_i_11 : STD_LOGIC;
  signal n_0_full_i_12 : STD_LOGIC;
  signal n_0_full_i_13 : STD_LOGIC;
  signal n_0_full_i_14 : STD_LOGIC;
  signal n_0_full_i_3 : STD_LOGIC;
  signal n_0_full_i_4 : STD_LOGIC;
  signal n_0_full_i_5 : STD_LOGIC;
  signal n_0_full_i_7 : STD_LOGIC;
  signal n_0_full_i_8 : STD_LOGIC;
  signal n_0_full_i_9 : STD_LOGIC;
  signal n_0_full_reg_i_2 : STD_LOGIC;
  signal n_0_full_reg_i_6 : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[3]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[7]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_2\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_3\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_4\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom[9]_i_5\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal n_0_ram_out_rd_error_i_1 : STD_LOGIC;
  signal n_0_ram_out_rd_error_i_2 : STD_LOGIC;
  signal \n_0_rd_data[31]_i_4\ : STD_LOGIC;
  signal n_0_rd_error_i_1 : STD_LOGIC;
  signal n_0_rd_error_i_2 : STD_LOGIC;
  signal n_0_rd_error_i_3 : STD_LOGIC;
  signal n_0_rd_error_i_4 : STD_LOGIC;
  signal n_0_rd_error_i_5 : STD_LOGIC;
  signal n_0_rd_error_i_6 : STD_LOGIC;
  signal n_0_rd_error_i_7 : STD_LOGIC;
  signal \n_0_rd_ptr[0]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr[0]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr[0]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr[0]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr[4]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr[4]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr[4]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr[4]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr[8]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr[8]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr[8]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr[8]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[0]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[1]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[2]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[3]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[4]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[5]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[6]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[7]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[8]\ : STD_LOGIC;
  signal \n_0_rd_ptr_reg_rep[9]\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[3]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_2\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[7]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_1\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_3\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_4\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_5\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_6\ : STD_LOGIC;
  signal \n_0_rd_ptr_rep[9]_i_7\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[0]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[10]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[1]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[2]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[3]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[4]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[5]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[6]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[7]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[8]\ : STD_LOGIC;
  signal \n_0_rd_ptr_wr_dom_reg[9]\ : STD_LOGIC;
  signal n_0_valid_i_3 : STD_LOGIC;
  signal n_0_valid_i_4 : STD_LOGIC;
  signal n_0_wr_error_i_1 : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_1\ : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_3\ : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_4\ : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_5\ : STD_LOGIC;
  signal \n_0_wr_ptr[0]_i_6\ : STD_LOGIC;
  signal \n_0_wr_ptr[4]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr[4]_i_3\ : STD_LOGIC;
  signal \n_0_wr_ptr[4]_i_4\ : STD_LOGIC;
  signal \n_0_wr_ptr[4]_i_5\ : STD_LOGIC;
  signal \n_0_wr_ptr[8]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr[8]_i_3\ : STD_LOGIC;
  signal \n_0_wr_ptr[8]_i_4\ : STD_LOGIC;
  signal \n_0_wr_ptr[8]_i_5\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal n_1_full_reg_i_2 : STD_LOGIC;
  signal n_1_full_reg_i_6 : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_1_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_1_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_1_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal n_2_full_reg_i_1 : STD_LOGIC;
  signal n_2_full_reg_i_2 : STD_LOGIC;
  signal n_2_full_reg_i_6 : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_2_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_2_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_2_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal n_36_fifo_ram_reg : STD_LOGIC;
  signal n_37_fifo_ram_reg : STD_LOGIC;
  signal n_38_fifo_ram_reg : STD_LOGIC;
  signal n_39_fifo_ram_reg : STD_LOGIC;
  signal n_3_full_reg_i_1 : STD_LOGIC;
  signal n_3_full_reg_i_2 : STD_LOGIC;
  signal n_3_full_reg_i_6 : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[3]_i_1\ : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_ptr_diff_rd_dom_reg[9]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_3_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal \n_3_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal n_40_fifo_ram_reg : STD_LOGIC;
  signal n_41_fifo_ram_reg : STD_LOGIC;
  signal n_42_fifo_ram_reg : STD_LOGIC;
  signal n_43_fifo_ram_reg : STD_LOGIC;
  signal n_44_fifo_ram_reg : STD_LOGIC;
  signal n_45_fifo_ram_reg : STD_LOGIC;
  signal n_46_fifo_ram_reg : STD_LOGIC;
  signal n_47_fifo_ram_reg : STD_LOGIC;
  signal n_48_fifo_ram_reg : STD_LOGIC;
  signal n_49_fifo_ram_reg : STD_LOGIC;
  signal \n_4_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_4_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_4_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal n_50_fifo_ram_reg : STD_LOGIC;
  signal n_51_fifo_ram_reg : STD_LOGIC;
  signal n_52_fifo_ram_reg : STD_LOGIC;
  signal n_53_fifo_ram_reg : STD_LOGIC;
  signal n_54_fifo_ram_reg : STD_LOGIC;
  signal n_55_fifo_ram_reg : STD_LOGIC;
  signal n_56_fifo_ram_reg : STD_LOGIC;
  signal n_57_fifo_ram_reg : STD_LOGIC;
  signal n_58_fifo_ram_reg : STD_LOGIC;
  signal n_59_fifo_ram_reg : STD_LOGIC;
  signal \n_5_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_5_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_5_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal n_60_fifo_ram_reg : STD_LOGIC;
  signal n_61_fifo_ram_reg : STD_LOGIC;
  signal n_62_fifo_ram_reg : STD_LOGIC;
  signal n_63_fifo_ram_reg : STD_LOGIC;
  signal n_64_fifo_ram_reg : STD_LOGIC;
  signal n_65_fifo_ram_reg : STD_LOGIC;
  signal n_66_fifo_ram_reg : STD_LOGIC;
  signal n_67_fifo_ram_reg : STD_LOGIC;
  signal \n_6_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_6_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal \n_6_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[3]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[7]_i_1\ : STD_LOGIC;
  signal \n_7_rd_ptr_reg_rep[9]_i_2\ : STD_LOGIC;
  signal \n_7_wr_ptr_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_wr_ptr_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_wr_ptr_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ptr_diff_rd_dom_comb0_out : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \ptr_diff_rd_dom_comb0_out__0\ : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal ram_out_rd_error : STD_LOGIC;
  signal rd_ptr_reg : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \rd_ptr_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_ptr_sample : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rd_to_wr_req : STD_LOGIC;
  signal req_rd_dom_1 : STD_LOGIC;
  signal req_rd_dom_2 : STD_LOGIC;
  signal req_rd_dom_3 : STD_LOGIC;
  signal req_wr_dom_1 : STD_LOGIC;
  signal req_wr_dom_2 : STD_LOGIC;
  signal req_wr_dom_3 : STD_LOGIC;
  signal rst_rd_1 : STD_LOGIC;
  signal rst_rd_2 : STD_LOGIC;
  signal rst_wr_1 : STD_LOGIC;
  signal rst_wr_2 : STD_LOGIC;
  signal valid2_out : STD_LOGIC;
  signal \^wr_error\ : STD_LOGIC;
  signal wr_ptr_rd_dom : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \wr_ptr_reg__0\ : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal wr_ptr_sample : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_to_rd_req : STD_LOGIC;
  signal NLW_fifo_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_fifo_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_full_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_full_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_reg_i_6_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ptr_diff_rd_dom_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_ptr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rd_ptr_reg_rep[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wr_ptr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ack_rd_dom_1_reg : label is std.standard.true;
  attribute ASYNC_REG of ack_rd_dom_2_reg : label is std.standard.true;
  attribute ASYNC_REG of ack_rd_dom_3_reg : label is std.standard.true;
  attribute ASYNC_REG of ack_wr_dom_1_reg : label is std.standard.true;
  attribute ASYNC_REG of ack_wr_dom_2_reg : label is std.standard.true;
  attribute ASYNC_REG of ack_wr_dom_3_reg : label is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of empty_i_3 : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of fifo_ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of fifo_ram_reg : label is 35840;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of fifo_ram_reg : label is "fifo_ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of fifo_ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of fifo_ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of fifo_ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of fifo_ram_reg : label is 35;
  attribute SOFT_HLUTNM of \rd_data[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rd_data[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_data[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rd_data[31]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_data[33]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rd_data[34]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rd_error_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rd_error_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of rd_error_i_6 : label is "soft_lutpair5";
  attribute counter : integer;
  attribute counter of \rd_ptr_reg[0]\ : label is 3;
  attribute counter of \rd_ptr_reg[10]\ : label is 3;
  attribute counter of \rd_ptr_reg[11]\ : label is 3;
  attribute counter of \rd_ptr_reg[1]\ : label is 3;
  attribute counter of \rd_ptr_reg[2]\ : label is 3;
  attribute counter of \rd_ptr_reg[3]\ : label is 3;
  attribute counter of \rd_ptr_reg[4]\ : label is 3;
  attribute counter of \rd_ptr_reg[5]\ : label is 3;
  attribute counter of \rd_ptr_reg[6]\ : label is 3;
  attribute counter of \rd_ptr_reg[7]\ : label is 3;
  attribute counter of \rd_ptr_reg[8]\ : label is 3;
  attribute counter of \rd_ptr_reg[9]\ : label is 3;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \rd_ptr_reg_rep[0]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[1]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[2]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[3]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[4]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[5]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \rd_ptr_reg_rep[9]\ : label is "no";
  attribute SOFT_HLUTNM of \rd_ptr_rep[9]_i_4\ : label is "soft_lutpair1";
  attribute ASYNC_REG of req_rd_dom_1_reg : label is std.standard.true;
  attribute ASYNC_REG of req_rd_dom_2_reg : label is std.standard.true;
  attribute ASYNC_REG of req_rd_dom_3_reg : label is std.standard.true;
  attribute ASYNC_REG of req_wr_dom_1_reg : label is std.standard.true;
  attribute ASYNC_REG of req_wr_dom_2_reg : label is std.standard.true;
  attribute ASYNC_REG of req_wr_dom_3_reg : label is std.standard.true;
  attribute ASYNC_REG of rst_rd_1_reg : label is std.standard.true;
  attribute ASYNC_REG of rst_rd_2_reg : label is std.standard.true;
  attribute ASYNC_REG of rst_wr_1_reg : label is std.standard.true;
  attribute ASYNC_REG of rst_wr_2_reg : label is std.standard.true;
  attribute counter of \wr_ptr_reg[0]\ : label is 2;
  attribute counter of \wr_ptr_reg[10]\ : label is 2;
  attribute counter of \wr_ptr_reg[11]\ : label is 2;
  attribute counter of \wr_ptr_reg[1]\ : label is 2;
  attribute counter of \wr_ptr_reg[2]\ : label is 2;
  attribute counter of \wr_ptr_reg[3]\ : label is 2;
  attribute counter of \wr_ptr_reg[4]\ : label is 2;
  attribute counter of \wr_ptr_reg[5]\ : label is 2;
  attribute counter of \wr_ptr_reg[6]\ : label is 2;
  attribute counter of \wr_ptr_reg[7]\ : label is 2;
  attribute counter of \wr_ptr_reg[8]\ : label is 2;
  attribute counter of \wr_ptr_reg[9]\ : label is 2;
begin
  DOPBDOP(1 downto 0) <= \^dopbdop\(1 downto 0);
  O1 <= \^o1\;
  SR(0) <= \^sr\(0);
  wr_error <= \^wr_error\;
ack_rd_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_wr_dom_3,
      Q => ack_rd_dom_1,
      R => rst_rd_2
    );
ack_rd_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ack_rd_dom_1,
      Q => ack_rd_dom_2,
      R => rst_rd_2
    );
ack_rd_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ack_rd_dom_2,
      Q => ack_rd_dom_3,
      R => rst_rd_2
    );
ack_wr_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_rd_dom_3,
      Q => ack_wr_dom_1,
      R => rst_wr_2
    );
ack_wr_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => ack_wr_dom_1,
      Q => ack_wr_dom_2,
      R => rst_wr_2
    );
ack_wr_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => ack_wr_dom_2,
      Q => ack_wr_dom_3,
      R => rst_wr_2
    );
empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFFFEFAA"
    )
    port map (
      I0 => fifo_empty,
      I1 => m_axis_video_tready,
      I2 => I1,
      I3 => n_0_empty_i_2,
      I4 => n_0_empty_i_3,
      I5 => \n_0_rd_ptr_rep[9]_i_3\,
      O => empty0
    );
empty_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dopbdop\(0),
      I2 => \^dopbdop\(1),
      I3 => p_0_in_0,
      O => n_0_empty_i_2
    );
empty_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => fifo_full,
      I1 => level_rd(2),
      I2 => level_rd(3),
      I3 => n_0_rd_error_i_7,
      O => n_0_empty_i_3
    );
empty_reg: unisim.vcomponents.FDSE
    port map (
      C => aclk,
      CE => '1',
      D => empty0,
      Q => fifo_empty,
      S => rst_rd_2
    );
fifo_ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => wr_ptr_reg(9 downto 0),
      ADDRARDADDR(4) => '1',
      ADDRARDADDR(3) => '1',
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14) => \n_0_rd_ptr_reg_rep[9]\,
      ADDRBWRADDR(13) => \n_0_rd_ptr_reg_rep[8]\,
      ADDRBWRADDR(12) => \n_0_rd_ptr_reg_rep[7]\,
      ADDRBWRADDR(11) => \n_0_rd_ptr_reg_rep[6]\,
      ADDRBWRADDR(10) => \n_0_rd_ptr_reg_rep[5]\,
      ADDRBWRADDR(9) => \n_0_rd_ptr_reg_rep[4]\,
      ADDRBWRADDR(8) => \n_0_rd_ptr_reg_rep[3]\,
      ADDRBWRADDR(7) => \n_0_rd_ptr_reg_rep[2]\,
      ADDRBWRADDR(6) => \n_0_rd_ptr_reg_rep[1]\,
      ADDRBWRADDR(5) => \n_0_rd_ptr_reg_rep[0]\,
      ADDRBWRADDR(4) => '1',
      ADDRBWRADDR(3) => '1',
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_fifo_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_fifo_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => vid_io_in_clk,
      CLKBWRCLK => aclk,
      DBITERR => NLW_fifo_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => idf_data(31 downto 0),
      DIBDI(31) => '1',
      DIBDI(30) => '1',
      DIBDI(29) => '1',
      DIBDI(28) => '1',
      DIBDI(27) => '1',
      DIBDI(26) => '1',
      DIBDI(25) => '1',
      DIBDI(24) => '1',
      DIBDI(23) => '1',
      DIBDI(22) => '1',
      DIBDI(21) => '1',
      DIBDI(20) => '1',
      DIBDI(19) => '1',
      DIBDI(18) => '1',
      DIBDI(17) => '1',
      DIBDI(16) => '1',
      DIBDI(15) => '1',
      DIBDI(14) => '1',
      DIBDI(13) => '1',
      DIBDI(12) => '1',
      DIBDI(11) => '1',
      DIBDI(10) => '1',
      DIBDI(9) => '1',
      DIBDI(8) => '1',
      DIBDI(7) => '1',
      DIBDI(6) => '1',
      DIBDI(5) => '1',
      DIBDI(4) => '1',
      DIBDI(3) => '1',
      DIBDI(2) => '1',
      DIBDI(1) => '1',
      DIBDI(0) => '1',
      DIPADIP(3) => '0',
      DIPADIP(2 downto 0) => idf_data(34 downto 32),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '1',
      DIPBDIP(1) => '1',
      DIPBDIP(0) => '1',
      DOADO(31 downto 0) => NLW_fifo_ram_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31) => n_36_fifo_ram_reg,
      DOBDO(30) => n_37_fifo_ram_reg,
      DOBDO(29) => n_38_fifo_ram_reg,
      DOBDO(28) => n_39_fifo_ram_reg,
      DOBDO(27) => n_40_fifo_ram_reg,
      DOBDO(26) => n_41_fifo_ram_reg,
      DOBDO(25) => n_42_fifo_ram_reg,
      DOBDO(24) => n_43_fifo_ram_reg,
      DOBDO(23) => n_44_fifo_ram_reg,
      DOBDO(22) => n_45_fifo_ram_reg,
      DOBDO(21) => n_46_fifo_ram_reg,
      DOBDO(20) => n_47_fifo_ram_reg,
      DOBDO(19) => n_48_fifo_ram_reg,
      DOBDO(18) => n_49_fifo_ram_reg,
      DOBDO(17) => n_50_fifo_ram_reg,
      DOBDO(16) => n_51_fifo_ram_reg,
      DOBDO(15) => n_52_fifo_ram_reg,
      DOBDO(14) => n_53_fifo_ram_reg,
      DOBDO(13) => n_54_fifo_ram_reg,
      DOBDO(12) => n_55_fifo_ram_reg,
      DOBDO(11) => n_56_fifo_ram_reg,
      DOBDO(10) => n_57_fifo_ram_reg,
      DOBDO(9) => n_58_fifo_ram_reg,
      DOBDO(8) => n_59_fifo_ram_reg,
      DOBDO(7) => n_60_fifo_ram_reg,
      DOBDO(6) => n_61_fifo_ram_reg,
      DOBDO(5) => n_62_fifo_ram_reg,
      DOBDO(4) => n_63_fifo_ram_reg,
      DOBDO(3) => n_64_fifo_ram_reg,
      DOBDO(2) => n_65_fifo_ram_reg,
      DOBDO(1) => n_66_fifo_ram_reg,
      DOBDO(0) => n_67_fifo_ram_reg,
      DOPADOP(3 downto 0) => NLW_fifo_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3) => NLW_fifo_ram_reg_DOPBDOP_UNCONNECTED(3),
      DOPBDOP(2 downto 1) => \^dopbdop\(1 downto 0),
      DOPBDOP(0) => fifo_eol,
      ECCPARITY(7 downto 0) => NLW_fifo_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => idf_de,
      ENBWREN => n_0_fifo_ram_reg_i_1,
      INJECTDBITERR => NLW_fifo_ram_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_fifo_ram_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_fifo_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => rst_rd_2,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_fifo_ram_reg_SBITERR_UNCONNECTED,
      WEA(3) => vid_io_in_ce,
      WEA(2) => vid_io_in_ce,
      WEA(1) => vid_io_in_ce,
      WEA(0) => vid_io_in_ce,
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
fifo_ram_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF45"
    )
    port map (
      I0 => n_0_rd_error_i_2,
      I1 => first_sof_reg,
      I2 => n_0_rd_error_i_3,
      I3 => rst_rd_2,
      I4 => n_0_rd_error_i_4,
      O => n_0_fifo_ram_reg_i_1
    );
full_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(4),
      I1 => \n_0_rd_ptr_wr_dom_reg[4]\,
      O => n_0_full_i_10
    );
full_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(3),
      I1 => \n_0_rd_ptr_wr_dom_reg[3]\,
      O => n_0_full_i_11
    );
full_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(2),
      I1 => \n_0_rd_ptr_wr_dom_reg[2]\,
      O => n_0_full_i_12
    );
full_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(1),
      I1 => \n_0_rd_ptr_wr_dom_reg[1]\,
      O => n_0_full_i_13
    );
full_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(0),
      I1 => \n_0_rd_ptr_wr_dom_reg[0]\,
      O => n_0_full_i_14
    );
full_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wr_ptr_reg__0\(10),
      I1 => \n_0_rd_ptr_wr_dom_reg[10]\,
      O => n_0_full_i_3
    );
full_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(9),
      I1 => \n_0_rd_ptr_wr_dom_reg[9]\,
      O => n_0_full_i_4
    );
full_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(8),
      I1 => \n_0_rd_ptr_wr_dom_reg[8]\,
      O => n_0_full_i_5
    );
full_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(7),
      I1 => \n_0_rd_ptr_wr_dom_reg[7]\,
      O => n_0_full_i_7
    );
full_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(6),
      I1 => \n_0_rd_ptr_wr_dom_reg[6]\,
      O => n_0_full_i_8
    );
full_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_reg(5),
      I1 => \n_0_rd_ptr_wr_dom_reg[5]\,
      O => n_0_full_i_9
    );
full_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => full_comb,
      Q => fifo_full,
      R => rst_wr_2
    );
full_reg_i_1: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_full_reg_i_2,
      CO(3 downto 2) => NLW_full_reg_i_1_CO_UNCONNECTED(3 downto 2),
      CO(1) => n_2_full_reg_i_1,
      CO(0) => n_3_full_reg_i_1,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1 downto 0) => wr_ptr_reg(9 downto 8),
      O(3) => NLW_full_reg_i_1_O_UNCONNECTED(3),
      O(2) => full_comb,
      O(1 downto 0) => NLW_full_reg_i_1_O_UNCONNECTED(1 downto 0),
      S(3) => '0',
      S(2) => n_0_full_i_3,
      S(1) => n_0_full_i_4,
      S(0) => n_0_full_i_5
    );
full_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_full_reg_i_6,
      CO(3) => n_0_full_reg_i_2,
      CO(2) => n_1_full_reg_i_2,
      CO(1) => n_2_full_reg_i_2,
      CO(0) => n_3_full_reg_i_2,
      CYINIT => '0',
      DI(3 downto 0) => wr_ptr_reg(7 downto 4),
      O(3 downto 0) => NLW_full_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_full_i_7,
      S(2) => n_0_full_i_8,
      S(1) => n_0_full_i_9,
      S(0) => n_0_full_i_10
    );
full_reg_i_6: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_full_reg_i_6,
      CO(2) => n_1_full_reg_i_6,
      CO(1) => n_2_full_reg_i_6,
      CO(0) => n_3_full_reg_i_6,
      CYINIT => '1',
      DI(3 downto 0) => wr_ptr_reg(3 downto 0),
      O(3 downto 0) => NLW_full_reg_i_6_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_full_i_11,
      S(2) => n_0_full_i_12,
      S(1) => n_0_full_i_13,
      S(0) => n_0_full_i_14
    );
\ptr_diff_rd_dom[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(3),
      I1 => \rd_ptr_reg__0\(3),
      O => \n_0_ptr_diff_rd_dom[3]_i_2\
    );
\ptr_diff_rd_dom[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(2),
      I1 => \rd_ptr_reg__0\(2),
      O => \n_0_ptr_diff_rd_dom[3]_i_3\
    );
\ptr_diff_rd_dom[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(1),
      I1 => \rd_ptr_reg__0\(1),
      O => \n_0_ptr_diff_rd_dom[3]_i_4\
    );
\ptr_diff_rd_dom[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(0),
      I1 => \rd_ptr_reg__0\(0),
      O => \n_0_ptr_diff_rd_dom[3]_i_5\
    );
\ptr_diff_rd_dom[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(7),
      I1 => \rd_ptr_reg__0\(7),
      O => \n_0_ptr_diff_rd_dom[7]_i_2\
    );
\ptr_diff_rd_dom[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(6),
      I1 => \rd_ptr_reg__0\(6),
      O => \n_0_ptr_diff_rd_dom[7]_i_3\
    );
\ptr_diff_rd_dom[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(5),
      I1 => \rd_ptr_reg__0\(5),
      O => \n_0_ptr_diff_rd_dom[7]_i_4\
    );
\ptr_diff_rd_dom[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(4),
      I1 => \rd_ptr_reg__0\(4),
      O => \n_0_ptr_diff_rd_dom[7]_i_5\
    );
\ptr_diff_rd_dom[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(11),
      I1 => rd_ptr_reg(11),
      O => \n_0_ptr_diff_rd_dom[9]_i_2\
    );
\ptr_diff_rd_dom[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(10),
      I1 => \rd_ptr_reg__0\(10),
      O => \n_0_ptr_diff_rd_dom[9]_i_3\
    );
\ptr_diff_rd_dom[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(9),
      I1 => \rd_ptr_reg__0\(9),
      O => \n_0_ptr_diff_rd_dom[9]_i_4\
    );
\ptr_diff_rd_dom[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => wr_ptr_rd_dom(8),
      I1 => \rd_ptr_reg__0\(8),
      O => \n_0_ptr_diff_rd_dom[9]_i_5\
    );
\ptr_diff_rd_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(2),
      Q => level_rd(2),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(3),
      Q => level_rd(3),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(2) => \n_1_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[3]_i_1\,
      CYINIT => '1',
      DI(3 downto 0) => wr_ptr_rd_dom(3 downto 0),
      O(3 downto 2) => ptr_diff_rd_dom_comb0_out(3 downto 2),
      O(1) => \ptr_diff_rd_dom_comb0_out__0\(1),
      O(0) => \NLW_ptr_diff_rd_dom_reg[3]_i_1_O_UNCONNECTED\(0),
      S(3) => \n_0_ptr_diff_rd_dom[3]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[3]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[3]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[3]_i_5\
    );
\ptr_diff_rd_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(4),
      Q => level_rd(4),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(5),
      Q => level_rd(5),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(6),
      Q => level_rd(6),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(7),
      Q => level_rd(7),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_ptr_diff_rd_dom_reg[3]_i_1\,
      CO(3) => \n_0_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(2) => \n_1_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[7]_i_1\,
      CYINIT => '0',
      DI(3 downto 0) => wr_ptr_rd_dom(7 downto 4),
      O(3 downto 0) => ptr_diff_rd_dom_comb0_out(7 downto 4),
      S(3) => \n_0_ptr_diff_rd_dom[7]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[7]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[7]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[7]_i_5\
    );
\ptr_diff_rd_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(8),
      Q => level_rd(8),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => ptr_diff_rd_dom_comb0_out(9),
      Q => level_rd(9),
      R => rst_rd_2
    );
\ptr_diff_rd_dom_reg[9]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_ptr_diff_rd_dom_reg[7]_i_1\,
      CO(3) => \NLW_ptr_diff_rd_dom_reg[9]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_ptr_diff_rd_dom_reg[9]_i_1\,
      CO(1) => \n_2_ptr_diff_rd_dom_reg[9]_i_1\,
      CO(0) => \n_3_ptr_diff_rd_dom_reg[9]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => wr_ptr_rd_dom(10 downto 8),
      O(3 downto 2) => \ptr_diff_rd_dom_comb0_out__0\(11 downto 10),
      O(1 downto 0) => ptr_diff_rd_dom_comb0_out(9 downto 8),
      S(3) => \n_0_ptr_diff_rd_dom[9]_i_2\,
      S(2) => \n_0_ptr_diff_rd_dom[9]_i_3\,
      S(1) => \n_0_ptr_diff_rd_dom[9]_i_4\,
      S(0) => \n_0_ptr_diff_rd_dom[9]_i_5\
    );
ram_out_rd_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF570054"
    )
    port map (
      I0 => \n_0_rd_ptr_rep[9]_i_3\,
      I1 => n_0_rd_error_i_4,
      I2 => n_0_ram_out_rd_error_i_2,
      I3 => rst_rd_2,
      I4 => ram_out_rd_error,
      O => n_0_ram_out_rd_error_i_1
    );
ram_out_rd_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD000000000000"
    )
    port map (
      I0 => n_0_rd_error_i_3,
      I1 => first_sof_reg,
      I2 => fifo_eol,
      I3 => fifo_empty,
      I4 => aclken,
      I5 => n_0_valid_i_4,
      O => n_0_ram_out_rd_error_i_2
    );
ram_out_rd_error_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_ram_out_rd_error_i_1,
      Q => ram_out_rd_error,
      R => '0'
    );
\rd_data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_67_fifo_ram_reg,
      O => D(0)
    );
\rd_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_57_fifo_ram_reg,
      O => D(10)
    );
\rd_data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_56_fifo_ram_reg,
      O => D(11)
    );
\rd_data[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_55_fifo_ram_reg,
      O => D(12)
    );
\rd_data[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_54_fifo_ram_reg,
      O => D(13)
    );
\rd_data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_53_fifo_ram_reg,
      O => D(14)
    );
\rd_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_52_fifo_ram_reg,
      O => D(15)
    );
\rd_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_51_fifo_ram_reg,
      O => D(16)
    );
\rd_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_50_fifo_ram_reg,
      O => D(17)
    );
\rd_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_49_fifo_ram_reg,
      O => D(18)
    );
\rd_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_48_fifo_ram_reg,
      O => D(19)
    );
\rd_data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_66_fifo_ram_reg,
      O => D(1)
    );
\rd_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_47_fifo_ram_reg,
      O => D(20)
    );
\rd_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_46_fifo_ram_reg,
      O => D(21)
    );
\rd_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_45_fifo_ram_reg,
      O => D(22)
    );
\rd_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_44_fifo_ram_reg,
      O => D(23)
    );
\rd_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_43_fifo_ram_reg,
      O => D(24)
    );
\rd_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_42_fifo_ram_reg,
      O => D(25)
    );
\rd_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_41_fifo_ram_reg,
      O => D(26)
    );
\rd_data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_40_fifo_ram_reg,
      O => D(27)
    );
\rd_data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_39_fifo_ram_reg,
      O => D(28)
    );
\rd_data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_38_fifo_ram_reg,
      O => D(29)
    );
\rd_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_65_fifo_ram_reg,
      O => D(2)
    );
\rd_data[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_37_fifo_ram_reg,
      O => D(30)
    );
\rd_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rst,
      I1 => aresetn,
      O => \^sr\(0)
    );
\rd_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBB0B0000"
    )
    port map (
      I0 => fifo_eol,
      I1 => fifo_empty,
      I2 => I1,
      I3 => m_axis_video_tready,
      I4 => aclken,
      I5 => \n_0_rd_data[31]_i_4\,
      O => E(0)
    );
\rd_data[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_36_fifo_ram_reg,
      O => D(31)
    );
\rd_data[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF00"
    )
    port map (
      I0 => \^dopbdop\(0),
      I1 => \^dopbdop\(1),
      I2 => p_0_in_0,
      I3 => aclken,
      I4 => first_sof_reg,
      O => \n_0_rd_data[31]_i_4\
    );
\rd_data[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => fifo_eol,
      O => D(32)
    );
\rd_data[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dopbdop\(0),
      I2 => \^dopbdop\(1),
      I3 => p_0_in_0,
      O => D(33)
    );
\rd_data[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => first_sof_reg,
      I1 => \^dopbdop\(1),
      O => D(34)
    );
\rd_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_64_fifo_ram_reg,
      O => D(3)
    );
\rd_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_63_fifo_ram_reg,
      O => D(4)
    );
\rd_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_62_fifo_ram_reg,
      O => D(5)
    );
\rd_data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_61_fifo_ram_reg,
      O => D(6)
    );
\rd_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_60_fifo_ram_reg,
      O => D(7)
    );
\rd_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_59_fifo_ram_reg,
      O => D(8)
    );
\rd_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF200000"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      I3 => first_sof_reg,
      I4 => n_58_fifo_ram_reg,
      O => D(9)
    );
rd_error_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEFEEAAAA2022"
    )
    port map (
      I0 => ram_out_rd_error,
      I1 => n_0_rd_error_i_2,
      I2 => first_sof_reg,
      I3 => n_0_rd_error_i_3,
      I4 => n_0_rd_error_i_4,
      I5 => \^o1\,
      O => n_0_rd_error_i_1
    );
rd_error_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4F4F"
    )
    port map (
      I0 => fifo_eol,
      I1 => fifo_empty,
      I2 => aclken,
      I3 => m_axis_video_tready,
      I4 => I1,
      O => n_0_rd_error_i_2
    );
rd_error_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => p_0_in_0,
      I1 => \^dopbdop\(1),
      I2 => \^dopbdop\(0),
      O => n_0_rd_error_i_3
    );
rd_error_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DDD000000000"
    )
    port map (
      I0 => \^dopbdop\(0),
      I1 => n_0_rd_error_i_5,
      I2 => n_0_rd_error_i_6,
      I3 => n_0_rd_error_i_7,
      I4 => first_sof_reg,
      I5 => aclken,
      O => n_0_rd_error_i_4
    );
rd_error_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^dopbdop\(1),
      I1 => p_0_in_0,
      O => n_0_rd_error_i_5
    );
rd_error_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => level_rd(3),
      I1 => level_rd(2),
      I2 => fifo_full,
      O => n_0_rd_error_i_6
    );
rd_error_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => level_rd(5),
      I1 => level_rd(4),
      I2 => level_rd(6),
      I3 => level_rd(9),
      I4 => level_rd(7),
      I5 => level_rd(8),
      O => n_0_rd_error_i_7
    );
rd_error_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_rd_error_i_1,
      Q => \^o1\,
      R => rst_rd_2
    );
\rd_ptr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(3),
      O => \n_0_rd_ptr[0]_i_2\
    );
\rd_ptr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(2),
      O => \n_0_rd_ptr[0]_i_3\
    );
\rd_ptr[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(1),
      O => \n_0_rd_ptr[0]_i_4\
    );
\rd_ptr[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \rd_ptr_reg__0\(0),
      O => \n_0_rd_ptr[0]_i_5\
    );
\rd_ptr[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(7),
      O => \n_0_rd_ptr[4]_i_2\
    );
\rd_ptr[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(6),
      O => \n_0_rd_ptr[4]_i_3\
    );
\rd_ptr[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(5),
      O => \n_0_rd_ptr[4]_i_4\
    );
\rd_ptr[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(4),
      O => \n_0_rd_ptr[4]_i_5\
    );
\rd_ptr[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr_reg(11),
      O => \n_0_rd_ptr[8]_i_2\
    );
\rd_ptr[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(10),
      O => \n_0_rd_ptr[8]_i_3\
    );
\rd_ptr[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(9),
      O => \n_0_rd_ptr[8]_i_4\
    );
\rd_ptr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(8),
      O => \n_0_rd_ptr[8]_i_5\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg[0]_i_1\,
      Q => \rd_ptr_reg__0\(0),
      R => rst_rd_2
    );
\rd_ptr_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_rd_ptr_reg[0]_i_1\,
      CO(2) => \n_1_rd_ptr_reg[0]_i_1\,
      CO(1) => \n_2_rd_ptr_reg[0]_i_1\,
      CO(0) => \n_3_rd_ptr_reg[0]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_rd_ptr_reg[0]_i_1\,
      O(2) => \n_5_rd_ptr_reg[0]_i_1\,
      O(1) => \n_6_rd_ptr_reg[0]_i_1\,
      O(0) => \n_7_rd_ptr_reg[0]_i_1\,
      S(3) => \n_0_rd_ptr[0]_i_2\,
      S(2) => \n_0_rd_ptr[0]_i_3\,
      S(1) => \n_0_rd_ptr[0]_i_4\,
      S(0) => \n_0_rd_ptr[0]_i_5\
    );
\rd_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg[8]_i_1\,
      Q => \rd_ptr_reg__0\(10),
      R => rst_rd_2
    );
\rd_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg[8]_i_1\,
      Q => rd_ptr_reg(11),
      R => rst_rd_2
    );
\rd_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg[0]_i_1\,
      Q => \rd_ptr_reg__0\(1),
      R => rst_rd_2
    );
\rd_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg[0]_i_1\,
      Q => \rd_ptr_reg__0\(2),
      R => rst_rd_2
    );
\rd_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg[0]_i_1\,
      Q => \rd_ptr_reg__0\(3),
      R => rst_rd_2
    );
\rd_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg[4]_i_1\,
      Q => \rd_ptr_reg__0\(4),
      R => rst_rd_2
    );
\rd_ptr_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg[0]_i_1\,
      CO(3) => \n_0_rd_ptr_reg[4]_i_1\,
      CO(2) => \n_1_rd_ptr_reg[4]_i_1\,
      CO(1) => \n_2_rd_ptr_reg[4]_i_1\,
      CO(0) => \n_3_rd_ptr_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rd_ptr_reg[4]_i_1\,
      O(2) => \n_5_rd_ptr_reg[4]_i_1\,
      O(1) => \n_6_rd_ptr_reg[4]_i_1\,
      O(0) => \n_7_rd_ptr_reg[4]_i_1\,
      S(3) => \n_0_rd_ptr[4]_i_2\,
      S(2) => \n_0_rd_ptr[4]_i_3\,
      S(1) => \n_0_rd_ptr[4]_i_4\,
      S(0) => \n_0_rd_ptr[4]_i_5\
    );
\rd_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg[4]_i_1\,
      Q => \rd_ptr_reg__0\(5),
      R => rst_rd_2
    );
\rd_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg[4]_i_1\,
      Q => \rd_ptr_reg__0\(6),
      R => rst_rd_2
    );
\rd_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg[4]_i_1\,
      Q => \rd_ptr_reg__0\(7),
      R => rst_rd_2
    );
\rd_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg[8]_i_1\,
      Q => \rd_ptr_reg__0\(8),
      R => rst_rd_2
    );
\rd_ptr_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg[4]_i_1\,
      CO(3) => \NLW_rd_ptr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_rd_ptr_reg[8]_i_1\,
      CO(1) => \n_2_rd_ptr_reg[8]_i_1\,
      CO(0) => \n_3_rd_ptr_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rd_ptr_reg[8]_i_1\,
      O(2) => \n_5_rd_ptr_reg[8]_i_1\,
      O(1) => \n_6_rd_ptr_reg[8]_i_1\,
      O(0) => \n_7_rd_ptr_reg[8]_i_1\,
      S(3) => \n_0_rd_ptr[8]_i_2\,
      S(2) => \n_0_rd_ptr[8]_i_3\,
      S(1) => \n_0_rd_ptr[8]_i_4\,
      S(0) => \n_0_rd_ptr[8]_i_5\
    );
\rd_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg[8]_i_1\,
      Q => \rd_ptr_reg__0\(9),
      R => rst_rd_2
    );
\rd_ptr_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[0]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[1]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[2]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg_rep[3]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[3]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_rd_ptr_reg_rep[3]_i_1\,
      CO(2) => \n_1_rd_ptr_reg_rep[3]_i_1\,
      CO(1) => \n_2_rd_ptr_reg_rep[3]_i_1\,
      CO(0) => \n_3_rd_ptr_reg_rep[3]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => \rd_ptr_reg__0\(0),
      O(3) => \n_4_rd_ptr_reg_rep[3]_i_1\,
      O(2) => \n_5_rd_ptr_reg_rep[3]_i_1\,
      O(1) => \n_6_rd_ptr_reg_rep[3]_i_1\,
      O(0) => \n_7_rd_ptr_reg_rep[3]_i_1\,
      S(3) => \n_0_rd_ptr_rep[3]_i_2\,
      S(2) => \n_0_rd_ptr_rep[3]_i_3\,
      S(1) => \n_0_rd_ptr_rep[3]_i_4\,
      S(0) => p_0_in(0)
    );
\rd_ptr_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[4]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[5]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_5_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[6]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_4_rd_ptr_reg_rep[7]_i_1\,
      Q => \n_0_rd_ptr_reg_rep[7]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg_rep[3]_i_1\,
      CO(3) => \n_0_rd_ptr_reg_rep[7]_i_1\,
      CO(2) => \n_1_rd_ptr_reg_rep[7]_i_1\,
      CO(1) => \n_2_rd_ptr_reg_rep[7]_i_1\,
      CO(0) => \n_3_rd_ptr_reg_rep[7]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_rd_ptr_reg_rep[7]_i_1\,
      O(2) => \n_5_rd_ptr_reg_rep[7]_i_1\,
      O(1) => \n_6_rd_ptr_reg_rep[7]_i_1\,
      O(0) => \n_7_rd_ptr_reg_rep[7]_i_1\,
      S(3) => \n_0_rd_ptr_rep[7]_i_2\,
      S(2) => \n_0_rd_ptr_rep[7]_i_3\,
      S(1) => \n_0_rd_ptr_rep[7]_i_4\,
      S(0) => \n_0_rd_ptr_rep[7]_i_5\
    );
\rd_ptr_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_7_rd_ptr_reg_rep[9]_i_2\,
      Q => \n_0_rd_ptr_reg_rep[8]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_rd_ptr_rep[9]_i_1\,
      D => \n_6_rd_ptr_reg_rep[9]_i_2\,
      Q => \n_0_rd_ptr_reg_rep[9]\,
      R => rst_rd_2
    );
\rd_ptr_reg_rep[9]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rd_ptr_reg_rep[7]_i_1\,
      CO(3 downto 1) => \NLW_rd_ptr_reg_rep[9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_rd_ptr_reg_rep[9]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_rd_ptr_reg_rep[9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_rd_ptr_reg_rep[9]_i_2\,
      O(0) => \n_7_rd_ptr_reg_rep[9]_i_2\,
      S(3) => '0',
      S(2) => '0',
      S(1) => \n_0_rd_ptr_rep[9]_i_5\,
      S(0) => \n_0_rd_ptr_rep[9]_i_6\
    );
\rd_ptr_rep[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(3),
      O => \n_0_rd_ptr_rep[3]_i_2\
    );
\rd_ptr_rep[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(2),
      O => \n_0_rd_ptr_rep[3]_i_3\
    );
\rd_ptr_rep[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(1),
      O => \n_0_rd_ptr_rep[3]_i_4\
    );
\rd_ptr_rep[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \rd_ptr_reg__0\(0),
      O => p_0_in(0)
    );
\rd_ptr_rep[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(7),
      O => \n_0_rd_ptr_rep[7]_i_2\
    );
\rd_ptr_rep[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(6),
      O => \n_0_rd_ptr_rep[7]_i_3\
    );
\rd_ptr_rep[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(5),
      O => \n_0_rd_ptr_rep[7]_i_4\
    );
\rd_ptr_rep[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(4),
      O => \n_0_rd_ptr_rep[7]_i_5\
    );
\rd_ptr_rep[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888AA8A"
    )
    port map (
      I0 => \n_0_rd_ptr_rep[9]_i_3\,
      I1 => n_0_rd_error_i_4,
      I2 => n_0_rd_error_i_3,
      I3 => first_sof_reg,
      I4 => \n_0_rd_ptr_rep[9]_i_4\,
      O => \n_0_rd_ptr_rep[9]_i_1\
    );
\rd_ptr_rep[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => ptr_diff_rd_dom_comb0_out(8),
      I1 => ptr_diff_rd_dom_comb0_out(9),
      I2 => ptr_diff_rd_dom_comb0_out(6),
      I3 => \ptr_diff_rd_dom_comb0_out__0\(10),
      I4 => \ptr_diff_rd_dom_comb0_out__0\(11),
      I5 => \n_0_rd_ptr_rep[9]_i_7\,
      O => \n_0_rd_ptr_rep[9]_i_3\
    );
\rd_ptr_rep[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4FFF4F"
    )
    port map (
      I0 => m_axis_video_tready,
      I1 => I1,
      I2 => aclken,
      I3 => fifo_empty,
      I4 => fifo_eol,
      O => \n_0_rd_ptr_rep[9]_i_4\
    );
\rd_ptr_rep[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(9),
      O => \n_0_rd_ptr_rep[9]_i_5\
    );
\rd_ptr_rep[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \rd_ptr_reg__0\(8),
      O => \n_0_rd_ptr_rep[9]_i_6\
    );
\rd_ptr_rep[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => ptr_diff_rd_dom_comb0_out(5),
      I1 => ptr_diff_rd_dom_comb0_out(7),
      I2 => ptr_diff_rd_dom_comb0_out(3),
      I3 => \ptr_diff_rd_dom_comb0_out__0\(1),
      I4 => ptr_diff_rd_dom_comb0_out(4),
      I5 => ptr_diff_rd_dom_comb0_out(2),
      O => \n_0_rd_ptr_rep[9]_i_7\
    );
\rd_ptr_sample[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ack_rd_dom_2,
      I1 => ack_rd_dom_3,
      O => ce_rd_ptr_sample
    );
\rd_ptr_sample_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(0),
      Q => rd_ptr_sample(0),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(10),
      Q => rd_ptr_sample(10),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(1),
      Q => rd_ptr_sample(1),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(2),
      Q => rd_ptr_sample(2),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(3),
      Q => rd_ptr_sample(3),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(4),
      Q => rd_ptr_sample(4),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(5),
      Q => rd_ptr_sample(5),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(6),
      Q => rd_ptr_sample(6),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(7),
      Q => rd_ptr_sample(7),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(8),
      Q => rd_ptr_sample(8),
      R => rst_rd_2
    );
\rd_ptr_sample_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_rd_ptr_sample,
      D => \rd_ptr_reg__0\(9),
      Q => rd_ptr_sample(9),
      R => rst_rd_2
    );
\rd_ptr_wr_dom[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => req_wr_dom_2,
      I1 => req_wr_dom_3,
      O => ce_rd_ptr_wr_dom
    );
\rd_ptr_wr_dom_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(0),
      Q => \n_0_rd_ptr_wr_dom_reg[0]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(10),
      Q => \n_0_rd_ptr_wr_dom_reg[10]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(1),
      Q => \n_0_rd_ptr_wr_dom_reg[1]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(2),
      Q => \n_0_rd_ptr_wr_dom_reg[2]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(3),
      Q => \n_0_rd_ptr_wr_dom_reg[3]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(4),
      Q => \n_0_rd_ptr_wr_dom_reg[4]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(5),
      Q => \n_0_rd_ptr_wr_dom_reg[5]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(6),
      Q => \n_0_rd_ptr_wr_dom_reg[6]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(7),
      Q => \n_0_rd_ptr_wr_dom_reg[7]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(8),
      Q => \n_0_rd_ptr_wr_dom_reg[8]\,
      R => rst_wr_2
    );
\rd_ptr_wr_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_rd_ptr_wr_dom,
      D => rd_ptr_sample(9),
      Q => \n_0_rd_ptr_wr_dom_reg[9]\,
      R => rst_wr_2
    );
req_rd_dom_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ack_wr_dom_3,
      O => wr_to_rd_req
    );
req_rd_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => wr_to_rd_req,
      Q => req_rd_dom_1,
      R => rst_rd_2
    );
req_rd_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_rd_dom_1,
      Q => req_rd_dom_2,
      R => rst_rd_2
    );
req_rd_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => req_rd_dom_2,
      Q => req_rd_dom_3,
      R => rst_rd_2
    );
req_wr_dom_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ack_rd_dom_3,
      O => rd_to_wr_req
    );
req_wr_dom_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => rd_to_wr_req,
      Q => req_wr_dom_1,
      R => rst_wr_2
    );
req_wr_dom_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_wr_dom_1,
      Q => req_wr_dom_2,
      R => rst_wr_2
    );
req_wr_dom_3_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => req_wr_dom_2,
      Q => req_wr_dom_3,
      R => rst_wr_2
    );
rst_rd_1_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => \^sr\(0),
      Q => rst_rd_1,
      R => '0'
    );
rst_rd_2_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => rst_rd_1,
      Q => rst_rd_2,
      R => '0'
    );
rst_wr_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => \^sr\(0),
      Q => rst_wr_1,
      R => '0'
    );
rst_wr_2_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => rst_wr_1,
      Q => rst_wr_2,
      R => '0'
    );
valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAB8A8B8"
    )
    port map (
      I0 => valid2_out,
      I1 => n_0_valid_i_3,
      I2 => I1,
      I3 => aclken,
      I4 => m_axis_video_tready,
      I5 => \^sr\(0),
      O => O2
    );
valid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040444440444"
    )
    port map (
      I0 => \^sr\(0),
      I1 => n_0_empty_i_2,
      I2 => n_0_valid_i_4,
      I3 => fifo_empty,
      I4 => fifo_eol,
      I5 => \^o1\,
      O => valid2_out
    );
valid_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00B0"
    )
    port map (
      I0 => fifo_eol,
      I1 => fifo_empty,
      I2 => aclken,
      I3 => \^o1\,
      I4 => \n_0_rd_data[31]_i_4\,
      O => n_0_valid_i_3
    );
valid_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => m_axis_video_tready,
      I1 => I1,
      O => n_0_valid_i_4
    );
wr_error_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CA0A"
    )
    port map (
      I0 => \^wr_error\,
      I1 => full_comb,
      I2 => vid_io_in_ce,
      I3 => idf_de,
      I4 => rst_wr_2,
      O => n_0_wr_error_i_1
    );
wr_error_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => n_0_wr_error_i_1,
      Q => \^wr_error\,
      R => '0'
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => full_comb,
      I1 => vid_io_in_ce,
      I2 => idf_de,
      O => \n_0_wr_ptr[0]_i_1\
    );
\wr_ptr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(3),
      O => \n_0_wr_ptr[0]_i_3\
    );
\wr_ptr[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(2),
      O => \n_0_wr_ptr[0]_i_4\
    );
\wr_ptr[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(1),
      O => \n_0_wr_ptr[0]_i_5\
    );
\wr_ptr[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wr_ptr_reg(0),
      O => \n_0_wr_ptr[0]_i_6\
    );
\wr_ptr[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(7),
      O => \n_0_wr_ptr[4]_i_2\
    );
\wr_ptr[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(6),
      O => \n_0_wr_ptr[4]_i_3\
    );
\wr_ptr[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(5),
      O => \n_0_wr_ptr[4]_i_4\
    );
\wr_ptr[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(4),
      O => \n_0_wr_ptr[4]_i_5\
    );
\wr_ptr[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \wr_ptr_reg__0\(11),
      O => \n_0_wr_ptr[8]_i_2\
    );
\wr_ptr[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \wr_ptr_reg__0\(10),
      O => \n_0_wr_ptr[8]_i_3\
    );
\wr_ptr[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(9),
      O => \n_0_wr_ptr[8]_i_4\
    );
\wr_ptr[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_ptr_reg(8),
      O => \n_0_wr_ptr[8]_i_5\
    );
\wr_ptr_rd_dom[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => req_rd_dom_2,
      I1 => req_rd_dom_3,
      O => ce_wr_ptr_rd_dom
    );
\wr_ptr_rd_dom_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(0),
      Q => wr_ptr_rd_dom(0),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(10),
      Q => wr_ptr_rd_dom(10),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(11),
      Q => wr_ptr_rd_dom(11),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(1),
      Q => wr_ptr_rd_dom(1),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(2),
      Q => wr_ptr_rd_dom(2),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(3),
      Q => wr_ptr_rd_dom(3),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(4),
      Q => wr_ptr_rd_dom(4),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(5),
      Q => wr_ptr_rd_dom(5),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(6),
      Q => wr_ptr_rd_dom(6),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(7),
      Q => wr_ptr_rd_dom(7),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(8),
      Q => wr_ptr_rd_dom(8),
      R => rst_rd_2
    );
\wr_ptr_rd_dom_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => ce_wr_ptr_rd_dom,
      D => wr_ptr_sample(9),
      Q => wr_ptr_rd_dom(9),
      R => rst_rd_2
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_7_wr_ptr_reg[0]_i_2\,
      Q => wr_ptr_reg(0),
      S => rst_wr_2
    );
\wr_ptr_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wr_ptr_reg[0]_i_2\,
      CO(2) => \n_1_wr_ptr_reg[0]_i_2\,
      CO(1) => \n_2_wr_ptr_reg[0]_i_2\,
      CO(0) => \n_3_wr_ptr_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_wr_ptr_reg[0]_i_2\,
      O(2) => \n_5_wr_ptr_reg[0]_i_2\,
      O(1) => \n_6_wr_ptr_reg[0]_i_2\,
      O(0) => \n_7_wr_ptr_reg[0]_i_2\,
      S(3) => \n_0_wr_ptr[0]_i_3\,
      S(2) => \n_0_wr_ptr[0]_i_4\,
      S(1) => \n_0_wr_ptr[0]_i_5\,
      S(0) => \n_0_wr_ptr[0]_i_6\
    );
\wr_ptr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_5_wr_ptr_reg[8]_i_1\,
      Q => \wr_ptr_reg__0\(10),
      R => rst_wr_2
    );
\wr_ptr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_4_wr_ptr_reg[8]_i_1\,
      Q => \wr_ptr_reg__0\(11),
      R => rst_wr_2
    );
\wr_ptr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_6_wr_ptr_reg[0]_i_2\,
      Q => wr_ptr_reg(1),
      R => rst_wr_2
    );
\wr_ptr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_5_wr_ptr_reg[0]_i_2\,
      Q => wr_ptr_reg(2),
      R => rst_wr_2
    );
\wr_ptr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_4_wr_ptr_reg[0]_i_2\,
      Q => wr_ptr_reg(3),
      R => rst_wr_2
    );
\wr_ptr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_7_wr_ptr_reg[4]_i_1\,
      Q => wr_ptr_reg(4),
      R => rst_wr_2
    );
\wr_ptr_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wr_ptr_reg[0]_i_2\,
      CO(3) => \n_0_wr_ptr_reg[4]_i_1\,
      CO(2) => \n_1_wr_ptr_reg[4]_i_1\,
      CO(1) => \n_2_wr_ptr_reg[4]_i_1\,
      CO(0) => \n_3_wr_ptr_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wr_ptr_reg[4]_i_1\,
      O(2) => \n_5_wr_ptr_reg[4]_i_1\,
      O(1) => \n_6_wr_ptr_reg[4]_i_1\,
      O(0) => \n_7_wr_ptr_reg[4]_i_1\,
      S(3) => \n_0_wr_ptr[4]_i_2\,
      S(2) => \n_0_wr_ptr[4]_i_3\,
      S(1) => \n_0_wr_ptr[4]_i_4\,
      S(0) => \n_0_wr_ptr[4]_i_5\
    );
\wr_ptr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_6_wr_ptr_reg[4]_i_1\,
      Q => wr_ptr_reg(5),
      R => rst_wr_2
    );
\wr_ptr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_5_wr_ptr_reg[4]_i_1\,
      Q => wr_ptr_reg(6),
      R => rst_wr_2
    );
\wr_ptr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_4_wr_ptr_reg[4]_i_1\,
      Q => wr_ptr_reg(7),
      R => rst_wr_2
    );
\wr_ptr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_7_wr_ptr_reg[8]_i_1\,
      Q => wr_ptr_reg(8),
      R => rst_wr_2
    );
\wr_ptr_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wr_ptr_reg[4]_i_1\,
      CO(3) => \NLW_wr_ptr_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_wr_ptr_reg[8]_i_1\,
      CO(1) => \n_2_wr_ptr_reg[8]_i_1\,
      CO(0) => \n_3_wr_ptr_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wr_ptr_reg[8]_i_1\,
      O(2) => \n_5_wr_ptr_reg[8]_i_1\,
      O(1) => \n_6_wr_ptr_reg[8]_i_1\,
      O(0) => \n_7_wr_ptr_reg[8]_i_1\,
      S(3) => \n_0_wr_ptr[8]_i_2\,
      S(2) => \n_0_wr_ptr[8]_i_3\,
      S(1) => \n_0_wr_ptr[8]_i_4\,
      S(0) => \n_0_wr_ptr[8]_i_5\
    );
\wr_ptr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => \n_0_wr_ptr[0]_i_1\,
      D => \n_6_wr_ptr_reg[8]_i_1\,
      Q => wr_ptr_reg(9),
      R => rst_wr_2
    );
\wr_ptr_sample[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => ack_wr_dom_2,
      I1 => ack_wr_dom_3,
      O => ce_wr_ptr_sample
    );
\wr_ptr_sample_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(0),
      Q => wr_ptr_sample(0),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => \wr_ptr_reg__0\(10),
      Q => wr_ptr_sample(10),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => \wr_ptr_reg__0\(11),
      Q => wr_ptr_sample(11),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(1),
      Q => wr_ptr_sample(1),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(2),
      Q => wr_ptr_sample(2),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(3),
      Q => wr_ptr_sample(3),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(4),
      Q => wr_ptr_sample(4),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(5),
      Q => wr_ptr_sample(5),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(6),
      Q => wr_ptr_sample(6),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(7),
      Q => wr_ptr_sample(7),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(8),
      Q => wr_ptr_sample(8),
      R => rst_wr_2
    );
\wr_ptr_sample_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => ce_wr_ptr_sample,
      D => wr_ptr_reg(9),
      Q => wr_ptr_sample(9),
      R => rst_wr_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter is
  port (
    O1 : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    idf_data : out STD_LOGIC_VECTOR ( 34 downto 0 );
    idf_de : out STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter : entity is "v_vid_in_axi4s_v3_0_vid_in_formatter";
end v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter;

architecture STRUCTURE of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter is
  signal \^o1\ : STD_LOGIC;
  signal data_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal de_2 : STD_LOGIC;
  signal field_id_2 : STD_LOGIC;
  signal n_0_eol_i_1 : STD_LOGIC;
  signal n_0_vert_blanking_intvl_i_1 : STD_LOGIC;
  signal n_0_vert_blanking_intvl_reg : STD_LOGIC;
  signal sof : STD_LOGIC;
  signal sof0 : STD_LOGIC;
  signal v_blank_sync_1 : STD_LOGIC;
  signal v_blank_sync_2 : STD_LOGIC;
  signal \^vtd_field_id\ : STD_LOGIC;
  signal \^vtd_vblank\ : STD_LOGIC;
  signal \^vtd_vsync\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of eol_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sof_i_1 : label is "soft_lutpair6";
begin
  O1 <= \^o1\;
  vtd_field_id <= \^vtd_field_id\;
  vtd_vblank <= \^vtd_vblank\;
  vtd_vsync <= \^vtd_vsync\;
\data_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(0),
      Q => data_1(0),
      R => '0'
    );
\data_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(10),
      Q => data_1(10),
      R => '0'
    );
\data_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(11),
      Q => data_1(11),
      R => '0'
    );
\data_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(12),
      Q => data_1(12),
      R => '0'
    );
\data_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(13),
      Q => data_1(13),
      R => '0'
    );
\data_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(14),
      Q => data_1(14),
      R => '0'
    );
\data_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(15),
      Q => data_1(15),
      R => '0'
    );
\data_1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(16),
      Q => data_1(16),
      R => '0'
    );
\data_1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(17),
      Q => data_1(17),
      R => '0'
    );
\data_1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(18),
      Q => data_1(18),
      R => '0'
    );
\data_1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(19),
      Q => data_1(19),
      R => '0'
    );
\data_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(1),
      Q => data_1(1),
      R => '0'
    );
\data_1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(20),
      Q => data_1(20),
      R => '0'
    );
\data_1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(21),
      Q => data_1(21),
      R => '0'
    );
\data_1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(22),
      Q => data_1(22),
      R => '0'
    );
\data_1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(23),
      Q => data_1(23),
      R => '0'
    );
\data_1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(24),
      Q => data_1(24),
      R => '0'
    );
\data_1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(25),
      Q => data_1(25),
      R => '0'
    );
\data_1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(26),
      Q => data_1(26),
      R => '0'
    );
\data_1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(27),
      Q => data_1(27),
      R => '0'
    );
\data_1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(28),
      Q => data_1(28),
      R => '0'
    );
\data_1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(29),
      Q => data_1(29),
      R => '0'
    );
\data_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(2),
      Q => data_1(2),
      R => '0'
    );
\data_1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(30),
      Q => data_1(30),
      R => '0'
    );
\data_1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(31),
      Q => data_1(31),
      R => '0'
    );
\data_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(3),
      Q => data_1(3),
      R => '0'
    );
\data_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(4),
      Q => data_1(4),
      R => '0'
    );
\data_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(5),
      Q => data_1(5),
      R => '0'
    );
\data_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(6),
      Q => data_1(6),
      R => '0'
    );
\data_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(7),
      Q => data_1(7),
      R => '0'
    );
\data_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(8),
      Q => data_1(8),
      R => '0'
    );
\data_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_data(9),
      Q => data_1(9),
      R => '0'
    );
\data_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(0),
      Q => data_2(0),
      R => '0'
    );
\data_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(10),
      Q => data_2(10),
      R => '0'
    );
\data_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(11),
      Q => data_2(11),
      R => '0'
    );
\data_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(12),
      Q => data_2(12),
      R => '0'
    );
\data_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(13),
      Q => data_2(13),
      R => '0'
    );
\data_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(14),
      Q => data_2(14),
      R => '0'
    );
\data_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(15),
      Q => data_2(15),
      R => '0'
    );
\data_2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(16),
      Q => data_2(16),
      R => '0'
    );
\data_2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(17),
      Q => data_2(17),
      R => '0'
    );
\data_2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(18),
      Q => data_2(18),
      R => '0'
    );
\data_2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(19),
      Q => data_2(19),
      R => '0'
    );
\data_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(1),
      Q => data_2(1),
      R => '0'
    );
\data_2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(20),
      Q => data_2(20),
      R => '0'
    );
\data_2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(21),
      Q => data_2(21),
      R => '0'
    );
\data_2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(22),
      Q => data_2(22),
      R => '0'
    );
\data_2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(23),
      Q => data_2(23),
      R => '0'
    );
\data_2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(24),
      Q => data_2(24),
      R => '0'
    );
\data_2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(25),
      Q => data_2(25),
      R => '0'
    );
\data_2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(26),
      Q => data_2(26),
      R => '0'
    );
\data_2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(27),
      Q => data_2(27),
      R => '0'
    );
\data_2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(28),
      Q => data_2(28),
      R => '0'
    );
\data_2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(29),
      Q => data_2(29),
      R => '0'
    );
\data_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(2),
      Q => data_2(2),
      R => '0'
    );
\data_2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(30),
      Q => data_2(30),
      R => '0'
    );
\data_2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(31),
      Q => data_2(31),
      R => '0'
    );
\data_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(3),
      Q => data_2(3),
      R => '0'
    );
\data_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(4),
      Q => data_2(4),
      R => '0'
    );
\data_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(5),
      Q => data_2(5),
      R => '0'
    );
\data_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(6),
      Q => data_2(6),
      R => '0'
    );
\data_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(7),
      Q => data_2(7),
      R => '0'
    );
\data_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(8),
      Q => data_2(8),
      R => '0'
    );
\data_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_1(9),
      Q => data_2(9),
      R => '0'
    );
\data_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(0),
      Q => idf_data(0),
      R => '0'
    );
\data_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(10),
      Q => idf_data(10),
      R => '0'
    );
\data_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(11),
      Q => idf_data(11),
      R => '0'
    );
\data_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(12),
      Q => idf_data(12),
      R => '0'
    );
\data_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(13),
      Q => idf_data(13),
      R => '0'
    );
\data_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(14),
      Q => idf_data(14),
      R => '0'
    );
\data_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(15),
      Q => idf_data(15),
      R => '0'
    );
\data_3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(16),
      Q => idf_data(16),
      R => '0'
    );
\data_3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(17),
      Q => idf_data(17),
      R => '0'
    );
\data_3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(18),
      Q => idf_data(18),
      R => '0'
    );
\data_3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(19),
      Q => idf_data(19),
      R => '0'
    );
\data_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(1),
      Q => idf_data(1),
      R => '0'
    );
\data_3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(20),
      Q => idf_data(20),
      R => '0'
    );
\data_3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(21),
      Q => idf_data(21),
      R => '0'
    );
\data_3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(22),
      Q => idf_data(22),
      R => '0'
    );
\data_3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(23),
      Q => idf_data(23),
      R => '0'
    );
\data_3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(24),
      Q => idf_data(24),
      R => '0'
    );
\data_3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(25),
      Q => idf_data(25),
      R => '0'
    );
\data_3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(26),
      Q => idf_data(26),
      R => '0'
    );
\data_3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(27),
      Q => idf_data(27),
      R => '0'
    );
\data_3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(28),
      Q => idf_data(28),
      R => '0'
    );
\data_3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(29),
      Q => idf_data(29),
      R => '0'
    );
\data_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(2),
      Q => idf_data(2),
      R => '0'
    );
\data_3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(30),
      Q => idf_data(30),
      R => '0'
    );
\data_3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(31),
      Q => idf_data(31),
      R => '0'
    );
\data_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(3),
      Q => idf_data(3),
      R => '0'
    );
\data_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(4),
      Q => idf_data(4),
      R => '0'
    );
\data_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(5),
      Q => idf_data(5),
      R => '0'
    );
\data_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(6),
      Q => idf_data(6),
      R => '0'
    );
\data_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(7),
      Q => idf_data(7),
      R => '0'
    );
\data_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(8),
      Q => idf_data(8),
      R => '0'
    );
\data_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => data_2(9),
      Q => idf_data(9),
      R => '0'
    );
de_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_active_video,
      Q => \^o1\,
      R => '0'
    );
de_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => \^o1\,
      Q => de_2,
      R => '0'
    );
de_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => de_2,
      Q => idf_de,
      R => '0'
    );
eol_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      O => n_0_eol_i_1
    );
eol_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => n_0_eol_i_1,
      Q => idf_data(32),
      R => '0'
    );
field_id_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_field_id,
      Q => \^vtd_field_id\,
      R => '0'
    );
field_id_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => \^vtd_field_id\,
      Q => field_id_2,
      R => '0'
    );
field_id_3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => field_id_2,
      Q => idf_data(34),
      R => '0'
    );
hblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_hblank,
      Q => vtd_hblank,
      R => '0'
    );
hsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_hsync,
      Q => vtd_hsync,
      R => '0'
    );
sof_1_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => sof,
      Q => idf_data(33),
      R => '0'
    );
sof_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      I2 => n_0_vert_blanking_intvl_reg,
      O => sof0
    );
sof_reg: unisim.vcomponents.FDRE
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => sof0,
      Q => sof,
      R => '0'
    );
v_blank_sync_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^vtd_vblank\,
      I1 => \^vtd_vsync\,
      O => v_blank_sync_1
    );
v_blank_sync_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => v_blank_sync_1,
      Q => v_blank_sync_2,
      R => '0'
    );
vblank_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_vblank,
      Q => \^vtd_vblank\,
      R => '0'
    );
vert_blanking_intvl_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0F0F0FFB0F0F0"
    )
    port map (
      I0 => de_2,
      I1 => \^o1\,
      I2 => n_0_vert_blanking_intvl_reg,
      I3 => v_blank_sync_1,
      I4 => vid_io_in_ce,
      I5 => v_blank_sync_2,
      O => n_0_vert_blanking_intvl_i_1
    );
vert_blanking_intvl_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => '1',
      D => n_0_vert_blanking_intvl_i_1,
      Q => n_0_vert_blanking_intvl_reg,
      R => '0'
    );
vsync_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => vid_io_in_clk,
      CE => vid_io_in_ce,
      D => vid_vsync,
      Q => \^vtd_vsync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler is
  port (
    O1 : out STD_LOGIC;
    wr_error : out STD_LOGIC;
    O2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    idf_de : in STD_LOGIC;
    vid_io_in_clk : in STD_LOGIC;
    aclk : in STD_LOGIC;
    idf_data : in STD_LOGIC_VECTOR ( 34 downto 0 );
    vid_io_in_ce : in STD_LOGIC;
    aclken : in STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    rst : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler : entity is "v_vid_in_axi4s_v3_0_in_coupler";
end v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler;

architecture STRUCTURE of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler is
  signal \^o2\ : STD_LOGIC;
  signal first_sof_reg : STD_LOGIC;
  signal locked_1 : STD_LOGIC;
  signal locked_2 : STD_LOGIC;
  signal n_0_first_sof_reg_i_1 : STD_LOGIC;
  signal n_0_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_0_locked_1_i_1 : STD_LOGIC;
  signal n_0_locked_2_i_1 : STD_LOGIC;
  signal n_10_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_11_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_12_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_13_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_14_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_15_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_16_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_17_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_18_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_19_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_20_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_21_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_22_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_23_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_24_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_25_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_26_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_27_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_28_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_29_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_30_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_31_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_32_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_33_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_34_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_35_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_36_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_37_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_38_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_39_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_40_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_41_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_5_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_6_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_7_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_8_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal n_9_in_bridge_async_fifo_2_i : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of locked_1_reg : label is std.standard.true;
  attribute ASYNC_REG of locked_2_reg : label is std.standard.true;
begin
  O2 <= \^o2\;
first_sof_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F20000000000"
    )
    port map (
      I0 => p_5_in,
      I1 => n_0_in_bridge_async_fifo_2_i,
      I2 => first_sof_reg,
      I3 => locked_2,
      I4 => rst,
      I5 => aresetn,
      O => n_0_first_sof_reg_i_1
    );
first_sof_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_0_first_sof_reg_i_1,
      Q => first_sof_reg,
      R => '0'
    );
in_bridge_async_fifo_2_i: entity work.v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_bridge_async_fifo_2
    port map (
      D(34) => n_6_in_bridge_async_fifo_2_i,
      D(33) => n_7_in_bridge_async_fifo_2_i,
      D(32) => n_8_in_bridge_async_fifo_2_i,
      D(31) => n_9_in_bridge_async_fifo_2_i,
      D(30) => n_10_in_bridge_async_fifo_2_i,
      D(29) => n_11_in_bridge_async_fifo_2_i,
      D(28) => n_12_in_bridge_async_fifo_2_i,
      D(27) => n_13_in_bridge_async_fifo_2_i,
      D(26) => n_14_in_bridge_async_fifo_2_i,
      D(25) => n_15_in_bridge_async_fifo_2_i,
      D(24) => n_16_in_bridge_async_fifo_2_i,
      D(23) => n_17_in_bridge_async_fifo_2_i,
      D(22) => n_18_in_bridge_async_fifo_2_i,
      D(21) => n_19_in_bridge_async_fifo_2_i,
      D(20) => n_20_in_bridge_async_fifo_2_i,
      D(19) => n_21_in_bridge_async_fifo_2_i,
      D(18) => n_22_in_bridge_async_fifo_2_i,
      D(17) => n_23_in_bridge_async_fifo_2_i,
      D(16) => n_24_in_bridge_async_fifo_2_i,
      D(15) => n_25_in_bridge_async_fifo_2_i,
      D(14) => n_26_in_bridge_async_fifo_2_i,
      D(13) => n_27_in_bridge_async_fifo_2_i,
      D(12) => n_28_in_bridge_async_fifo_2_i,
      D(11) => n_29_in_bridge_async_fifo_2_i,
      D(10) => n_30_in_bridge_async_fifo_2_i,
      D(9) => n_31_in_bridge_async_fifo_2_i,
      D(8) => n_32_in_bridge_async_fifo_2_i,
      D(7) => n_33_in_bridge_async_fifo_2_i,
      D(6) => n_34_in_bridge_async_fifo_2_i,
      D(5) => n_35_in_bridge_async_fifo_2_i,
      D(4) => n_36_in_bridge_async_fifo_2_i,
      D(3) => n_37_in_bridge_async_fifo_2_i,
      D(2) => n_38_in_bridge_async_fifo_2_i,
      D(1) => n_39_in_bridge_async_fifo_2_i,
      D(0) => n_40_in_bridge_async_fifo_2_i,
      DOPBDOP(1) => n_0_in_bridge_async_fifo_2_i,
      DOPBDOP(0) => p_5_in,
      E(0) => n_41_in_bridge_async_fifo_2_i,
      I1 => \^o2\,
      O1 => O1,
      O2 => n_5_in_bridge_async_fifo_2_i,
      SR(0) => reset,
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      first_sof_reg => first_sof_reg,
      idf_data(34 downto 0) => idf_data(34 downto 0),
      idf_de => idf_de,
      m_axis_video_tready => m_axis_video_tready,
      p_0_in_0 => locked_2,
      rst => rst,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      wr_error => wr_error
    );
locked_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axis_enable,
      I1 => aclken,
      I2 => locked_1,
      O => n_0_locked_1_i_1
    );
locked_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => '1',
      D => n_0_locked_1_i_1,
      Q => locked_1,
      R => reset
    );
locked_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => locked_1,
      I1 => aclken,
      I2 => locked_2,
      O => n_0_locked_2_i_1
    );
locked_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => '1',
      D => n_0_locked_2_i_1,
      Q => locked_2,
      R => reset
    );
\rd_data_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_40_in_bridge_async_fifo_2_i,
      Q => Q(0),
      R => reset
    );
\rd_data_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_30_in_bridge_async_fifo_2_i,
      Q => Q(10),
      R => reset
    );
\rd_data_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_29_in_bridge_async_fifo_2_i,
      Q => Q(11),
      R => reset
    );
\rd_data_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_28_in_bridge_async_fifo_2_i,
      Q => Q(12),
      R => reset
    );
\rd_data_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_27_in_bridge_async_fifo_2_i,
      Q => Q(13),
      R => reset
    );
\rd_data_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_26_in_bridge_async_fifo_2_i,
      Q => Q(14),
      R => reset
    );
\rd_data_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_25_in_bridge_async_fifo_2_i,
      Q => Q(15),
      R => reset
    );
\rd_data_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_24_in_bridge_async_fifo_2_i,
      Q => Q(16),
      R => reset
    );
\rd_data_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_23_in_bridge_async_fifo_2_i,
      Q => Q(17),
      R => reset
    );
\rd_data_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_22_in_bridge_async_fifo_2_i,
      Q => Q(18),
      R => reset
    );
\rd_data_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_21_in_bridge_async_fifo_2_i,
      Q => Q(19),
      R => reset
    );
\rd_data_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_39_in_bridge_async_fifo_2_i,
      Q => Q(1),
      R => reset
    );
\rd_data_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_20_in_bridge_async_fifo_2_i,
      Q => Q(20),
      R => reset
    );
\rd_data_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_19_in_bridge_async_fifo_2_i,
      Q => Q(21),
      R => reset
    );
\rd_data_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_18_in_bridge_async_fifo_2_i,
      Q => Q(22),
      R => reset
    );
\rd_data_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_17_in_bridge_async_fifo_2_i,
      Q => Q(23),
      R => reset
    );
\rd_data_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_16_in_bridge_async_fifo_2_i,
      Q => Q(24),
      R => reset
    );
\rd_data_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_15_in_bridge_async_fifo_2_i,
      Q => Q(25),
      R => reset
    );
\rd_data_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_14_in_bridge_async_fifo_2_i,
      Q => Q(26),
      R => reset
    );
\rd_data_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_13_in_bridge_async_fifo_2_i,
      Q => Q(27),
      R => reset
    );
\rd_data_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_12_in_bridge_async_fifo_2_i,
      Q => Q(28),
      R => reset
    );
\rd_data_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_11_in_bridge_async_fifo_2_i,
      Q => Q(29),
      R => reset
    );
\rd_data_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_38_in_bridge_async_fifo_2_i,
      Q => Q(2),
      R => reset
    );
\rd_data_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_10_in_bridge_async_fifo_2_i,
      Q => Q(30),
      R => reset
    );
\rd_data_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_9_in_bridge_async_fifo_2_i,
      Q => Q(31),
      R => reset
    );
\rd_data_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_8_in_bridge_async_fifo_2_i,
      Q => Q(32),
      R => reset
    );
\rd_data_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_7_in_bridge_async_fifo_2_i,
      Q => Q(33),
      R => reset
    );
\rd_data_reg[34]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_6_in_bridge_async_fifo_2_i,
      Q => Q(34),
      R => reset
    );
\rd_data_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_37_in_bridge_async_fifo_2_i,
      Q => Q(3),
      R => reset
    );
\rd_data_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_36_in_bridge_async_fifo_2_i,
      Q => Q(4),
      R => reset
    );
\rd_data_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_35_in_bridge_async_fifo_2_i,
      Q => Q(5),
      R => reset
    );
\rd_data_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_34_in_bridge_async_fifo_2_i,
      Q => Q(6),
      R => reset
    );
\rd_data_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_33_in_bridge_async_fifo_2_i,
      Q => Q(7),
      R => reset
    );
\rd_data_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_32_in_bridge_async_fifo_2_i,
      Q => Q(8),
      R => reset
    );
\rd_data_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => n_41_in_bridge_async_fifo_2_i,
      D => n_31_in_bridge_async_fifo_2_i,
      Q => Q(9),
      R => reset
    );
valid_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => '1',
      D => n_5_in_bridge_async_fifo_2_i,
      Q => \^o2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top is
  port (
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
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is "yes";
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 8;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 6;
  attribute VID_IN_DATA_WIDTH : integer;
  attribute VID_IN_DATA_WIDTH of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 32;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 32;
  attribute RAM_ADDR_BITS : integer;
  attribute RAM_ADDR_BITS of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 10;
  attribute HYSTERESIS_LEVEL : integer;
  attribute HYSTERESIS_LEVEL of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is 12;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top : entity is "v_vid_in_axi4s_v3_0_vid_in_axi4s_top";
end v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top;

architecture STRUCTURE of v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top is
  signal idf_data : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal idf_de : STD_LOGIC;
begin
in_coupler_i: entity work.v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_in_coupler
    port map (
      O1 => empty,
      O2 => m_axis_video_tvalid,
      Q(34) => fid,
      Q(33) => m_axis_video_tuser,
      Q(32) => m_axis_video_tlast,
      Q(31 downto 0) => m_axis_video_tdata(31 downto 0),
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      axis_enable => axis_enable,
      idf_data(34 downto 0) => idf_data(34 downto 0),
      idf_de => idf_de,
      m_axis_video_tready => m_axis_video_tready,
      rst => rst,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      wr_error => wr_error
    );
vid_in_formatter: entity work.v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_formatter
    port map (
      O1 => vtd_active_video,
      idf_data(34 downto 0) => idf_data(34 downto 0),
      idf_de => idf_de,
      vid_active_video => vid_active_video,
      vid_data(31 downto 0) => vid_data(31 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v_vid_in_axi4s_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of v_vid_in_axi4s_0 : entity is true;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_v3_0_vid_in_axi4s_top,Vivado 2014.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of v_vid_in_axi4s_0 : entity is "v_vid_in_axi4s_0,v_vid_in_axi4s_v3_0_vid_in_axi4s_top,{x_ipProduct=Vivado 2014.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_vid_in_axi4s,x_ipVersion=3.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,C_M_AXIS_VIDEO_DATA_WIDTH=8,C_M_AXIS_VIDEO_FORMAT=6,VID_IN_DATA_WIDTH=32,C_M_AXIS_VIDEO_TDATA_WIDTH=32,RAM_ADDR_BITS=10,HYSTERESIS_LEVEL=12}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of v_vid_in_axi4s_0 : entity is "yes";
end v_vid_in_axi4s_0;

architecture STRUCTURE of v_vid_in_axi4s_0 is
  attribute C_M_AXIS_VIDEO_DATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_DATA_WIDTH of inst : label is 8;
  attribute C_M_AXIS_VIDEO_FORMAT : integer;
  attribute C_M_AXIS_VIDEO_FORMAT of inst : label is 6;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH : integer;
  attribute C_M_AXIS_VIDEO_TDATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute HYSTERESIS_LEVEL : integer;
  attribute HYSTERESIS_LEVEL of inst : label is 12;
  attribute RAM_ADDR_BITS : integer;
  attribute RAM_ADDR_BITS of inst : label is 10;
  attribute VID_IN_DATA_WIDTH : integer;
  attribute VID_IN_DATA_WIDTH of inst : label is 32;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inst : label is "xilinx.com:interface:axis:1.0 video_out TDATA";
begin
inst: entity work.v_vid_in_axi4s_0v_vid_in_axi4s_v3_0_vid_in_axi4s_top
    port map (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      axis_enable => axis_enable,
      empty => empty,
      fid => fid,
      m_axis_video_tdata(31 downto 0) => m_axis_video_tdata(31 downto 0),
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tvalid => m_axis_video_tvalid,
      rst => rst,
      vid_active_video => vid_active_video,
      vid_data(31 downto 0) => vid_data(31 downto 0),
      vid_field_id => vid_field_id,
      vid_hblank => vid_hblank,
      vid_hsync => vid_hsync,
      vid_io_in_ce => vid_io_in_ce,
      vid_io_in_clk => vid_io_in_clk,
      vid_vblank => vid_vblank,
      vid_vsync => vid_vsync,
      vtd_active_video => vtd_active_video,
      vtd_field_id => vtd_field_id,
      vtd_hblank => vtd_hblank,
      vtd_hsync => vtd_hsync,
      vtd_vblank => vtd_vblank,
      vtd_vsync => vtd_vsync,
      wr_error => wr_error
    );
end STRUCTURE;
