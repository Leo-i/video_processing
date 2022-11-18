

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "camera_driver.h"
#include "OV7670_decoder.h"


volatile unsigned int * vdma = (unsigned int*) XPAR_AXI_VDMA_0_BASEADDR;
//volatile unsigned int * AR = (unsigned int*) XPAR_TFT_0_BASEADDR;//TFT CONFIGURE PARAMETER

volatile unsigned int * conf_reg = (unsigned int*) (0x43C00000 + OV7670_DECODER_S00_AXI_SLV_REG0_OFFSET);
volatile unsigned int * camera_state = (unsigned int*) (0x43C00000 + OV7670_DECODER_S00_AXI_SLV_REG1_OFFSET);
volatile unsigned int * decoder_type = (unsigned int*) (0x43C00000 + OV7670_DECODER_S00_AXI_SLV_REG2_OFFSET);

void init_camera(){


	config_OV7670();
//	vdma[12] = 0x0000000B; // enable vdma
//	vdma[43] = 0x80000000; // write base address
//	vdma[42] = 4*1024; // stride (bytes)
//	vdma[41] = 4*640; // image size (bytes)
//	vdma[40] = 512; // number of lines
	//*AR = 0x80000000;//output;
	camera_set_mode();
}

void camera_set_mode(){
	//conf_reg = 0xA98C00; // no RGB444. Other formats only work if RGB444 is disabled.
	//conf_reg = 0xAA40F0; // RGB555
	//conf_reg = 0xAB40D0; // RGB565
	*decoder_type = 1; // 0 = RGB444, 1 = RGB555, 2 = RGB565
}

void config_OV7670(void) {
	//1
	*camera_state = 0;
	*conf_reg = 0x000000;
	*conf_reg = 0x010000;
	*conf_reg = 0x023a04;
	*conf_reg = 0x033dc8;
	*conf_reg = 0x041e31;
	*conf_reg = 0x056b00;
	*conf_reg = 0x0632b6;
	*conf_reg = 0x071713;
	*conf_reg = 0x081801;
	*conf_reg = 0x091902;
	*conf_reg = 0x0A1a7a;
	*conf_reg = 0x0B030a;
	*conf_reg = 0x0C0c00;
	*conf_reg = 0x0D3e00;
	*conf_reg = 0x0E7000;
	*conf_reg = 0x0F7100;
	*conf_reg = 0x107211;
	*conf_reg = 0x117300;
	*conf_reg = 0x12a202;
	*conf_reg = 0x131180;
	*conf_reg = 0x147a20;
	*conf_reg = 0x157b1c;
	*conf_reg = 0x167c28;
	*conf_reg = 0x177d3c;
	*conf_reg = 0x187e55;
	*conf_reg = 0x197f68;
	*conf_reg = 0x1A8076;
	*conf_reg = 0x1B8180;
	*conf_reg = 0x1C8288;
	*conf_reg = 0x1D838f;
	*conf_reg = 0x1E8496;
	*conf_reg = 0x1F85a3;
	*conf_reg = 0x2086af;
	*conf_reg = 0x2187c4;
	*conf_reg = 0x2288d7;
	*conf_reg = 0x2389e8;
	*conf_reg = 0x2413e0;
	*conf_reg = 0x250000;
	*conf_reg = 0x261000;
	*conf_reg = 0x270d00;
	*conf_reg = 0x281428;
	*conf_reg = 0x29a505;
	*conf_reg = 0x2Aab07;
	*conf_reg = 0x2B2475;
	*conf_reg = 0x2C2563;
	*conf_reg = 0x2D26a5;
	*conf_reg = 0x2E9f78;
	*conf_reg = 0x2Fa068;
	*conf_reg = 0x30a103;
	*conf_reg = 0x31a6df;
	*conf_reg = 0x32a7df;
	*conf_reg = 0x33a8f0;
	*conf_reg = 0x34a990;
	*conf_reg = 0x35aa94;
	*conf_reg = 0x3613ef;
	//2
	*conf_reg= 0x370e61;
	*conf_reg= 0x380f4b;
	*conf_reg= 0x391602;
	*conf_reg= 0x3A2102;
	*conf_reg= 0x3B2291;
	*conf_reg= 0x3C2907;
	*conf_reg= 0x3D330b;
	*conf_reg= 0x3E350b;
	*conf_reg= 0x3F371d;
	*conf_reg= 0x403871;
	*conf_reg= 0x41392a;
	*conf_reg= 0x423c78;
	*conf_reg= 0x434d40;
	*conf_reg= 0x444e20;
	*conf_reg= 0x456900;
	*conf_reg= 0x467419;
	*conf_reg= 0x478d4f;
	*conf_reg= 0x488e00;
	*conf_reg= 0x498f00;
	*conf_reg= 0x4A9000;
	*conf_reg= 0x4B9100;
	*conf_reg= 0x4C9200;
	*conf_reg= 0x4D9600;
	*conf_reg= 0x4E9a80;
	*conf_reg= 0x4Fb084;
	*conf_reg= 0x50b10c;
	*conf_reg= 0x51b20e;
	*conf_reg= 0x52b382;
	*conf_reg= 0x53b80a;
	*conf_reg= 0x544314;
	*conf_reg= 0x5544f0;
	*conf_reg= 0x564534;
	*conf_reg= 0x574658;
	*conf_reg= 0x584728;
	*conf_reg= 0x59483a;
	*conf_reg= 0x5A5988;
	*conf_reg= 0x5B5a88;
	*conf_reg= 0x5C5b44;
	*conf_reg= 0x5D5c67;
	*conf_reg= 0x5E5d49;
	*conf_reg= 0x5F5e0e;
	*conf_reg= 0x606404;
	*conf_reg= 0x616520;
	*conf_reg= 0x626605;
	*conf_reg= 0x639404;
	*conf_reg= 0x649508;
	*conf_reg= 0x659508;
	*conf_reg= 0x666d55;
	*conf_reg= 0x676e11;
	*conf_reg= 0x686f9f;
	*conf_reg= 0x696a40;
	*conf_reg= 0x6A0140;
	*conf_reg= 0x6B0240;
	*conf_reg= 0x6C13e7;
	*conf_reg= 0x6D1500;
	*conf_reg= 0x6E4f80;
	*conf_reg= 0x6F5080;
	*conf_reg= 0x705100;
	*conf_reg= 0x715222;
	*conf_reg= 0x72535e;
	*conf_reg= 0x735480;
	*conf_reg= 0x74589e;
	*conf_reg= 0x754108;
	*conf_reg= 0x763f00;
	*conf_reg= 0x777505;
	*conf_reg= 0x7876e1;
	*conf_reg= 0x794c00;
	*conf_reg= 0x7A7701;
	*conf_reg= 0x7B4b09;
	*conf_reg= 0x7Cc9F0;
	*conf_reg= 0x7D4138;
	*conf_reg= 0x7E5640;
	*conf_reg= 0x7F3411;
	*conf_reg= 0x803b02;
	*conf_reg= 0x81a489;
	*conf_reg= 0x829600;
	*conf_reg= 0x839730;
	*conf_reg= 0x849820;
	*conf_reg= 0x859930;
	*conf_reg= 0x869a84;
	*conf_reg= 0x879b29;
	//3
	*conf_reg= 0x889c03;
	*conf_reg= 0x899d4c;
	*conf_reg= 0x8A9e3f;
	*conf_reg= 0x8B7804;
	*conf_reg= 0x8C7901;
	*conf_reg= 0x8Dc8f0;
	*conf_reg= 0x8E790f;
	*conf_reg= 0x8Fc800;
	*conf_reg= 0x907910;
	*conf_reg= 0x91c87e;
	*conf_reg= 0x92790a;
	*conf_reg= 0x93c880;
	*conf_reg= 0x94790b;
	*conf_reg= 0x95c801;
	*conf_reg= 0x96790c;
	*conf_reg= 0x97c80f;
	*conf_reg= 0x98790d;
	*conf_reg= 0x99c820;
	*conf_reg= 0x9A7909;
	*conf_reg= 0x9Bc880;
	*conf_reg= 0x9C7902;
	*conf_reg= 0x9Dc8c0;
	*conf_reg= 0x9E7903;
	*conf_reg= 0x9Fc840;
	*conf_reg= 0xA07905;
	*conf_reg= 0xA1c830;
	*conf_reg= 0xA27926;
	*conf_reg= 0xA30903;
	*conf_reg= 0xA43b42;
	*conf_reg= 0xA58c02;
	*conf_reg= 0xA640d0;
	*conf_reg= 0xA71204;
	*conf_reg= 0xA81e11;
	*conf_reg= 0xA90000;
	*conf_reg= 0xAA0000;
	*conf_reg= 0xAB0000;
	*conf_reg= 0xAC0000;
	*conf_reg= 0xAD0000;
	*conf_reg= 0xAE0000;
	*conf_reg= 0xAF0000;
	*conf_reg= 0xB00000;
	*conf_reg= 0xB10000;
	*conf_reg= 0xB20000;
	*conf_reg= 0xB30000;
	*conf_reg= 0xB40000;
	*conf_reg= 0xB50000;
	*conf_reg= 0xB60000;
	*conf_reg= 0xB70000;
	*conf_reg= 0xB80000;
	*conf_reg= 0xB90000;
	*conf_reg= 0xBA0000;
	*conf_reg= 0xBB0000;
	*conf_reg= 0xBC0000;
	*conf_reg= 0xBD0000;
	*conf_reg= 0xBE0000;
	*conf_reg= 0xBF0000;
	*conf_reg= 0xC00000;
	*conf_reg= 0xC10000;
	*conf_reg= 0xC20000;
	*conf_reg= 0xC30000;
	*conf_reg= 0xC40000;
	*conf_reg= 0xC50000;
	*conf_reg= 0xC60000;
	*conf_reg= 0xC70000;
	*conf_reg= 0xC80000;
	*conf_reg= 0xC90000;
	*conf_reg= 0xCA0000;
	*conf_reg= 0xCB0000;
	*conf_reg= 0xCC0000;
	*conf_reg= 0xCD0000;
	*conf_reg= 0xCE0000;
	*conf_reg= 0xCF0000;
	*conf_reg= 0xD00000;
	*conf_reg= 0xD10000;
	*conf_reg= 0xD20000;
	*conf_reg= 0xD30000;
	*conf_reg= 0xD40000;
	*conf_reg= 0xD50000;
	*conf_reg= 0xD60000;
	*conf_reg= 0xD70000;
	//4
	*conf_reg = 0xD80000;
	*conf_reg = 0xD90000;
	*conf_reg = 0xDA0000;
	*conf_reg = 0xDB0000;
	*conf_reg = 0xDC0000;
	*conf_reg = 0xDD0000;
	*conf_reg = 0xDE0000;
	*conf_reg = 0xDF0000;
	*conf_reg = 0xE00000;
	*conf_reg = 0xE10000;
	*conf_reg = 0xE20000;
	*conf_reg = 0xE30000;
	*conf_reg = 0xE40000;
	*conf_reg = 0xE50000;
	*conf_reg = 0xE60000;
	*conf_reg = 0xE70000;
	*conf_reg = 0xE80000;
	*conf_reg = 0xE90000;
	*conf_reg = 0xEA0000;
	*conf_reg = 0xEB0000;
	*conf_reg = 0xEC0000;
	*conf_reg = 0xED0000;
	*conf_reg = 0xEE0000;
	*conf_reg = 0xEF0000;
	*conf_reg = 0xF00000;
	*conf_reg = 0xF10000;
	*conf_reg = 0xF20000;
	*conf_reg = 0xF30000;
	*conf_reg = 0xF40000;
	*conf_reg = 0xF50000;
	*conf_reg = 0xF60000;
	*conf_reg = 0xF70000;
	*conf_reg = 0xF80000;
	*conf_reg = 0xF90000;
	*conf_reg = 0xFA0000;
	*conf_reg = 0xFB0000;
	*conf_reg = 0xFC0000;
	*conf_reg = 0xFD0000;
	*conf_reg = 0xFE0000;
	*conf_reg = 0xFF0000;

	*camera_state = 1; // run camera configuration
	*camera_state = 0;

	print("Finished camera configuration\n");
}
