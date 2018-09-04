int PCI_InputPin2 = PIND2; int PCI_InputPin2Int = PCINT18;
int PCI_InputPin3 = PIND3; int PCI_InputPin3Int = PCINT19;
int PCI_InputPin4 = PIND4; int PCI_InputPin4Int = PCINT20;
int PCI_InputPin5 = PIND5; int PCI_InputPin5Int = PCINT21;

#define PCINT_DEBUG

void pciSetup()
{
  /*
    *digitalPinToPCMSK(pin) |= bit (digitalPinToPCMSKbit(pin));  // enable pin
    PCIFR  |= bit (digitalPinToPCICRbit(pin)); // clear any outstanding interrupt
    PCICR  |= bit (digitalPinToPCICRbit(pin)); // enable interrupt for the group
    */
  #ifdef PCINT_DEBUG
    Serial.print("  DDRD         ");
    Serial.print("PORTD        ");
    Serial.print("PCICR        ");
    Serial.println("PCMSK2      ");
  #endif
  //set PCI_InputPin2,3,4,5 = INPUT (0)
  DDRD |=  ~(_BV(PCI_InputPin2) | _BV(PCI_InputPin3) | _BV(PCI_InputPin4) | _BV(PCI_InputPin5));
  
  #ifdef PCINT_DEBUG
    printBinaryWORD(DDRD);
  #endif
  
  //set PCI_WaveIncrPin = Hi-Z (1)
  //PORTD |= _BV(PCI_InputPin2) | _BV(PCI_InputPin3) | _BV(PCI_InputPin4) | _BV(PCI_InputPin5);
  
  #ifdef PCINT_DEBUG
    printBinaryWORD(PORTD);
  #endif

  // enable interrupts for PD 0-7 ports (PCINT16-23)
  PCICR |= _BV(PCIE2); 
  
  #ifdef PCINT_DEBUG 
    printBinaryWORD(PCICR);
  #endif
       
  // enable interrupts for PCI_WaveIncrPin
  PCMSK2 |= _BV(PCI_InputPin2Int) | _BV(PCI_InputPin3Int) | _BV(PCI_InputPin4Int) | _BV(PCI_InputPin5Int);   
  
  #ifdef PCINT_DEBUG  
    printBinaryWORD(PCMSK2);
    Serial.println();
  #endif

  
   
}
