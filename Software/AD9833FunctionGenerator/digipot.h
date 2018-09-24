#ifndef __DIGIPOT_H__
#define __DIGIPOT_H__

#include <SPI.h>
#include "spi_utils.h"
#include "BinaryUtils.h"

//DIG POT

#define SPI_POTWRITE  0x33  // write to both pots
#define SPI_POTSDOWN  0x21

const byte digipot_ss_pin = 9;    // pin 9 as SSPin




void write_digipot_spi(byte data) {

  for (byte i=1; i<=8; i++) {
    digitalWrite(spi_mosi_pin, (data >> (8-i)) & 1 ? HIGH : LOW);
    digitalWrite(spi_sck_pin, HIGH);
    digitalWrite(spi_sck_pin, LOW);
  }
  
}

void set_digipot(byte pot, byte value) {
  digitalWrite(spi_sck_pin, LOW);
  digitalWrite(digipot_ss_pin, LOW);
  write_digipot_spi((pot & B11) | B00010000);
  write_digipot_spi(value);

  digitalWrite(digipot_ss_pin, HIGH);
}
/*
void write_digpot_spi(int value) 
{
  PORTB = ~_BV(1);    // begin 16bit DIGPOT packet. set slave select LOW
  
  word _newPacket = SPI_POTWRITE;                           // add command byte to 8bit word. 
                                                            // newPacket = 00000000PCOMMAND
  int _sample = value;

  _newPacket = (_newPacket << 8) | _sample;               // shift command left 8 bits and add payload data to the end. 
                                                          // newPacket = PCOMMANDWAVEDATA 
   printBinaryDWORD(_newPacket);
  Serial.println();
  SPDR = _newPacket >> 8;                                  // send first 8bits... PCOMMAND
  while (!(SPSR & _BV(SPIF))) ; // wait for slave ack
  SPDR = _newPacket & 0xFF;                                // send WAVEDATA
  while (!(SPSR & _BV(SPIF))) ; // wait for slave ack
 
  
  PORTB = _BV(1);     // 16bit SPI packet finished. set DAC slave select HIGH 
}
*/
#endif
