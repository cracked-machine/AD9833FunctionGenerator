#include <TimerOne.h>
#include "digipot.h"
#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
#include "spi_utils.h"


volatile const uint8_t adc0 = (1<<ADLAR) | 0;
volatile const uint8_t adc1 = (1<<ADLAR) | 1;



volatile int ohms = 0;


// controls the mode behavior (sweep/normal)
void doTimer1Int()
{ 
  // 
  dds_callback_func();


  if (ohms > 255) 
  {
    ohms = 0;
  }
  else 
  {
    ohms++;  
  }
  //write_digpot_spi(ohms);
  //set_digipot(1, ohms);
}

void setup() 
{
  Serial.begin(9600);
  
  Timer1.initialize(clkspeed);
  Timer1.attachInterrupt(doTimer1Int);
  
  setup_pcint();

  adc_setup();
  oled_setup();
  
  setup_spi();
}

void loop() 
{
  

  oled_draw();
}











