
##connect OV7670 camera
set_property PACKAGE_PIN AB9 [get_ports clk_24_mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_24_mhz]     
#JA9

set_property PACKAGE_PIN Y10 [get_ports pclk]   
#set_property PACKAGE_PIN AB6 [get_ports pclk]              
set_property IOSTANDARD LVCMOS33 [get_ports pclk]
##JA3

set_property PACKAGE_PIN AA11 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]          
##JA2
set_property PACKAGE_PIN AB10 [get_ports href]
set_property IOSTANDARD LVCMOS33 [get_ports href]           
##JA8

set_property PACKAGE_PIN V9 [get_ports d[0]]              
set_property IOSTANDARD LVCMOS33 [get_ports d[0]]
##JB9
set_property PACKAGE_PIN V10 [get_ports d[1]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[1]]
##JB3
set_property PACKAGE_PIN W10 [get_ports d[2]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[2]]
##JB8
set_property PACKAGE_PIN W11 [get_ports d[3]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[3]]
##JB2
set_property PACKAGE_PIN V12 [get_ports d[4]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[4]]
##JB7
set_property PACKAGE_PIN W12 [get_ports d[5]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[5]]
##JB1
set_property PACKAGE_PIN AA8 [get_ports d[6]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[6]]
##JA10
set_property PACKAGE_PIN AA9 [get_ports d[7]]               
set_property IOSTANDARD LVCMOS33 [get_ports d[7]]
#JA4

set_property PACKAGE_PIN Y11 [get_ports I2C_SCLK]           
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SCLK]
##JA1
set_property PACKAGE_PIN AB11 [get_ports I2C_SDAT]           
set_property IOSTANDARD LVCMOS33 [get_ports I2C_SDAT]
##JA7
set_property PACKAGE_PIN V8 [get_ports pwdn]               
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]
##JB10
set_property PACKAGE_PIN W8 [get_ports resetI2C]           
set_property IOSTANDARD LVCMOS33 [get_ports resetI2C]
#JB4

##
## ZedBoard HDMI I2C Controller
##

#set_property PACKAGE_PIN AA18 [get_ports {zed_hdmi_iic_scl_io}]
#set_property IOSTANDARD LVCMOS25 [get_ports {zed_hdmi_iic_scl_io}]
#set_property SLEW SLOW [get_ports {zed_hdmi_iic_scl_io}]
#set_property DRIVE 8 [get_ports {zed_hdmi_iic_scl_io}]

#set_property PACKAGE_PIN Y16 [get_ports {zed_hdmi_iic_sda_io}]
#set_property IOSTANDARD LVCMOS25 [get_ports {zed_hdmi_iic_sda_io}]
#set_property SLEW SLOW [get_ports {zed_hdmi_iic_sda_io}]
#set_property DRIVE 8 [get_ports {zed_hdmi_iic_sda_io}]

##
## ZedBoard HDMI Output
##

#set_property PACKAGE_PIN W18 [get_ports hdmi_io_clk]
#set_property IOSTANDARD LVCMOS25 [get_ports hdmi_io_clk]

#set_property PACKAGE_PIN W17 [get_ports hdmi_io_vsync]
#set_property IOSTANDARD LVCMOS25 [get_ports hdmi_io_vsync]

#set_property PACKAGE_PIN V17 [get_ports hdmi_io_hsync]
#set_property IOSTANDARD LVCMOS25 [get_ports hdmi_io_hsync]

#set_property PACKAGE_PIN U16 [get_ports hdmi_io_de]
#set_property IOSTANDARD LVCMOS25 [get_ports hdmi_io_de]

#set_property PACKAGE_PIN Y13 [get_ports {hdmi_io_data[0]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[0]}]

#set_property PACKAGE_PIN AA13 [get_ports {hdmi_io_data[1]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[1]}]

#set_property PACKAGE_PIN AA14 [get_ports {hdmi_io_data[2]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[2]}]

#set_property PACKAGE_PIN Y14 [get_ports {hdmi_io_data[3]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[3]}]

#set_property PACKAGE_PIN AB15 [get_ports {hdmi_io_data[4]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[4]}]

#set_property PACKAGE_PIN AB16 [get_ports {hdmi_io_data[5]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[5]}]

#set_property PACKAGE_PIN AA16 [get_ports {hdmi_io_data[6]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[6]}]

#set_property PACKAGE_PIN AB17 [get_ports {hdmi_io_data[7]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[7]}]

#set_property PACKAGE_PIN AA17 [get_ports {hdmi_io_data[8]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[8]}]

#set_property PACKAGE_PIN Y15 [get_ports {hdmi_io_data[9]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[9]}]

#set_property PACKAGE_PIN W13 [get_ports {hdmi_io_data[10]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[10]}]

#set_property PACKAGE_PIN W15 [get_ports {hdmi_io_data[11]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[11]}]

#set_property PACKAGE_PIN V15 [get_ports {hdmi_io_data[12]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[12]}]

#set_property PACKAGE_PIN U17 [get_ports {hdmi_io_data[13]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[13]}]

#set_property PACKAGE_PIN V14 [get_ports {hdmi_io_data[14]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[14]}]

#set_property PACKAGE_PIN V13 [get_ports {hdmi_io_data[15]}]
#set_property IOSTANDARD LVCMOS25 [get_ports {hdmi_io_data[15]}]

#set_property PACKAGE_PIN U15 [get_ports hdmi_io_spdif]
#set_property IOSTANDARD LVCMOS25 [get_ports hdmi_io_spdif]


#VGA controler

set_property PACKAGE_PIN F22 [get_ports reset_vga]
set_property PACKAGE_PIN Y21 [get_ports {VGA_B[0]}]
set_property PACKAGE_PIN Y20 [get_ports {VGA_B[1]}]
set_property PACKAGE_PIN AB20 [get_ports {VGA_B[2]}]
set_property PACKAGE_PIN AB19 [get_ports {VGA_B[3]}]
set_property PACKAGE_PIN AB22 [get_ports {VGA_G[0]}]
set_property PACKAGE_PIN AA22 [get_ports {VGA_G[1]}]
set_property PACKAGE_PIN AB21 [get_ports {VGA_G[2]}]
set_property PACKAGE_PIN AA21 [get_ports {VGA_G[3]}]
set_property PACKAGE_PIN AA19 [get_ports vid_hsync]
set_property PACKAGE_PIN V20 [get_ports {VGA_R[0]}]
set_property PACKAGE_PIN U20 [get_ports {VGA_R[1]}]
set_property PACKAGE_PIN V19 [get_ports {VGA_R[2]}]
set_property PACKAGE_PIN V18 [get_ports {VGA_R[3]}]
set_property PACKAGE_PIN Y19 [get_ports vid_vsync]

set_property IOSTANDARD LVCMOS33 [get_ports reset_vga]
set_property IOSTANDARD LVCMOS33 [get_ports vid_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vid_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]




set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_IBUF]