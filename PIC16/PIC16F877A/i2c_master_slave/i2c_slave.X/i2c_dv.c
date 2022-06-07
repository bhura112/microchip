#include "i2c_dv.h"

void I2C_CheckFlag()
{
	while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
}

void I2C_StartCond()
{
    I2C_CheckFlag();
	SEN=1;
	
}

void I2C_StopCond()
{
    I2C_CheckFlag();
	PEN=1;
}

void I2C_RestartCond()
{
    I2C_CheckFlag();
	RSEN=1;
	
}

void I2C_Ack()
{
    I2C_CheckFlag();
	ACKDT=0;
	ACKEN=1;
	
}

void I2C_Nack()
{
    I2C_CheckFlag();
	ACKDT=1;
	ACKEN=1;
	
}

unsigned char I2C_Write(unsigned char dat)
{ 
    I2C_CheckFlag();
    SSPBUF=dat;
	I2C_CheckFlag();
    
	return ACKSTAT;
}

unsigned char I2C_Read( void )
{
  
    uint8_t rcChar = 0;
    while(!BF); // Wait Until Completion   
    rcChar =  SSPBUF;
     CKP = 1; // Release The SCL Clock Line
     return rcChar;
}

void I2C_Initialize(i2c_mode_t mode,uint8_t addr,uint16_t b_rate )
{
    TRISC3=TRISC4=1;
    if( mode == MASTER_MODE)
    {
        SSPCON  = 0x28;
        SSPCON2 = 0x00;
        SSPSTAT = 0x00;
        SSPADD  = ((16000000/4)/b_rate) - 1; //100khz
    }else {
        SSPADD  = addr;
        SSPSTAT = 0x80;
        SSPCON  = 0x36;
        SSPCON2 = 0x01;
    }
    TRISC3 = 1;
    TRISC4 = 1;   
}

#define WRITExCHAR 0
#define READxCHAR  1

void I2C_WriteChar(unsigned short saddr, unsigned char  data)
{
       I2C_StartCond();
       I2C_Write(saddr + WRITExCHAR);
       I2C_Write(data);       
       I2C_StopCond();
}