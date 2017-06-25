#include <avr/io.h>
#include <stdio.h>
#include <common.h>
#include <util/delay.h>
#include <avr/wdt.h>

#define CS      PORTB2
#define MISO    PORTB3
#define SCK     PORTD0

void spi_init()
{
	DDRB |= (1 << CS);
	DDRD |= (1 << SCK);
}

uint16_t spi_read()
{
	uint16_t miso = 0;
	uint16_t mask = 0x8000; // если надо начинать со старшего бита - заменить на 0x80

	PORTB &= ~(1 << CS);
	for( ; mask; mask >>= 1) { // если надо начинать со старшего бита - заменить на mask >>= 1;
		PORTD |= (1 << SCK);
		asm("nop");
		asm("nop");


		if ((PINB >> MISO) & 0x01) {
			miso |= mask;
		}
		
		PORTD &= ~(1 << SCK);
		asm("nop");
		asm("nop");


	}
	PORTD &= ~(1 << SCK);

	PORTB |= (1 << CS);
	return (miso << 3) >> 4;
}

int main()
{
	uint8_t i = 0;
	uint16_t address = 0x1111;
	uint64_t counter = 0;
	uint64_t good = 0;
	uint8_t j = 0;
	uint16_t failed_arr[255];
	spi_init();
	stdio_init();
	xmem_init();

	//memset(failed_arr, 0, 255);

	//for (j = 0; j < 255; i++)
	//	for (i = 0; i < 255; i++) {
	//		xmem_write(j, i);
	//		uint8_t read_data = xmem_read(address);
	//		if (i != read_data) {
	//			failed_arr[j]++;
	//		//	printf("xmem_write(address:%#X, data:%#X)\n", address, i);
	//		//	printf("xmem_read(address:%#X) = %#X\n", address, read_data);
	//		//	printf("failed = %u\n", counter);
	//		//	counter++;
	//		//	printf("good = %u\n", good);
	//		} 
	//	}
	//
	//for (j = 0; j < 255; j++) {
	//	printf("%#X = %d", j, failed_arr[j]);
	//}

	while(1) {
		i++;
		xmem_write(i, i);
		printf("xmem_write(address:%#X, data:%#X)\n", i, i);
		printf("xmem_read(address:%#X) = %#X\n", i, xmem_read(i));
		printf("data_spi %u\n", spi_read() );
		_delay_ms(500);
	}
}
