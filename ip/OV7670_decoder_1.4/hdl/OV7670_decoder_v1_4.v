
`timescale 1 ps / 1 ps

	module OV7670_decoder_v1_4 #
	(
		// Users to add parameters here

	    // User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Master Bus Interface M00_AXIS
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M00_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here
        input wire pclk,
        input wire vsync,
        input wire href,
        input wire [7:0] d,
        
        output wire I2C_SCLK,
        inout wire I2C_SDAT,
        output wire Config_Done,
        input wire reset,
        
        output wire resetI2C,
        output wire pwdn,
        
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

		// Ports of Axi Master Bus Interface M00_AXIS
		input wire  m00_axis_aclk,
		input wire  m00_axis_aresetn,
		output wire  m00_axis_tvalid,
		output wire [31 : 0] m00_axis_tdata,
		//output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
		output wire  m00_axis_tlast,
		input wire  m00_axis_tready,
		output wire  m00_axis_tuser
		
	);
	
        // User connections
        wire vsync_out;
        wire href_out;
        wire [31:0] dout;
        wire data_valid;
        wire pclk_out;
        wire [2:0] mode;
        // End User connections
    
// Instantiation of Axi Bus Interface S00_AXI
	OV7670_decoder_v1_4_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) OV7670_decoder_v1_4_S00_AXI_inst (
        .I2C_SDAT(I2C_SDAT),
        .I2C_SCLK(I2C_SCLK),
        .Config_Done(Config_Done),
        .LUT_INDEX(),
        .I2C_RDATA(),
        .reset(reset),
        .mode(mode),
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

// Instantiation of Video In to AXI4-Stream
    v_vid_in_axi4s_1 videoIN2axi4s (
         .vid_io_in_clk(pclk_out),              // input wire vid_io_in_clk
         .vid_io_in_ce(1),                // input wire vid_io_in_ce
         .vid_io_in_reset(0),
         .vid_active_video(data_valid),        // input wire vid_active_video
         .vid_vblank(),                    // input wire vid_vblank
         .vid_hblank(),                    // input wire vid_hblank
         .vid_vsync(vsync_out),                      // input wire vid_vsync
         .vid_hsync(href_out),                      // input wire vid_hsync
         .vid_field_id(),                // input wire vid_field_id
         .vid_data(dout),                        // input wire [31 : 0] vid_data
         .aclk(m00_axis_aclk),                                // input wire aclk
         .aclken(1),                            // input wire aclken
         .aresetn(m00_axis_aresetn),                          // input wire aresetn
         .m_axis_video_tdata(m00_axis_tdata),    // output wire [31 : 0] m_axis_video_tdata
         .m_axis_video_tvalid(m00_axis_tvalid),  // output wire m_axis_video_tvalid
         .m_axis_video_tready(m00_axis_tready),  // input wire m_axis_video_tready
         .m_axis_video_tuser(m00_axis_tuser),    // output wire m_axis_video_tuser
         .m_axis_video_tlast(m00_axis_tlast),    // output wire m_axis_video_tlast
         .fid(),                                  // output wire fid
         .vtd_active_video(),        // output wire vtd_active_video
         .vtd_vblank(),                    // output wire vtd_vblank
         .vtd_hblank(),                    // output wire vtd_hblank
         .vtd_vsync(),                      // output wire vtd_vsync
         .vtd_hsync(),                      // output wire vtd_hsync
         .vtd_field_id(),                // output wire vtd_field_id
       //   .wr_error(),                        // output wire wr_error
       //   .empty(),                              // output wire empty
          .axis_enable(1)                  // input wire axis_enable
    );
    
// Instantiation of Video Decoder
    
    videoin videoin_0(
            .pclk(pclk),
            .vsync(vsync),
            .href(href),
            .d(d),
            .vsync_out(vsync_out),
            .href_out(href_out),
            .hsync(),
            .dout(dout),
            .data_valid(data_valid),
            .pclk_out(pclk_out),
            .mode(mode)
     );
    
    assign resetI2C = 1;
    assign pwdn = 0;
     
	endmodule
