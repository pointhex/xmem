#include <avr/io.h>
#include <stdio.h>
#include <common.h>
#include <util/delay.h>
#include <avr/wdt.h>



int main()
{
	uint8_t i = 0;
	uint16_t address = 0x1111;
	uint64_t counter = 0;
	uint64_t good = 0;
	uint8_t j = 0;
	uint16_t failed_arr[255];
	//wdt_disable();
	stdio_init();
	xmem_init();

	memset(failed_arr, 0, 255);

	for (j = 0; j < 255; i++)
		for (i = 0; i < 255; i++) {
			xmem_write(address, i);
			uint8_t read_data = xmem_read(address);
			if (i != read_data) {
				failed_arr[i]++;
			//	printf("xmem_write(address:%#X, data:%#X)\n", address, i);
			//	printf("xmem_read(address:%#X) = %#X\n", address, read_data);
			//	printf("failed = %u\n", counter);
			//	counter++;
			//	printf("good = %u\n", good);
			} 
		}
	
	for (j = 0; j < 255; j++) {
		printf("%#X = %d", j, failed_arr[j]);
	}

	while(1) {
		
		//_delay_ms(1000);
	}

//        xmem_init();
//        memset(0x2200, 0x0, 128);
//        xmem_test_bits();
//        xmem_test();
//        xmem_dump(0x128);

#if 0
	xmem_bb_init();
	printf("xmem_bb: Testing ALE latch\n");
	uint8_t i = 0;
	while (1) {
		xmem_bb_latch(i++);
		_delay_ms(10);
	}
#endif
}
