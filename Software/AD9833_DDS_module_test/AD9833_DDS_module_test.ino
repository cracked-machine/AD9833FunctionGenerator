/* sketch for testing AD9833 DDS module (with a 25MHz MCLK)
   with an Arduino Uno or compatible
   written by Jim Rowe (Silicon Chip)
   Last updated 12/12/2016 at 10.35 am

   Notes:
   1. the following interface connections are assumed by
      the Arduino SPI library:
   SLAVE                      ARDUINO (MASTER)
   SS/CS-bar/LOAD  <-  from   DigIO pin 10
   DataOut/MOSI    <-  from   DigIO pin 11 (MOSI) or ICSP-4
   DataIn/MISO     ->  to     DigIO pin 12 (MISO) or ICSP-1
   SCK             <-  from   DigIO pin 13 (SCK) or ICSP-3

   2. The SPI interface of the AD9833 DDS device has these
      requirements:
      A. Data on the SDATA line is clocked into the AD9833
         on the FALLING edge of SCLK pulses.
      B. The FSYNC (frame sync, = SS) input is active LOW, and must
         be taken low at least 5ns before the first falling edge of SCLK.
         It should only be taken high again at least 10ns after the last
         falling edge of SCLK.
      So for correct operation, the SPI MODE must be set for 2 (10), ie.,
      CPOL = 1 and CPHA = 0.
   3. The frequency registers of the AD9833 are of 28 bits, and must be
      programmed via two consecutive 14-bit frames of data. These must
      be sent with the LSB frame first, then the MSB frame.
*/
#include <SPI.h>

// global variables
unsigned long outData;   // used for the outgoing 16-bit data to the MAX7219

const byte SSPin = 10;    // declares IO pin 10 as SSPin
const byte MOSIPin = 11;  // and IO pin 11 as MOSIPin
const byte MISOPin = 12;  // and IO pin 12 as MISOPin
const byte SCKPin = 13;   // and finally IO pin 13 as SCKPin

void setup()
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
    
  // now we set the initial values for the AD9833 control register
  outData = 0x2100;   // resets all registers, sets DB13 for loading
                      // frequency regs via 2 consecutive 14-bit words
                      // (LSB first, then MSB), and sinewave output
  SpiWrite();         // sends it
  outData = 0x7FFF;   // LSB for 1000Hz & Freq0 register = 29F1 + 4000
  SpiWrite();
  outData = 0x4000;   // MSB for 1000Hz & Freq0 register = 0000 + 4000
  SpiWrite();
  outData = 0xC000;   // writes 000h into Phase0 register
  SpiWrite();
  //outData = 0x2000;   // now exit reset mode for normal operation
  outData = 0x2068;
  SpiWrite();
}  // end of setup function loop; DDS should now be set up and
   // producing a 1000Hz sinewave 

void loop()
{
  
  delay (10000);         // first pause for 10 seconds
  outData = 0x2002;     // then send 0002h to control reg for triangle mode
  SpiWrite();
  delay (10000);         // pause for another 10 seconds
  outData = 0x2068;     // then send 0068h to control reg for MSB square wave
  SpiWrite();
  delay (10000);         // pause again
  outData = 0x2060;     // then send 0060 to control reg to halve frequency
  SpiWrite();
  delay (10000);         // pause again
  outData = 0x2000;     // now return to sinewave output
  SpiWrite();
  
}   // end of main loop

// =====================================================================
// SpiWrite() function: to send 16 bits of data to the AD9833 via SPI
// =====================================================================

void SpiWrite()
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
  recVal16 = SPI.transfer16(outData);  // send 16 bits of data out
  SPI.endTransaction();
    
  digitalWrite(SSPin, HIGH);     // then bring SS/FSYNC pin high again
  digitalWrite(MOSIPin,LOW);     // also drop the MOSI pin
}  // end of SpiWrite() function

// ======================================================================



