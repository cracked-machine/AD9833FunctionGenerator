

///////////////////////////////////////////////////////
////    void setupADC()
///////////////////////////////////////////////////////

void adc_setup() {
  
  /*
   // clear ADLAR in ADMUX (0x7C) to right-adjust the result
  // ADCL will contain lower 8 bits, ADCH upper 2 (in last two bits)
  ADMUX &= B11011111;
  
  // Set REFS1..0 in ADMUX (0x7C) to change reference voltage to the
  // proper source (01)
  ADMUX |= B01000000;
  
  // Clear MUX3..0 in ADMUX (0x7C) in preparation for setting the analog
  // input
  ADMUX &= B11110000;
  
  // Set MUX3..0 in ADMUX (0x7C) to read from AD8 (Internal temp)
  // Do not set above 15! You will overrun other parts of ADMUX. A full
  // list of possible inputs is available in Table 24-4 of the ATMega328
  // datasheet
  //ADMUX |= 0;
  
  // ADMUX |= B00001000; // Binary equivalent
  
  // Set ADEN in ADCSRA (0x7A) to enable the ADC.
  // Note, this instruction takes 12 ADC clocks to execute
  ADCSRA |= B10000000;
  
  // Set ADATE in ADCSRA (0x7A) to enable auto-triggering.
  ADCSRA |= B00100000;
  
  // Clear ADTS2..0 in ADCSRB (0x7B) to set trigger mode to free running.
  // This means that as soon as an ADC has finished, the next will be
  // immediately started.
  ADCSRB &= B11111000;
  
  // Set the Prescaler to 128 (16000KHz/128 = 125KHz)
  // Above 200KHz 10-bit results are not reliable.
  ADCSRA |= B00000111;
  
  // Set ADIE in ADCSRA (0x7A) to enable the ADC interrupt.
  // Without this, the internal interrupt will not trigger.
  ADCSRA |= B00001000;
  
  // Enable global interrupts
  // AVR macro included in <avr/interrupts.h>, which the Arduino IDE
  // supplies by default.
  sei();
  
  // Kick off the first ADC
  //readFlag = 0;
  // Set ADSC in ADCSRA (0x7A) to start the ADC conversion
  ADCSRA |=B01000000;
  */

  ADMUX =
        (1 << ADLAR) |     // left shift result
        (1 << MUX1);       // use ADC2 for input (PB4) (to start)

   ADCSRA =
        (1 << ADEN)  |     // Enable ADC
        (1 << ADATE) |     // auto trigger enable
        (1 << ADIE)  |     // enable ADC interrupt
        (1 << ADPS0) |     // Prescaler = 8
        (1 << ADPS1);      //    - 125KHz with 1MHz clock

    ADCSRB = 0;                  // free running mode
    sei();
    ADCSRA |= (1 << ADSC); // start conversions
}
