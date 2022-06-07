#ifndef __LED_OUT
#define __LED_OUT

#include "mcs51/stc12.h"
#include "mcs51/8052.h"

void led_pwm_out();
void led_out();
void ztim(void) __interrupt 1;

#endif