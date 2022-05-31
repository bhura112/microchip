#include "spi_dv.h"

void SPI0_Initialize(uint8_t mode) {
    TRISC5  = 0;
    SSPSTAT = 0;
    SSPCONbits.SSPEN = 1;
    
    if(mode == MASTER_MODE)
        TRISC3 = 0;
    else
    {
         SSPCONbits.SSPM = 4;
        TRISC3 = 1;
    }
}

uint8_t SPI0_ReadyRead( void )
{
    if(SSPSTATbits.BF)
        return 1;
    else
        return 0;
}
uint8_t SPI0_Read(void) 
{
    return SSPBUF;
}




