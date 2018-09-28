#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
//#include "spi_utils.h"


volatile const uint8_t adc0 = (1<<ADLAR) | 0;
volatile const uint8_t adc1 = (1<<ADLAR) | 1;



volatile int ohms = 0;


// controls the mode behavior (sweep/normal)
void doTimer1Int()
{ 
  
  dds_callback_func();


  

  
  
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
  
  
}

void loop() 
{
  
  Serial.println(ADCInput2);
  
  
  oled_draw();
}











