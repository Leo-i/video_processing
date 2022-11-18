/******************************************************************************
* Copyright (C) 2014 - 2021 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

/*****************************************************************************/
/**
 *
 * @file vdma_api.c
 *
 * This file has high level API to configure and start the VDMA.The file assumes that:
 * The design has VDMA with both MM2S and S2MM path enable.
 * The API's has tested with hardware that has tow VDMA and MM2S to S2MM are back
 * to back connected for each VDMA.
 *
 * MODIFICATION HISTORY:
 *
 * Ver   Who  Date     Changes
 * ----- ---- -------- -------------------------------------------------------
 * 4.0   adk  11/26/15 First release
 ****************************************************************************/

//#define DEBUG_MODE		0

/******************** Include files **********************************/
#include "vdma_api.h"



int set_transaction(vdma_handle *vdma_context, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count, int enable_frm_cnt_intr)
{
	int Status;
	XAxiVdma_Config *Config;
	XAxiVdma AxiVdma;

	vdma_context->device_id = DeviceId;
	vdma_context->vsize = vsize;
	vdma_context->hsize = hsize*3;
	vdma_context->buffer_address = buf_base_addr;
	vdma_context->enable_frm_cnt_intr = enable_frm_cnt_intr;
	vdma_context->number_of_frame_count = number_frame_count;
	vdma_context->InstancePtr->MaxNumFrames = 20;
	vdma_context->InstancePtr = &AxiVdma;
	Config = XAxiVdma_LookupConfig(DeviceId); //get the configuration structure
	if (!Config) {
		xil_printf(
		    "No video DMA found for ID %d\r\n", DeviceId);

		return XST_FAILURE;
	}


	if(vdma_context->init_done ==0) {


		/* Initialize DMA engine */
		Status = XAxiVdma_CfgInitialize(vdma_context->InstancePtr,
						Config, Config->BaseAddress);
		if (Status != XST_SUCCESS) {
			xil_printf("Configuration Initialization failed %d\r\n",
					Status);
			return XST_FAILURE;
		}

		vdma_context->init_done = 1;
	}



	/* Setup the write channel */
	Status = WriteSetup(vdma_context);
	if (Status != XST_SUCCESS) {
		xil_printf("Write channel setup failed %d\r\n", Status);
		if(Status == XST_VDMA_MISMATCH_ERROR)
			xil_printf("DMA Mismatch Error\r\n");
		return XST_FAILURE;
	}

	/* Setup the read channel */
	Status = ReadSetup(vdma_context);
	if (Status != XST_SUCCESS) {
		xil_printf("Read channel setup failed %d\r\n", Status);
		if(Status == XST_VDMA_MISMATCH_ERROR)
			xil_printf("DMA Mismatch Error\r\n");
		return XST_FAILURE;
	}

	XAxiVdma_IntrEnable(vdma_context->InstancePtr,
			XAXIVDMA_IXR_COMPLETION_MASK,XAXIVDMA_WRITE);
	XAxiVdma_IntrEnable(vdma_context->InstancePtr,
			XAXIVDMA_IXR_COMPLETION_MASK ,XAXIVDMA_READ);

	return XST_SUCCESS;
}


/*****************************************************************************/
/**
*
* This function sets up the read channel
*
* @param	InstancePtr is the instance pointer to the DMA engine.
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
int ReadSetup(vdma_handle *vdma_context)
{
	int Index;
	u32 Addr;
	int Status;

	vdma_context->ReadCfg.VertSizeInput = vdma_context->vsize;
	vdma_context->ReadCfg.HoriSizeInput = vdma_context->hsize;

	vdma_context->ReadCfg.Stride = vdma_context->hsize;
	vdma_context->ReadCfg.FrameDelay = 0;  /* This example does not test frame delay */

	vdma_context->ReadCfg.EnableCircularBuf = 1;
	vdma_context->ReadCfg.EnableSync = 1;  /* Gen-Lock */

	vdma_context->ReadCfg.PointNum = 0;
	vdma_context->ReadCfg.EnableFrameCounter = 0; /* Endless transfers */

	vdma_context->ReadCfg.FixedFrameStoreAddr = 0; /* We are not doing parking */
	/* Configure the VDMA is per fixed configuration, This configuration is being used by majority
	 * of customer. Expert users can play around with this if they have different configurations */

	Status = XAxiVdma_DmaConfig(vdma_context->InstancePtr, XAXIVDMA_READ, &vdma_context->ReadCfg);
	if (Status != XST_SUCCESS) {
		xil_printf("Read channel config failed %d\r\n", Status);
		return XST_FAILURE;
	}

	/* Initialize buffer addresses
	 *
	 * These addresses are physical addresses
	 */
	Addr = vdma_context->buffer_address;

	for(Index = 0; Index < vdma_context->InstancePtr->MaxNumFrames; Index++) {
		vdma_context->ReadCfg.FrameStoreStartAddr[Index] = Addr;

		/* Initializing the buffer in case of Debug mode */

		Addr +=  vdma_context->hsize * vdma_context->vsize;
	}

	/* Set the buffer addresses for transfer in the DMA engine
	 * The buffer addresses are physical addresses
	 */
	Status = XAxiVdma_DmaSetBufferAddr(vdma_context->InstancePtr, XAXIVDMA_READ,
			vdma_context->ReadCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
		xil_printf(
			"Read channel set buffer address failed %d\r\n", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function sets up the write channel
*
* @param	dma_context is the context pointer to the VDMA engine..
*
* @return	XST_SUCCESS if the setup is successful, XST_FAILURE otherwise.
*
* @note		None.
*
******************************************************************************/
int WriteSetup(vdma_handle *vdma_context)
{
	int Index;
	u32 Addr;
	int Status;

	vdma_context->WriteCfg.VertSizeInput = vdma_context->vsize;
	vdma_context->WriteCfg.HoriSizeInput = vdma_context->hsize;

	vdma_context->WriteCfg.Stride = vdma_context->hsize;
	vdma_context->WriteCfg.FrameDelay = 0;  /* This example does not test frame delay */

	vdma_context->WriteCfg.EnableCircularBuf = 1;
	vdma_context->WriteCfg.EnableSync = 1;  /*  Gen-Lock */

	vdma_context->WriteCfg.PointNum = 0;
	vdma_context->WriteCfg.EnableFrameCounter = 0; /* Endless transfers */

	vdma_context->WriteCfg.FixedFrameStoreAddr = 0; /* We are not doing parking */
	/* Configure the VDMA is per fixed configuration, This configuration
	 * is being used by majority of customers. Expert users can play around
	 * with this if they have different configurations
	 */

	Status = XAxiVdma_DmaConfig(vdma_context->InstancePtr, XAXIVDMA_WRITE, &vdma_context->WriteCfg);
	if (Status != XST_SUCCESS) {
		xil_printf(
			"Write channel config failed %d\r\n", Status);

		return Status;
	}

	/* Initialize buffer addresses
	 *
	 * Use physical addresses
	 */
	Addr = vdma_context->buffer_address;
	/* If Debug mode is enabled write frame is shifted 3 Frames
	 * store ahead to compare read and write frames
	 */


	for(Index = 0; Index < vdma_context->InstancePtr->MaxNumFrames; Index++) {
		vdma_context->WriteCfg.FrameStoreStartAddr[Index] = Addr;

		Addr += (vdma_context->hsize * vdma_context->vsize);
	}

	/* Set the buffer addresses for transfer in the DMA engine */
	Status = XAxiVdma_DmaSetBufferAddr(vdma_context->InstancePtr,
			XAXIVDMA_WRITE,
			vdma_context->WriteCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
		xil_printf("Write channel set buffer address failed %d\r\n",
				Status);
		return XST_FAILURE;
	}

	/* Clear data buffer
	 */

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function starts the DMA transfers. Since the DMA engine is operating
* in circular buffer mode, video frames will be transferred continuously.
*
* @param	InstancePtr points to the DMA engine instance
*
* @return	XST_SUCCESS if both read and write start successfully
*		XST_FAILURE if one or both directions cannot be started
*
* @note		None.
*
******************************************************************************/
int StartTransfer(XAxiVdma *InstancePtr)
{
	xil_printf("Starting VDMA \n\r");
	int Status;
	Status = XAxiVdma_DmaStart(InstancePtr, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS) {
		xil_printf(
		    "Start Write transfer failed %d\r\n", Status);

		return XST_FAILURE;
	}

	Status = XAxiVdma_DmaStart(InstancePtr, XAXIVDMA_READ);
	if (Status != XST_SUCCESS) {
		xil_printf(
		    "Start read transfer failed %d\r\n", Status);

		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

void StopTransfer(XAxiVdma *InstancePtr)
{
	XAxiVdma_DmaStop(InstancePtr, XAXIVDMA_WRITE);
	XAxiVdma_DmaStop(InstancePtr, XAXIVDMA_READ);

}

