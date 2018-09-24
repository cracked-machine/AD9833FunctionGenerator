#include <SPI.h>

const byte dds_ss_pin = 10;    // pin 10 as dds_ss_pin
const byte dds_mosi_pin = 11;  // pin 11 as dds_mosi_pin
const byte dds_sck_pin = 13;   // pin 13 as dds_sck_pin

unsigned long dds_out_data;  
unsigned long dds_freq = 0x54F8;  // 500 Hz
unsigned long dds_func = 0x2000;



void set_dds_outdata(unsigned long pData) 
{
  dds_out_data = pData;
}

void write_dds_spi()
{
  digitalWrite(dds_sck_pin,HIGH);      // make sure SCK pin is high
  digitalWrite(dds_mosi_pin,LOW);     // and the MOSI pin low
  digitalWrite(dds_ss_pin,HIGH);       // then take the SS pin HIGH as well
  
  // first set the SPI port for 5MHz clock, data sent MSB first,
  // data mode 10 -- with SCK idle high (CPOL = 1) and
  //                MOSI data read on falling edge (CPHA = 0)
  // then begin the SPI transaction
  digitalWrite(dds_ss_pin, LOW); // pull SS(FSYNC) pin low to set for loading
  SPI.beginTransaction(SPISettings(5000000, MSBFIRST, SPI_MODE2));
  
  long recVal16;          // local variable for SPI received data (not used)
  recVal16 = SPI.transfer16(dds_out_data);  // send 16 bits of data out
  SPI.endTransaction();

  
    
  digitalWrite(dds_ss_pin, HIGH);     // then bring SS/FSYNC pin high again
  digitalWrite(dds_mosi_pin,LOW);     // also drop the MOSI pin
  
} 



void setup_dds_spi() 
{

  pinMode(dds_ss_pin, OUTPUT);         // make D10 an output for SS/Load
  digitalWrite(dds_ss_pin, HIGH);       // and initialise it to HIGH
  
  pinMode(dds_mosi_pin, OUTPUT);       // make D11 an output for MOSI data
  digitalWrite(dds_mosi_pin, LOW);     // and initialise to LOW

  pinMode(dds_sck_pin, OUTPUT);        // make D13 an output for SCK
  digitalWrite(dds_sck_pin,HIGH);       // and initialise to HIGH
  
  
    
  
}

void dds_init() 
{
  // now we set the initial values for the AD9833 control register
  dds_out_data = 0x2100;   // resets all registers, sets DB13 for loading
                      // frequency regs via 2 consecutive 14-bit words
                      // (LSB first, then MSB), and sinewave output
  write_dds_spi();         // sends it
  
  //outData = 0x69F1;   // LSB for 1000Hz & Freq0 register = 29F1 + 4000
  dds_out_data = dds_freq;
  write_dds_spi();
  dds_out_data = 0x4000;   // MSB for 1000Hz & Freq0 register = 0000 + 4000
  write_dds_spi();
  dds_out_data = 0xC000;   // writes 000h into Phase0 register
  write_dds_spi();
  dds_out_data = dds_func;   // now exit reset mode for normal operation
  write_dds_spi();
  
}





