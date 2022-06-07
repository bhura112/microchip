/* 
 * File:   i2c_dv.h
 * Author: HP
 *
 * Created on 7 June, 2022, 3:25 PM
 */

#ifndef I2C_DV_H
#define	I2C_DV_H

#include <xc.h>

#ifdef	__cplusplus
extern "C" {
#endif

    typedef enum {
        SLAVE_MODE,
        MASTER_MODE
    }i2c_mode_t;
   void I2C_Initialize(i2c_mode_t mode,uint8_t addr,uint16_t b_rate );
    void I2C_WriteChar(unsigned short saddr, unsigned char  data);
#ifdef	__cplusplus
}
#endif

#endif	/* I2C_DV_H */

