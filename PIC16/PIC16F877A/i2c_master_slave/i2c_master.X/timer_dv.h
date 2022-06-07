/* 
 * File:   timer_dv.h
 * Author: HP
 *
 * Created on 31 May, 2022, 10:39 AM
 */

#ifndef TIMER_DV_H
#define	TIMER_DV_H

#include <xc.h>
#include <stdint.h>
#ifdef	__cplusplus
extern "C" {
#endif

#define _XTAL_FREQ 16000000

#define _TICKS_MSCAL(x) ((x * _XTAL_FREQ)/1000)
#define _TICKS_PRECAL(p) ((p*4))
#define _TICK_COUNTS(x,p)  (256 - (unsigned char)(_TICKS_MSCAL(x)/_TICKS_PRECAL(p)))
    
void TIMER0_Initialize( void );
void TIMER0_Delay( int ms );

#ifdef	__cplusplus
}
#endif

#endif	/* TIMER_DV_H */

