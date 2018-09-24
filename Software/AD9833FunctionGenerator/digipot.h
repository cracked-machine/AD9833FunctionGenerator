#include <SPI.h>

const byte digipot_ss_pin = 9;    // pin 9 as SSPin
const byte digipot_mosi_pin = 11;  // pin 11 as MOSIPin
const byte digipot_sck_pin = 13;   //  pin 13 as SCKPin


void setup_digipot_spi() {

  pinMode(digipot_ss_pin, OUTPUT);
  pinMode(digipot_sck_pin, OUTPUT);
  pinMode(digipot_mosi_pin, OUTPUT);
  digitalWrite(digipot_sck_pin, LOW);
}

void write_digipot_spi(byte data) {
  
  for (byte i=1; i<=8; i++) {
    digitalWrite(digipot_mosi_pin, (data >> (8-i)) & 1 ? HIGH : LOW);
    digitalWrite(digipot_sck_pin, HIGH);
    digitalWrite(digipot_sck_pin, LOW);
  }
}

void set_digipot(byte pot, byte value) {
  digitalWrite(digipot_ss_pin, LOW);
  write_digipot_spi((pot & B11) | B00010000);
  write_digipot_spi(value);
  digitalWrite(digipot_ss_pin, HIGH);
}


