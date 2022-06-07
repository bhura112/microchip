#include "timer_dv.h"

volatile uint16_t msCounts = 0;
volatile uint16_t delayMS  = 0;
volatile uint16_t ledBlinkTimeCounter = 0;

void __interrupt ()  timer0_isr() {
    
    if(TMR0IF == 1)
    {
        msCounts++;
        if(msCounts > delayMS)
        {
            delayMS = 0;
        }
        ledBlinkTimeCounter++;
        if(ledBlinkTimeCounter > 1000)
        {
            ledBlinkTimeCounter = 0;
            PORTBbits.RB0 ^=1;
        }
       TMR0 = _TICK_COUNTS(1,32) + 1;
       TMR0IF = 0;
    }

}
void TIMER0_Delay( int ms )
{
    msCounts = 0;
    delayMS = ms;
    while(delayMS);
}
void TIMER0_Initialize( void )
{
    OPTION_REG = (1 << 2); //Timer 0 with external frequency and 32 as Prescalar
    
    TMR0 = _TICK_COUNTS(1,32); //ticks counts for 1 millisecond
    
    TMR0IE = 1;
    GIE = 1;
    PEIE = 1;
}