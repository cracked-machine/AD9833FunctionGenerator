#ifndef __CONFIG_H__
#define __CONFIG_H__

// square Wave has 4.2V more gain than Sin/Tri waves.
const int SquareUnityLvl = 28 ;
const int SineUnityLvl = 255;
const int TriUnityLvl = 255;

// SqWave has slight offset
const int SquareOffsetLvl = 200 ;
const int SineOffsetLvl = 40;
const int TriOffsetLvl = 40;


#endif
