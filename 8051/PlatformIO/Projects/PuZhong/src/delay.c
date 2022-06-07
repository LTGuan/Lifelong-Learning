#include <delay.h>

void delay_ms(unsigned int ms){
    unsigned int i;
    do{
        i = MAIN_Fosc / 1300000;
        while (--i);
    }while (--ms);
}