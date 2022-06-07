#define MAIN_Fosc 11059200L
#define LED1 P1_1
#define LED2 P1_2
#include "led_out.h"

void main()
{
    //led_out();

    led_pwm_out();
}