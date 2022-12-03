


#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "platform.h"
#include "sleep.h"

//#include "xv_tpg.h"
//#include "xvidc.h"

//interrupts
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_assert.h"

//user libs
#include "camera_driver.h"
#include "vdma_api.h"
#include "iic_driver.h"


#define H_SIZE			1080
#define V_SIZE			1920
#define FRAME_SIZE		H_SIZE * V_SIZE * 3

//void config_tpg();
int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId, u16 WriteIntrId);

unsigned int srcBuffer = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x1000000);


unsigned int frame_count = 0;

XScuGic Intc;
int Status;
int main()
{
	//Initialization variables

	XAxiVdma InstancePtr;

	// Initialization modules
    init_platform();
    init_camera();
    //config_tpg();

    //uint8_t BufferPtr[2] = {0x12, 0x02};
    //XIic_Send(XPAR_IIC_0_BASEADDR, 0x42,BufferPtr, 2, XIIC_STOP);

   //config_IIC();
   //WriteData(0x1202);

   Status = run_triple_frame_buffer(&InstancePtr, 0, V_SIZE, H_SIZE,
   						srcBuffer, 100, 1);
	if (Status != XST_SUCCESS) {
		xil_printf("Transfer of frames failed with error = %d\r\n",Status);
		return XST_FAILURE;
	} else {
		xil_printf("Transfer of frames started \r\n");
	}

    xil_printf("\n--- Initialization complete --- \r\n");


	SetupIntrSystem(&InstancePtr, XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR, XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR);

	while(1);
    return 0;
}

//void config_tpg(){
//
//	XV_tpg ptpg;
//	XV_tpg_Config *ptpg_config;
//
//	ptpg_config = XV_tpg_LookupConfig(XPAR_V_TPG_0_DEVICE_ID);
//	XV_tpg_CfgInitialize(&ptpg, ptpg_config, ptpg_config->BaseAddress);
//
//	printf("TPG Initialization\r\n");
//
//	u32 height,width,status;
//
//	status = XV_tpg_IsReady(&ptpg);
//	printf("Status %u \n\r", (unsigned int) status);
//	status = XV_tpg_IsIdle(&ptpg);
//	printf("Status %u \n\r", (unsigned int) status);
//	XV_tpg_Set_height(&ptpg, (u32)H_SIZE);
//	XV_tpg_Set_width(&ptpg, (u32)V_SIZE);
//	height = XV_tpg_Get_height(&ptpg);
//	width = XV_tpg_Get_width(&ptpg);
//	XV_tpg_Set_colorFormat(&ptpg,XVIDC_CSF_RGB);
//	XV_tpg_Set_maskId(&ptpg, 0x0);
//	XV_tpg_Set_motionSpeed(&ptpg, 4);
//	printf("info from tpg %u %u \n\r", (unsigned int)height, (unsigned int)width);
//	XV_tpg_Set_bckgndId(&ptpg, XTPG_BKGND_COLOR_BARS);
//	status = XV_tpg_Get_bckgndId(&ptpg);
//	printf("Status %x \n\r", (unsigned int) status);
//	XV_tpg_EnableAutoRestart(&ptpg);
//	XV_tpg_Start(&ptpg);
//	status = XV_tpg_IsIdle(&ptpg);
//	printf("Status %u \n\r", (unsigned int) status);
//
//}

static void ReadCallBack(void *CallbackRef, u32 Mask)
{
	printf("Read Call back function is called\r\n");
	sleep(1);

}
static void WriteCallBack(void *CallbackRef, u32 Mask)
{
	printf("Write Call back function is called\r\n");
	sleep(1);

}
static void ReadErrorCallBack(void *CallbackRef, u32 Mask)
{
	/* User can add his code in this call back function */
	xil_printf("Read Call back Error function is called\r\n");

}
static void WriteErrorCallBack(void *CallbackRef, u32 Mask)
{

	/* User can add his code in this call back function */
	xil_printf("Write Call back Error function is called \r\n");

}
int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId, u16 WriteIntrId)
{
	XScuGic Intc;
	XScuGic *IntcInstancePtr =&Intc;

	/* Initialize the interrupt controller and connect the ISRs */
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	Status =  XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);
	if(Status != XST_SUCCESS){
		xil_printf("Interrupt controller initialization failed..");
		return -1;
	}
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, ReadIntrId, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, WriteIntrId, 0xA0, 0x3);

	Status = XScuGic_Connect(IntcInstancePtr, ReadIntrId,
				(Xil_InterruptHandler)XAxiVdma_ReadIntrHandler,
				AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	Status = XScuGic_Connect(IntcInstancePtr, WriteIntrId,
				(Xil_InterruptHandler)XAxiVdma_WriteIntrHandler,
				AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	XScuGic_Enable(IntcInstancePtr, ReadIntrId);
	XScuGic_Enable(IntcInstancePtr, WriteIntrId);

	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,(void *)IntcInstancePtr);
	Xil_ExceptionEnable();

	/* Register call-back functions
	 */

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL, ReadCallBack,(void *)AxiVdmaPtr, XAXIVDMA_READ);
	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR,ReadErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_READ);

	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_GENERAL,WriteCallBack, (void *)AxiVdmaPtr, XAXIVDMA_WRITE);
	XAxiVdma_SetCallBack(AxiVdmaPtr, XAXIVDMA_HANDLER_ERROR,WriteErrorCallBack, (void *)AxiVdmaPtr, XAXIVDMA_WRITE);

	return XST_SUCCESS;
}

//https://www.eecg.utoronto.ca/~pc/courses/432/2015/projects/7_hole/community-gustavo/AXI_OV7670_Decoder_Datasheet.pdf
