


#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "platform.h"
#include "sleep.h"

//interrupts
#include "xscugic.h"
#include "xil_exception.h"
#include "xil_assert.h"

//user libs
#include "camera_driver.h"
#include "vdma_api.h"


#define H_SIZE			640
#define V_SIZE			480
#define FRAME_SIZE		H_SIZE * V_SIZE * 3

void config_tpg();
int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 ReadIntrId, u16 WriteIntrId);


unsigned int srcBuffer = (XPAR_PS7_DDR_0_S_AXI_BASEADDR  + 0x1000000);


unsigned int frame_count = 0;

XScuGic Intc;
int Status;
int main()
{
	//Initialization variables
	vdma_handle vdma_context;
	vdma_context.init_done = 0;


	// Initialization modules
    init_platform();
    config_OV7670();
    set_transaction(&vdma_context, 0, V_SIZE, H_SIZE, srcBuffer, 100, 0);
    xil_printf("\n--- Initialization complete --- \r\n");

    // launch vdma transactions
	StartTransfer(vdma_context.InstancePtr);

	SetupIntrSystem(vdma_context.InstancePtr, XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR, XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR);

	while(1);
    return 0;
}


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
