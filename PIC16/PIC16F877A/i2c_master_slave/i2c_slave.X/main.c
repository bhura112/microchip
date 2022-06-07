// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF        // Watchdog Timer Enable bit (WDT enabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#include "timer_dv.h"
#include "lcd_dv.h"
#include "i2c_dv.h"

#define SLAVE_ADDR 0x40

uint8_t recChar = 0;

int main() {
    
    TRISBbits.TRISB0 = 0;
    PORTD = 0x00;
    TRISD = 0x00;
    
    TIMER0_Initialize();
    
    LCD_Initialize();
    
    I2C_Initialize(SLAVE_MODE,SLAVE_ADDR,0);
    
    while(1)
    {
        recChar = I2C_Read();
        if(recChar)
        {
            LCD_WriteCmd(0x80);
            LCD_WriteData(recChar);
            recChar = 0;
        }
    }
    return 0;
}
