#define F_CPU 8000000

#include <avr/io.h>
#include <util/delay.h>

int main(void){
  DDRB = 0x01; // Makes PORTB an output
  
  while(true){
    PORTB ^= 0x01;
    _delay_ms(1000);
  }
}
