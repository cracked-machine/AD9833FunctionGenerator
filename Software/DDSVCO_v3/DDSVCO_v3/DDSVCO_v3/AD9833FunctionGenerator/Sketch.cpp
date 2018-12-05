/*Begining of Auto generated code by Atmel studio */
#include <Arduino.h>

/*End of auto generated code by Atmel studio */

#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
//#include "spi_utils.h"
//Beginning of Auto generated function prototypes by Atmel Studio
void doTimer1Int();
//End of Auto generated function prototypes by Atmel Studio




volatile const uint8_t adc0 = (1<<ADLAR) | 0;
volatile const uint8_t adc1 = (1<<ADLAR) | 1;
int gain, offset;
int tmp = 0;

volatile int ohms = 0;


// controls the mode behavior (sweep/normal)
void doTimer1Int()
{ 
  
  dds_callback_func();


  

  /*gain = map(ADCInput2, 1024, 1, 0, 255);
  offset = map(ADCInput3, 1, 1024, 0, 255);
  
  
  digipot_write_spi(MCP_WRITEPB1, offset , digipot_ss_pin);
  digipot_write_spi(MCP_WRITEPB0, gain , digipot_ss_pin);
  */
}

void setup() 
{
  Serial.begin(9600);
  
  Timer1.initialize(clkspeed);
  Timer1.attachInterrupt(doTimer1Int);
  
  setup_pcint();

  adc_setup();
  oled_setup();
  
  
  
  pinMode (digipot_ss_pin, OUTPUT);
  digitalWrite(digipot_ss_pin, HIGH);
  pinMode (dds_ss_pin, OUTPUT);
  digitalWrite(dds_ss_pin, HIGH);
  SPI.begin();
  
  digipot_write_spi(MCP_WRITEPB0, TriUnityLvl, digipot_ss_pin);
  digipot_write_spi(MCP_WRITEPB0, SquareUnityLvl, digipot_ss_pin);
  digipot_write_spi(MCP_WRITEPB0, SineUnityLvl, digipot_ss_pin);

  digipot_write_spi(MCP_WRITEPB1, TriOffsetLvl, digipot_ss_pin);
  digipot_write_spi(MCP_WRITEPB1, SquareOffsetLvl, digipot_ss_pin);
  digipot_write_spi(MCP_WRITEPB1, SineOffsetLvl, digipot_ss_pin);
}

void loop() 
{
  oled_draw();
}











