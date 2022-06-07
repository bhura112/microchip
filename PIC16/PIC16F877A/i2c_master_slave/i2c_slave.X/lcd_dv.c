#include "lcd_dv.h"
#include <string.h>
 
void LCD_WriteNibble(uint8_t chr)
{
    LCD_DB4 = chr & 0x01 ? 1:0; 
    LCD_DB5 = chr & 0x02 ? 1:0;
    LCD_DB6 = chr & 0x04 ? 1:0;
    LCD_DB7 = chr & 0x08 ? 1:0;
}


void LCD_Write(uint8_t type,uint8_t chr)
{
    if(type == LCD_COMMAND)
        LCD_RS = 0;
    else
        LCD_RS = 1;
    
    LCD_EN = 1;
    LCD_WriteNibble (chr >> 4);
    LCD_EN = 0;
    LCD_Delay(10);
    LCD_EN = 1;
    LCD_WriteNibble (chr & 0xFF);
    LCD_EN = 0;
    LCD_Delay(10);
}

void LCD_WriteCmd(uint8_t chr)
{
    LCD_Write(LCD_COMMAND,chr);
}

void LCD_WriteData(uint8_t chr)
{
    LCD_Write(LCD_DATA,chr);
}


void LCD_WriteBuffer(uint8_t *buffer,uint8_t len)
{
    for(int i = 0 ; i < len ;i++)
        LCD_WriteData(buffer[i]);
}

void LCD_WriteString(uint8_t *buffer) 
{
    uint8_t strLen = strlen(buffer);
    
    LCD_WriteBuffer(buffer,strLen);
}



void LCD_Initialize( void )
{
    LCD_PORT_DIR = 0x00;
    LCD_RS = 0;
    LCD_RW = 0;
    LCD_EN = 0;
    
    LCD_WriteCmd( 0x03);
    LCD_Delay(10);
    LCD_WriteCmd( 0x03);
    LCD_Delay(5);
    LCD_WriteCmd( 0x03);
    LCD_Delay(5);
    LCD_WriteCmd( 0x02);
    LCD_WriteCmd( 0x28);


    LCD_WriteCmd(0x0C);
    LCD_WriteCmd(0x06);
    LCD_WriteCmd(0x01);
    LCD_WriteCmd(0x80);
}