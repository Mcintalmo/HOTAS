#avrdude -p m32u4 -c atmelice_isp
avr-gcc -g -Os -mmcu=atmega32u4 blink_test.cpp -c
avr-gcc -g -mmcu=atmega32u4 -o blink_test.elf blink_test.o
avr-objcopy -j .text -j .data -O ihex blink_test.elf blink_test.hex
avrdude -c atmelice_isp -p m32u4 -U flash:w:blink_test.hex


