#include <avr/io.h>
#include <stdio.h>
#include <common.h>
#include <util/delay.h>
#include <avr/wdt.h>

#define WR 0
#define RD 1
#define ALEN 2
#define ALEN_CLR PORTG |= (1 << ALEN)
#define ALEN_SET PORTG &= ~(1 << ALEN)
#define nCE1 0
#define CE2 1
// DATA is data[0:7] and address[0:7]
#define DATA	PORTA 
// ADDRESS is address[8:15]
#define ADDRESS PORTC 

void xmem_init()
{
	//data[0:7] + address[0:7]
	DATA  = 0x00;
	DDRA   = 0xFF;
	
	//address[8:15]
	ADDRESS  = 0x00;
	DDRC   = 0xFF;

	//control
	PORTG  = 0x00;
	DDRG  |= (1 << ALEN) | (1 << WR) | (1 << RD);

	// witout low power mode
	PORTF &= ~(1 << nCE1);
	PORTF |=  (1 << CE2);
	DDRF  |=  (1 << nCE1) | (1 << CE2);
}


void xmem_write(uint16_t address, uint8_t data)
{	
	// setting address 
	ADDRESS = address >> 8 & 0xFF;
	DATA = address & 0xFF;
	DDRA = 0xFF;
	// turn on and off 74HTC541
	ALEN_SET;
	_delay_us(2);
	ALEN_CLR;
	_delay_us(2);
	
	// setting data
	DATA = data;
	DDRA = 0xFF;

	//printf("DATA = %#X\n", PINA);


	// writing
	PORTG |= (1 << RD);
	PORTG &= ~(1 << WR);
	_delay_us(10);
	PORTG |= (1 << WR);
	PORTG |= (1 << RD);
}


uint8_t xmem_read(uint16_t address)
{
	uint8_t data = 0;
	// setting address
	ADDRESS = address >> 8 & 0xFF;
	DATA = address & 0xFF;
	DDRA = 0xFF;
	// turn on and off 74HTC541
	ALEN_SET;
	_delay_us(2);
	ALEN_CLR;
	_delay_us(2);

	// getting data
	DATA = 0x00;
	DDRA = 0x00;
	PORTG |= (1 << WR);
	PORTG &= ~(1 << RD);
	_delay_us(10);

	data = PINA;
	//printf("DATA = %#X\n", data);

	PORTG |= (1 << WR);
	PORTG |= (1 << RD);

	return data;
}
