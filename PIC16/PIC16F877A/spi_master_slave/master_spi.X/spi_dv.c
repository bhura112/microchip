#include "spi_dv.h"

void SPI0_Initialize(uint8_t mode) {
    TRISC5  = 0;
    SSPSTAT = 0;
    SSPCONbits.SSPEN = 1;
    
    if(mode == MASTER_MODE)
        TRISC3 = 0;
    else
        TRISC3 = 1;
}

uint8_t SPI0_ReadyRead( void )
{
    if(SSPSTATbits.BF)
        return 1;
    else
        return 0;
}
void SPI0_SlaveSelect(uint8_t slave)
{
    PORTBbits.RB1 = 1;
    PORTBbits.RB2 = 1;
    PORTBbits.RB3 = 1;
    
    switch(slave)
    {
        case SLAVE_1:
            PORTBbits.RB1 = 0;
            break;
        case SLAVE_2:
            PORTBbits.RB2 = 0;
            break;
        case SLAVE_3:
            PORTBbits.RB3 = 0;
            break;
    }
}
void SPI0_Write(uint8_t slave,uint8_t chr)
{

    SPI0_SlaveSelect(slave);
    SSPBUF = chr;
}
uint8_t SPI0_Read(void) {
     return SSPBUF;
}
uint8_t SPI0_ReadWrite(uint8_t chr) {
    SSPBUF = chr;
    while(!SPI0_ReadyRead());
    return SSPBUF;
}


