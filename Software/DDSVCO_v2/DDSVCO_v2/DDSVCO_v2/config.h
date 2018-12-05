#ifndef __CONFIG_H__
#define __CONFIG_H__

#define F_CPU 16000000L
#define SSD1306 0x3C


#define TRUE 1
#define FALSE 0

// square Wave has 4.2V more gain than Sin/Tri waves.
const int SquareUnityLvl = 30 ;
const int SineUnityLvl = 255;
const int TriUnityLvl = 255;

// decrease to lower wave

const int SquareOffsetLvl = 10;
const int SineOffsetLvl = 87;
const int TriOffsetLvl = 87;

#endif
