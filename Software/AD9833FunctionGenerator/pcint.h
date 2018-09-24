#ifndef __PCINT_H__
#define __PCINT_H__

#include "EnableInterrupt.h"
#include "dds.h"

#define DEBOUNCE_DELAY 300 // in ms
uint32_t pd2_last_interrupt_time = 0;
uint32_t pd3_last_interrupt_time = 0;
uint32_t pd4_last_interrupt_time = 0;
uint32_t pd5_last_interrupt_time = 0;



#define PCINT_DEBUG



// mode button interrupt
void doPD2Int() 
{
  uint32_t interrupt_time = millis();
  
  if (interrupt_time - pd2_last_interrupt_time > DEBOUNCE_DELAY) 
  {
    if (mode == NORMAL)
    {
      //Serial.println("SWEEP");
      mode = SWEEP;
      // start the sweep at the lower selected frequency
      sweepcounter = selectedLowerFreq;
    }
    else if( mode == SWEEP)
    {
      //Serial.println("NORMAL");
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
      //Serial.println("TRI");
    }
    else if(func == TRIANGLE)
    {
      func = SQUARE;
      //Serial.println("SQR");
    }
    else if(func == SQUARE) 
    {
      func = SINE;
      //Serial.println("SINE");
    }
    //Serial.println("PD3");
  }
  pd3_last_interrupt_time = interrupt_time;
  
}

void setup_pcint()
{
  enableInterrupt(PD2, doPD2Int, CHANGE); 
  enableInterrupt(PD3, doPD3Int, CHANGE); 
}

#endif
