
#ifndef _IIC_DRIVER_H
#define _IIC_DRIVER_H

#include "xparameters.h"
#include "xiic.h"


#define IIC_DEVICE_ID		XPAR_IIC_0_DEVICE_ID
#define SLAVE_ADDRESS_W 	42
#define SLAVE_ADDRESS_R 	43


void config_IIC();
int WriteData(uint32_t data);
int ReadData(uint8_t *BufferPtr, uint8_t ByteCount);

#endif
