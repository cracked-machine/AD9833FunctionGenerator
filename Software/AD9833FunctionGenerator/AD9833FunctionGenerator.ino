#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
#include "EnableInterrupt.h"

volatile const uint8_t adc0 = (1<<ADLAR) | 0;
volatile const uint8_t adc1 = (1<<ADLAR) | 1;

int linespace = 9;  //pixels for a newline
int temp_adc = 0;
float rawAdcValue = 0;
volatile int ADCInput = 0;
volatile int ADCInput1 = 0;
volatile int ADCInput2 = 0;
volatile int ADCInput3 = 0;
volatile int ADCInput6 = 0;

byte current_admux;

enum WAVE_TYPE {SINE, TRIANGLE, SQUARE};
WAVE_TYPE func = SINE;

enum MODE {NORMAL, SWEEP};
MODE mode = NORMAL;

enum SWEEP_DIRECTION {UP,DOWN};
SWEEP_DIRECTION sweep_direction = UP;
long sweepcounter;

long maxclkspeed = 100000;
long minclkspeed = 1;

long clkspeed = 10000;
float sweepspeed = 1;

volatile long maxFreq = 10000;
volatile long selectedUpperFreq = 0; // temp value from ADCInput
volatile long selectedLowerFreq = 0; // temp value from ADCInput
volatile long currentFreq = 0;  // actual value depending on mode

#define DEBOUNCE_DELAY 300 // in ms
uint32_t pd2_last_interrupt_time = 0;
uint32_t pd3_last_interrupt_time = 0;
uint32_t pd4_last_interrupt_time = 0;
uint32_t pd5_last_interrupt_time = 0;

#define PCINT_DEBUG
int freqincr = 0;
unsigned int FREQZEROREG = 0x4000;

// mode button interrupt
void doPD2Int() 
{
  uint32_t interrupt_time = millis();
  
  if (interrupt_time - pd2_last_interrupt_time > DEBOUNCE_DELAY) 
  {
    if (mode == NORMAL)
    {
      Serial.println("SWEEP");
      mode = SWEEP;
      // start the sweep at the lower selected frequency
      sweepcounter = selectedLowerFreq;
    }
    else if( mode == SWEEP)
    {
      Serial.println("NORMAL");
      mode = NORMAL;
    }
  }
  pd2_last_interrupt_time = interrupt_time;
}

void doPD3Int() 
{
   uint32_t interrupt_time = millis();
  
  if (interrupt_time - pd3_last_interrupt_time > DEBOUNCE_DELAY) 
  {
    if(func == SINE)
    {
      func = TRIANGLE;
      Serial.println("TRI");
    }
    else if(func == TRIANGLE)
    {
      func = SQUARE;
      Serial.println("SQR");
    }
    else if(func == SQUARE) 
    {
      func = SINE;
      Serial.println("SINE");
    }
    Serial.println("PD3");
  }
  pd3_last_interrupt_time = interrupt_time;
  
}

void doPD4Int() 
{
  if(clkspeed>100)
  {
    Timer1.setPeriod(clkspeed=clkspeed-100);
  }
  //sweepspeed=sweepspeed+0.1;
  Serial.println("PD4");
}

void doPD5Int() 
{
  
  
    Timer1.setPeriod(clkspeed=clkspeed+100);
  
  
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

  if(func == SINE)
  {
    set_dds_outdata(0x2000);
  }
  else if(func == TRIANGLE)
  {
    set_dds_outdata(0x2002);
  }
  else if(func == SQUARE) 
  {
    set_dds_outdata(0x2068);
  }
   
   write_dds_spi();
  //set_dds_outdata(0x54F8);
  set_dds_outdata(loword);
  write_dds_spi();
  //set_dds_outdata(0x4000);
  set_dds_outdata(hiword);
  write_dds_spi();
}

// controls the mode behavior (sweep/normal)
void doTimer1Int()
{
  

  // set the freq range
  selectedUpperFreq = map(ADCInput, 0, 1024, 0, maxFreq);
  selectedLowerFreq = map(ADCInput1, 0, 1024, 0, maxFreq);

  if(mode == SWEEP){

     
    Timer1.setPeriod(map(ADCInput6, 0, 1024, 1, maxclkspeed));
    
    
    if (selectedLowerFreq >= selectedUpperFreq)
    {
      selectedLowerFreq = selectedUpperFreq - 1;
    }
    
      
    if(sweep_direction == UP)
    {
      if(sweepcounter<selectedUpperFreq)
      {
        sweepcounter++;
      }
      else
      {
        sweep_direction=DOWN;
      }
    }
    else if (sweep_direction == DOWN) 
    {
      if(sweepcounter>selectedLowerFreq)
      {
        sweepcounter--;
      }
      else
      {
        sweep_direction=UP;
      }
    }
    setDDSFrequency(sweepcounter);
    currentFreq = sweepcounter;
  }
  if(mode == NORMAL) {

    // clamp the lower range whilst in normal mode
    selectedLowerFreq = selectedUpperFreq-1;
    
    setDDSFrequency(selectedUpperFreq); 
    currentFreq = selectedUpperFreq;
  }
  
}

void setup() 
{
  Serial.begin(9600);
  
  Timer1.initialize(clkspeed);
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

  oled_reset();
  oled_set_text(1,1);

  // print function
  display.setCursor(0,0); 
  if(func==SINE) 
  {
    display.print("SINE");
  }
  else if(func==SQUARE)
  {
    display.print("SQ");
  }
  else if(func == TRIANGLE)
  {
    display.print("TRI");
  }

  
  if(mode == NORMAL)
  {
    display.print(" NORMAL");
    display.setCursor(20,linespace);
   
    // print upper freq only
    oled_set_text(2,1);
    printCurrentFreq();
    oled_set_text(1,1);
    
  }
  else 
  {
    display.print(" SWEEP");
    display.print(" Vel=");
    display.print(ADCInput6);
    
    display.setCursor(20,linespace);

    oled_set_text(2,1);
    printCurrentFreq();
    oled_set_text(1,1);

    display.setCursor(0,25);
    printLowerFreq();
    display.print(" -> ");
    printUpperFreq();

    
    
  }
  
  
  display.display();


  /*Serial.print("ADC0: ");
  Serial.print(ADCInput);
  Serial.print(" ADC1: ");
  Serial.print(ADCInput1);
  Serial.print(" ADC2: ");
  Serial.print(ADCInput2);
  Serial.print(" ADC3: ");
  Serial.println(ADCInput3);*/

  /*Serial.print("Lower: ");
  Serial.print(selectedLowerFreq);
  Serial.print(" Upper: ");
  Serial.print(selectedUpperFreq);
  Serial.print(" Vel: ");
  Serial.println(ADCInput6);
  */
}

void printCurrentFreq()
{
  if(currentFreq>999)
  {      
    display.print(currentFreq/1000.0); 
    
    display.print("KHz");        
  }
  else
  {      
    display.print(currentFreq);
   
    display.print("Hz");      
  }
}

void printLowerFreq()
{
  if(selectedLowerFreq>999)
  {      
    display.print(selectedLowerFreq/1000.0); 
    
    display.print("KHz");        
  }
  else
  {      
    display.print(selectedLowerFreq);
   
    display.print("Hz");      
  }
}

void printUpperFreq()
{
  if(selectedUpperFreq>999)
  {      
    display.print(selectedUpperFreq/1000.0); 
   
    display.print("KHz");        
  }
  else
  {      
    display.print(selectedUpperFreq);
    
    display.print("Hz");      
  }
}

// Interrupt service routine for the ADC completion
ISR(ADC_vect){

 
  // get the raw ADC completion
  rawAdcValue = ADCL;
  rawAdcValue += ADCH << 8;

  
   switch(ADMUX) {
    case 0x00:
      
      ADCInput6 = rawAdcValue;
      
      ADMUX = 0x01;
      break;
    
    case 0x01:
      
      ADCInput = rawAdcValue;
      ADMUX = 0x02;
      break;

    case 0x02:
      
      ADCInput1 = rawAdcValue;
      ADMUX = 0x03;
      break;

    case 0x03:
      
      ADCInput2 = rawAdcValue;
      ADMUX = 0x06;
      break;
      
    case 0x06:
      ADCInput3 = rawAdcValue;
      ADMUX = 0x00;
      break;
    
  }
  ADCSRA |= _BV(ADSC);
 
  
  
 
}







