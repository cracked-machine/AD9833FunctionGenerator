#include <TimerOne.h>

#include "dds.h"
#include "adc.h"
#include "oled.h"

float sensorA0Value = 0;
volatile int ADCInput = 0;
enum WAVE_TYPE {SINE, TRIANGLE, SQUARE};
WAVE_TYPE wt = SINE;

void setup() 
{
  //Timer1.initialize(150000);
  //Timer1.attachInterrupt(sendControlBytes);
  adc_setup();
  oled_setup();
  setup_dds_spi();
  Serial.begin(9600);
  pinMode(PD2, INPUT_PULLUP);
}



void loop() 
{
  //Serial.println(sensorA0Value);
  //delay(100);
  
  /*delay (10000);         // first pause for 10 seconds
  set_dds_outdata(0x2002);     // then send 0002h to control reg for triangle mode
  Serial.println("Triangle");
  delay (10000);         // pause for another 10 seconds
  set_dds_outdata(0x2068);     // then send 0068h to control reg for MSB square wave
  Serial.println("Square");
  delay (10000);         // pause again
  set_dds_outdata(0x2060);     // then send 0060 to control reg to halve frequency
  Serial.println("Square/2");
  delay (10000);         // pause again
  set_dds_outdata(0x2000);     // now return to sinewave output
  Serial.println("Sine");*/
  
  delay(100);
  //set_dds_freq(sensorA0Value + 16384);
  
  unsigned long tmp = (map(ADCInput, 0, 1024, 0, 10000) + 16384);  
  //Serial.println("ADCInput  Total"); 
  //Serial.print(ADCInput);
  //Serial.print("      ");
  //Serial.println(tmp);     
  
  oled_reset();
  oled_set_text(3,1);
  oled_print(String(tmp));
        
  set_dds_freq(tmp);
  sendControlBytes();
 
  if(digitalRead(PD2) == HIGH) 
  {
    Serial.println("Button pushed");
    if (wt == SINE) 
    {
      wt = TRIANGLE;
      set_dds_func(0x2002);
    }
    else if (wt == TRIANGLE) 
    {
        wt = SQUARE;
        set_dds_func(0x2068);
    }
    else 
    {
        wt = SINE;
        set_dds_func(0x2000);
    }
  }
}




// Interrupt service routine for the ADC completion
ISR(ADC_vect){
  
  
  ADCInput = ADCL | (ADCH << 8);
 
}


