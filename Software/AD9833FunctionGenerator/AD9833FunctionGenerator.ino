#include <TimerOne.h>

#include "BinaryUtils.h"
#include "dds.h"
#include "adc.h"
#include "oled.h"
#include "pcint.h"
#include "EnableInterrupt.h"

int linespace = 10;  //pixels for a newline

float sensorA0Value = 0;
volatile int ADCInput = 0;
enum WAVE_TYPE {SINE, TRIANGLE, SQUARE};
WAVE_TYPE func = SINE;

enum MODE {NORMAL, SWEEP};
MODE mode = NORMAL;

enum SWEEP_DIRECTION {UP,DOWN};
SWEEP_DIRECTION sweep_direction = UP;
long sweepcounter;

long clkspeed = 10000;
float sweepspeed = 1;

volatile long maxFreq = 10000;
volatile long selectedFreq = 0; // temp value from ADCInput
volatile long currentFreq = 0;  // actual value depending on mode

#define DEBOUNCE_DELAY 300 // in ms
uint32_t pd2_last_interrupt_time = 0;
uint32_t pd3_last_interrupt_time = 0;
uint32_t pd4_last_interrupt_time = 0;
uint32_t pd5_last_interrupt_time = 0;

#define PCINT_DEBUG
int freqincr = 0;
unsigned int FREQZEROREG = 0x4000;


void doPD2Int() 
{
  uint32_t interrupt_time = millis();
  
  if (interrupt_time - pd2_last_interrupt_time > DEBOUNCE_DELAY) 
  {
    if (mode == NORMAL)
    {
      Serial.println("SWEEP");
      mode = SWEEP;
      sweepcounter=0;
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

void doTimer1Int()
{
  

  // set the max selectable freq
  selectedFreq = map(ADCInput, 0, 1024, 0, maxFreq);

  if(mode == SWEEP){
    if(sweep_direction == UP)
    {
      if(sweepcounter<selectedFreq)
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
      if(sweepcounter>0.0)
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
    setDDSFrequency(selectedFreq); 
    currentFreq = selectedFreq;
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

  
  //set_dds_freq(sensorA0Value + 16384);
   //Serial.println(halfperiod);

  
  
  oled_reset();
  oled_set_text(1,1);
  display.setCursor(0,0); 
  if(func==SINE) 
  {
    display.print("SINE");
  }
  else if(func==SQUARE)
  {
    display.print("SQUARE");
  }
  else if(func == TRIANGLE)
  {
    display.print("TRIANGLE");
  }
  if(currentFreq>999)
  {
    float tmp = currentFreq/1000.0;
    display.setCursor(0,linespace);
    display.print(tmp); 
    display.setCursor(25,linespace);
    display.print(" KHz");  
    
  }
  else
  {
    display.setCursor(0,linespace);
    display.print(currentFreq);
    display.setCursor(25,linespace);
    display.print(" Hz");
    
  }
  
  display.setCursor(0,linespace*2);
  display.print(clkspeed);
  display.display();
//  oled_print();
      
  
 
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
  
  //printBinaryWORD(ADCInput);
  //Serial.print("  ");
  //Serial.println(ADCInput);
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
}*/





