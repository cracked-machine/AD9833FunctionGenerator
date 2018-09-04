#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
#include "EnableInterrupt.h"

float sensorA0Value = 0;
volatile int ADCInput = 0;
enum WAVE_TYPE {SINE, TRIANGLE, SQUARE};
WAVE_TYPE wt = SINE;

volatile long selectedFreq = 0;
volatile double halfperiod;
int adjustTimerFlag = 0;

#define PCINT_DEBUG
int freqincr = 0;
unsigned int FREQZEROREG = 0x4000;

//unsigned  long DdsRange = 262143; //18bit (max 25KHz)
unsigned  long DdsRange = 1048575; //20bit (max 100KHz)
//unsigned  long DdsRange = 4194303; //22bit (max 25MHz)

void doPD2Int() 
{

  Serial.println("PD2");
}

void doPD3Int() 
{

  Serial.println("PD3");
}

void doPD4Int() 
{

  Serial.println("PD4");
}

void doPD5Int() 
{

  Serial.println("PD5");
}

void setDDSFrequency(long hertz) 
{
  long freqword = (hertz*pow(2,28)) / 25000000;
  
  // Calc Lower Word
  //
  
  // shift left 2bits into a 2-byte integer to retain 14 LSB
  unsigned int loword=freqword<<2;
  // shift it right 2bits and copy command bits into their empty positions
  loword = (loword >>2) | FREQZEROREG;
  
  //printBinaryQWORD(loword);  // Use QWORD to examine full 8-byte memory slo
 

  // Calc Higher Word
  //
  
  // shift right and truncate to 2-byte integer to retain 14 MSB
  unsigned int hiword = freqword>>14;
   
  hiword = hiword | FREQZEROREG;
  //printBinaryQWORD(hiword); // Use QWORD to examine full 8-byte memory slot

  //Serial.println();
  
  
  //set_dds_outdata(0x54F8);
  set_dds_outdata(loword);
  write_dds_spi();
  //set_dds_outdata(0x4000);
  set_dds_outdata(hiword);
  write_dds_spi();
}

void doTimer1Int()
{
  
  //unsigned  long selFreqRemapped = map(freqincr, 0, 1024, 0, DdsRange);
  //unsigned  long selFreqRemapped = map(ADCInput, 0, 1024, 0, DdsRange);
  //unsigned  long selFreqRemapped = (1000 * pow(2,28)) / 25000000;
  //Serial.println(selFreqRemapped);
  
  // set the max selectable freq
  selectedFreq = map(ADCInput, 0, 1024, 0, 500000);
  halfperiod = 0.2;
  adjustTimerFlag = 1;
  
  setDDSFrequency(selectedFreq);
}

void setup() 
{
  Serial.begin(9600);
  
  Timer1.initialize(100000);
  Timer1.attachInterrupt(doTimer1Int);
  
  enableInterrupt(PD2, doPD2Int, CHANGE); 
  enableInterrupt(PD3, doPD3Int, CHANGE); 
  enableInterrupt(PD6, doPD4Int, CHANGE); 
  enableInterrupt(PD5, doPD5Int, CHANGE); 
  //pciSetup();
  

  adc_setup();
  oled_setup();
  
  setup_dds_spi();
  dds_init();
  
 
  pinMode(PD2, INPUT_PULLUP);
}



void loop() 
{

  
  //set_dds_freq(sensorA0Value + 16384);
   Serial.println(halfperiod);
 if (adjustTimerFlag) 
  {
    noInterrupts();
    
      //Timer1.setPeriod(10);
      adjustTimerFlag=0;
    interrupts();
    
  }

  
  
  
  oled_reset();
  oled_set_text(1,1);

  
 // oled_println(String(tmp,BIN));
  //oled_print(String(tmp << 8, BIN));
      
  
 
/*  if(digitalRead(PD2) == HIGH) 
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
  }*/
}




// Interrupt service routine for the ADC completion
ISR(ADC_vect){
  
  
  ADCInput = ADCL | (ADCH << 8);
 
}

/*ISR (PCINT2_vect) 
{
  //printBinaryWORD(PIND);
  if(!(PIND & _BV(PCI_InputPin2))) {
    printBinaryWORD(PIND);
    Serial.println(" Pin2");
  }
  if(!(PIND & _BV(PCI_InputPin3))) {
    printBinaryWORD(PIND);
    Serial.println(" Pin3");
  }
  if(!(PIND & _BV(PCI_InputPin4))) {
    printBinaryWORD(PIND);
    Serial.println(" Pin4");
  }
  if(!(PIND & _BV(PCI_InputPin5))) {
    printBinaryWORD(PIND);
    Serial.println(" Pin5");
  }
}
*/




