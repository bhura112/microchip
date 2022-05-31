/* 
 * File:   spi_dv.h
 * Author: HP
 *
 * Created on 31 May, 2022, 10:43 AM
 */

#ifndef SPI_DV_H
#define	SPI_DV_H

#include <xc.h>

#ifdef	__cplusplus
extern "C" {
#endif

    typedef enum {
        SLAVE_1,
        SLAVE_2,
        SLAVE_3
    };
    
    typedef enum {
        SLAVE_MODE,
        MASTER_MODE
    }spi_dv_modes_t;
    
    void SPI0_Initialize( uint8_t mode );
    
    void SPI0_Write(uint8_t slave,uint8_t chr);
    uint8_t SPI0_ReadyRead( void );
    uint8_t SPI0_ReadWrite(uint8_t chr);


#ifdef	__cplusplus
}
#endif

#endif	/* SPI_DV_H */

