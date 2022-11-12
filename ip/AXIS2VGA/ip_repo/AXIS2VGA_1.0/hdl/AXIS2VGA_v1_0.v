
`timescale 1 ns / 1 ps

	module AXIS2VGA_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface params_AXI
		parameter integer C_params_AXI_DATA_WIDTH	= 32,
		parameter integer C_params_AXI_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface video_AXI
		parameter integer C_video_AXI_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface params_AXI
		input wire  params_axi_aclk,
		input wire  params_axi_aresetn,
		input wire [C_params_AXI_ADDR_WIDTH-1 : 0] params_axi_awaddr,
		input wire [2 : 0] params_axi_awprot,
		input wire  params_axi_awvalid,
		output wire  params_axi_awready,
		input wire [C_params_AXI_DATA_WIDTH-1 : 0] params_axi_wdata,
		input wire [(C_params_AXI_DATA_WIDTH/8)-1 : 0] params_axi_wstrb,
		input wire  params_axi_wvalid,
		output wire  params_axi_wready,
		output wire [1 : 0] params_axi_bresp,
		output wire  params_axi_bvalid,
		input wire  params_axi_bready,
		input wire [C_params_AXI_ADDR_WIDTH-1 : 0] params_axi_araddr,
		input wire [2 : 0] params_axi_arprot,
		input wire  params_axi_arvalid,
		output wire  params_axi_arready,
		output wire [C_params_AXI_DATA_WIDTH-1 : 0] params_axi_rdata,
		output wire [1 : 0] params_axi_rresp,
		output wire  params_axi_rvalid,
		input wire  params_axi_rready,

		// Ports of Axi Slave Bus Interface video_AXI
		input wire  video_axi_aclk,
		input wire  video_axi_aresetn,
		output wire  video_axi_tready,
		input wire [C_video_AXI_TDATA_WIDTH-1 : 0] video_axi_tdata,
		input wire [(C_video_AXI_TDATA_WIDTH/8)-1 : 0] video_axi_tstrb,
		input wire  video_axi_tlast,
		input wire  video_axi_tvalid
	);
// Instantiation of Axi Bus Interface params_AXI
	AXIS2VGA_v1_0_params_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_params_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_params_AXI_ADDR_WIDTH)
	) AXIS2VGA_v1_0_params_AXI_inst (
		.S_AXI_ACLK(params_axi_aclk),
		.S_AXI_ARESETN(params_axi_aresetn),
		.S_AXI_AWADDR(params_axi_awaddr),
		.S_AXI_AWPROT(params_axi_awprot),
		.S_AXI_AWVALID(params_axi_awvalid),
		.S_AXI_AWREADY(params_axi_awready),
		.S_AXI_WDATA(params_axi_wdata),
		.S_AXI_WSTRB(params_axi_wstrb),
		.S_AXI_WVALID(params_axi_wvalid),
		.S_AXI_WREADY(params_axi_wready),
		.S_AXI_BRESP(params_axi_bresp),
		.S_AXI_BVALID(params_axi_bvalid),
		.S_AXI_BREADY(params_axi_bready),
		.S_AXI_ARADDR(params_axi_araddr),
		.S_AXI_ARPROT(params_axi_arprot),
		.S_AXI_ARVALID(params_axi_arvalid),
		.S_AXI_ARREADY(params_axi_arready),
		.S_AXI_RDATA(params_axi_rdata),
		.S_AXI_RRESP(params_axi_rresp),
		.S_AXI_RVALID(params_axi_rvalid),
		.S_AXI_RREADY(params_axi_rready)
	);

// Instantiation of Axi Bus Interface video_AXI
	AXIS2VGA_v1_0_video_AXI # ( 
		.C_S_AXIS_TDATA_WIDTH(C_video_AXI_TDATA_WIDTH)
	) AXIS2VGA_v1_0_video_AXI_inst (
		.S_AXIS_ACLK(video_axi_aclk),
		.S_AXIS_ARESETN(video_axi_aresetn),
		.S_AXIS_TREADY(video_axi_tready),
		.S_AXIS_TDATA(video_axi_tdata),
		.S_AXIS_TSTRB(video_axi_tstrb),
		.S_AXIS_TLAST(video_axi_tlast),
		.S_AXIS_TVALID(video_axi_tvalid)
	);

	// Add user logic here

	// User logic ends

	endmodule
