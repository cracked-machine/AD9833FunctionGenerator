/*
 * oled.h
 *
 * Created: 04-12-2018 10:03:17 PM
 *  Author: chris
 */ 
#ifndef OLED_H_
#define OLED_H_

#include "config.h"
#include "2Wire.h"

uint8_t outBuffer[32];

// prototypes
void SSD1306_command(uint8_t data);
void SSD1306_InitSequence();

void SSD1306_init() 
{
	// enable internal pullups
	PORTC |= (1<<PORTC5) | (1<<PORTC4);

	// set the TWI prescaler /1
	
	TWSR =0;

	// set the TWI freq
	TWBR = ((F_CPU / 100000L) - 16) / 2;
	
	// enable TWI interface with acknowledgments and interrupts
	TWCR |= (1<<TWEN) | (1<<TWIE) | (1<<TWEA);
	
	SSD1306_InitSequence();
}

void SSD1306_InitSequence() 
{
	// Init sequence
	SSD1306_command(0xAE);                    // display off
	SSD1306_command(0xD5);            // display clock prescaler
	SSD1306_command(0x80);                                  // the suggested ratio 0x80

	SSD1306_command(0xA8);                  // enable multiplex
	SSD1306_command(3 - 1);					// oled height = 32

	SSD1306_command(0xD3);              // display offset
	SSD1306_command(0x0);                                   // no offset
	SSD1306_command(0x40 | 0x0);            // startline #0
	SSD1306_command(0x8D);                    // chargepump
	
	SSD1306_command(0x14);					// SWITCHCAPVCC 
	SSD1306_command(0x20);                    // SSD1306_MEMORYMODE
	SSD1306_command(0x00);                                  // 0x0 act like ks0108
	SSD1306_command(0xA0 | 0x1);				//SSD1306_SEGREMAP
	SSD1306_command(0xC8);							//SSD1306_COMSCANDEC

	SSD1306_command(0xDA);                    // SSD1306_SETCOMPINS
	SSD1306_command(0x02);
	SSD1306_command(0x81);                   // SSD1306_SETCONTRAST
	SSD1306_command(0x8F);

	SSD1306_command(0xd9);                  // SSD1306_SETPRECHARGE
	
	SSD1306_command(0xF1);
	SSD1306_command(0xDB);                 //SSD1306_SETVCOMDETECT
	SSD1306_command(0x40);
	SSD1306_command(0xA4);           // SSD1306_DISPLAYALLON_RESUME
	SSD1306_command(0xA6);                 // SSD1306_NORMALDISPLAY

	SSD1306_command(0x2E);				//SSD1306_DEACTIVATE_SCROLL

	SSD1306_command(0xAF);//--turn on oled panel

}

void SSD1306_command(uint8_t data) 
{
	uint8_t ret = twowire_writeTo(SSD1306, &data, 32, FALSE, true);
}





#endif /* OLED_H_ */