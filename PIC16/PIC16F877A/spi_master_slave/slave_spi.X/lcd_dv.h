/* 
 * File:   lcd_dv.h
 * Author: HP
 *
 * Created on 31 May, 2022, 1:53 PM
 */

#ifndef LCD_DV_H
#define	LCD_DV_H

#include "timer_dv.h"


#ifdef	__cplusplus
extern "C" {
#endif
#define LCD_COMMAND 0
#define LCD_DATA    1
    
#define LCD_PORT_DIR TRISD

#define LCD_RS       PORTDbits.RD0
#define LCD_RW       PORTDbits.RD1
#define LCD_EN       PORTDbits.RD2

#define LCD_DB4      PORTDbits.RD4
#define LCD_DB5      PORTDbits.RD5
#define LCD_DB6      PORTDbits.RD6
#define LCD_DB7      PORTDbits.RD7

#define LCD_Delay(x) TIMER0_Delay(x)
    
void LCD_WriteNibble(uint8_t chr);
void LCD_Write(uint8_t type,uint8_t chr);
void LCD_WriteCmd(uint8_t chr);
void LCD_WriteData(uint8_t chr);
void LCD_WriteBuffer(uint8_t *buffer,uint8_t len);
void LCD_WriteString(uint8_t *buffer) ;
void LCD_Initialize( void );

#ifdef	__cplusplus
}
#endif

#endif	/* LCD_DV_H */

