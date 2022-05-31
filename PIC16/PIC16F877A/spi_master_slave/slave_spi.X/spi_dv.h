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
        SLAVE_MODE,
        MASTER_MODE
    }spi_dv_modes_t;
    
    void SPI0_Initialize( uint8_t mode );
    uint8_t SPI0_ReadyRead( void );
    uint8_t SPI0_Read(void) ;


#ifdef	__cplusplus
}
#endif

#endif	/* SPI_DV_H */

