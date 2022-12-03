

#include "iic_driver.h"


XIic IicInstance;

void config_IIC(){

	int Status;
	XIic_Config *ConfigPtr;	/* Pointer to configuration data */

	ConfigPtr = XIic_LookupConfig(XPAR_IIC_0_DEVICE_ID);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XIic_CfgInitialize(&IicInstance, ConfigPtr,
					ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Address of the Slave.
	 */
	Status = XIic_SetAddress(&IicInstance, XII_ADDR_TO_SEND_TYPE,
			SLAVE_ADDRESS_W);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
}


int WriteData(uint32_t data)
{
	int Status;

	uint8_t BufferPtr[2] = { data >> 8, data};
	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Send the data.
	 */
	while(1)
		Status = XIic_MasterSend(&IicInstance, BufferPtr, 2);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait till data is transmitted.
	 */
	while ( XIic_IsIicBusy(&IicInstance) == TRUE) {

	}

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function reads a data from the IIC Slave into a specified buffer.
*
* @param	BufferPtr contains the address of the data buffer to be filled.
* @param	ByteCount contains the number of bytes to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int ReadData(uint8_t *BufferPtr, uint8_t ByteCount)
{
	int Status;

	/*
	 * Start the IIC device.
	 */
	Status = XIic_Start(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Receive the data.
	 */
	Status = XIic_MasterRecv(&IicInstance, BufferPtr, ByteCount);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	while (XIic_IsIicBusy(&IicInstance) == TRUE);

	/*
	 * Stop the IIC device.
	 */
	Status = XIic_Stop(&IicInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
