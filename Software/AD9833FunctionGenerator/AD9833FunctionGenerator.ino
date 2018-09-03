#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"

float sensorA0Value = 0;
volatile int ADCInput = 0;
enum WAVE_TYPE {SINE, TRIANGLE, SQUARE};
WAVE_TYPE wt = SINE;

unsigned int FREQZEROREG = 0x4000;



void setup() 
{
  //Timer1.initialize(150000);
  //Timer1.attachInterrupt(sendControlBytes);
  adc_setup();
  oled_setup();
  
  setup_dds_spi();
  dds_init();
  
  Serial.begin(9600);
  pinMode(PD2, INPUT_PULLUP);
}



void loop() 
{

  delay(200);
  //set_dds_freq(sensorA0Value + 16384);
   //unsigned  long DdsRange = 262143; //18bit (max 25KHz)
   unsigned  long DdsRange = 1048575; //20bit (max 100KHz)
    //unsigned  long DdsRange = 4194303; //22bit (max 25MHz)
   
  unsigned  long selFreqRemapped = map(ADCInput, 0, 1024, 0, DdsRange);

 // Serial.print(selFreqRemapped);
 //Serial.print(" : ");
// printBinaryQWORD(selFreqRemapped);
 // Serial.print("  ");

  // Lower Word
  //
  // shift left 2bits into a 2-byte integer to retain 14 LSB
  unsigned int loword=selFreqRemapped<<2;
  // shift it right 2bits and copy command bits into their empty positions
  loword = (loword >>2) | FREQZEROREG;
  
  //printBinaryQWORD(loword);  // Use QWORD to examine full 8-byte memory slo
 

  // Higher Word
  //
  // shift right and truncate to 2-byte integer to retain 14 MSB
  unsigned int hiword = selFreqRemapped>>14;
   
  hiword = hiword | FREQZEROREG;
  //printBinaryQWORD(hiword); // Use QWORD to examine full 8-byte memory slot

  
 
  
  Serial.println();
  
  
  set_dds_outdata(loword);
  write_dds_spi();
  set_dds_outdata(hiword);
  write_dds_spi();
  
  
  
  oled_reset();
  oled_set_text(1,1);

  
 // oled_println(String(tmp,BIN));
  //oled_print(String(tmp << 8, BIN));
      
  
 
  if(digitalRead(PD2) == HIGH) 
  {
    //Serial.println("Button pushed");
    if (wt == SINE) 
    {
      wt = TRIANGLE;
      set_dds_outdata(0x2002);
      Serial.println("TRIANGLE");
    }
    else if (wt == TRIANGLE) 
    {
        wt = SQUARE;
        set_dds_outdata(0x2068);
        Serial.println("SQUARE");
    }
    else 
    {
        wt = SINE;
        set_dds_outdata(0x2000);
        Serial.println("SINE");
    }
    write_dds_spi();
  }
}




// Interrupt service routine for the ADC completion
ISR(ADC_vect){
  
  
  ADCInput = ADCL | (ADCH << 8);
 
}



