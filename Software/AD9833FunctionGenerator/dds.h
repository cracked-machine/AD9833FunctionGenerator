#include <SPI.h>

const byte SSPin = 10;    // declares IO pin 10 as SSPin
const byte MOSIPin = 11;  // and IO pin 11 as MOSIPin
const byte MISOPin = 12;  // and IO pin 12 as MISOPin
const byte SCKPin = 13;   // and finally IO pin 13 as SCKPin

unsigned long dds_out_data;  
unsigned long dds_freq = 0x69F1;
unsigned long dds_func = 0x2068;



void set_dds_outdata(unsigned long pData) 
{
  dds_out_data = pData;
}

void write_dds_spi()
{
  digitalWrite(SCKPin,HIGH);      // make sure SCK pin is high
  digitalWrite(MOSIPin,LOW);     // and the MOSI pin low
  digitalWrite(SSPin,HIGH);       // then take the SS pin HIGH as well
  
  // first set the SPI port for 5MHz clock, data sent MSB first,
  // data mode 10 -- with SCK idle high (CPOL = 1) and
  //                MOSI data read on falling edge (CPHA = 0)
  // then begin the SPI transaction
  digitalWrite(SSPin, LOW); // pull SS(FSYNC) pin low to set for loading
  SPI.beginTransaction(SPISettings(5000000, MSBFIRST, SPI_MODE2));
  
  long recVal16;          // local variable for SPI received data (not used)
  recVal16 = SPI.transfer16(dds_out_data);  // send 16 bits of data out
  SPI.endTransaction();
    
  digitalWrite(SSPin, HIGH);     // then bring SS/FSYNC pin high again
  digitalWrite(MOSIPin,LOW);     // also drop the MOSI pin
}  // end of write_dds_spi() function

void setup_dds_spi() 
{

  pinMode(SSPin, OUTPUT);         // make D10 an output for SS/Load
  digitalWrite(SSPin, HIGH);       // and initialise it to HIGH
  pinMode(MOSIPin, OUTPUT);       // make D11 an output for MOSI data
  digitalWrite(MOSIPin, LOW);     // and initialise to LOW
  pinMode(MISOPin, INPUT);        // make D12 an input for MISO data
                                  // (not used in this sketch)
  pinMode(SCKPin, OUTPUT);        // make D13 an output for SCK
  digitalWrite(SCKPin,HIGH);       // and initialise to HIGH
  
  SPI.begin();             // start up SPI interface
    
  
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





