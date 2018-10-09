EESchema Schematic File Version 4
LIBS:AD9833FunctionGenerator-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8550 2900 8550 2500
$Comp
L Device:R R_MIX2
U 1 1 5BBE4770
P 3300 2700
F 0 "R_MIX2" V 3200 2800 50  0000 R CNN
F 1 "10K" V 3300 2750 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2700 50  0001 C CNN
F 3 "~" H 3300 2700 50  0001 C CNN
	1    3300 2700
	0    -1   1    0   
$EndComp
$Comp
L Device:R R_MIX1
U 1 1 5BBE4777
P 3300 1500
F 0 "R_MIX1" V 3200 1600 50  0000 R CNN
F 1 "10K" V 3300 1550 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 1500 50  0001 C CNN
F 3 "~" H 3300 1500 50  0001 C CNN
	1    3300 1500
	0    -1   1    0   
$EndComp
Wire Wire Line
	5850 2900 5850 2350
Wire Wire Line
	4850 2350 4850 2800
Wire Wire Line
	2950 3700 2800 3700
Wire Wire Line
	1850 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1000
Wire Wire Line
	1650 1000 2650 1000
Wire Wire Line
	2650 1000 2650 1500
Wire Wire Line
	2650 1500 2450 1500
Connection ~ 2650 1500
Wire Wire Line
	1150 1600 1850 1600
$Comp
L Device:R R_MIXF1
U 1 1 5BBE478E
P 5400 2350
F 0 "R_MIXF1" V 5500 2350 50  0000 C CNN
F 1 "10K" V 5400 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 2350 50  0001 C CNN
F 3 "~" H 5400 2350 50  0001 C CNN
	1    5400 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	5550 2350 5850 2350
Wire Wire Line
	5250 2350 4850 2350
Wire Wire Line
	1350 3700 1500 3700
Wire Wire Line
	6950 2900 7100 2900
$Comp
L Device:R R_ISO1
U 1 1 5BBE47A5
P 10050 3000
F 0 "R_ISO1" V 9850 3000 50  0000 C CNN
F 1 "600R 1%" V 9950 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9980 3000 50  0001 C CNN
F 3 "~" H 10050 3000 50  0001 C CNN
	1    10050 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C_GAINF1
U 1 1 5BBE47AD
P 9350 2500
F 0 "C_GAINF1" V 9200 2450 50  0000 C CNN
F 1 "?" V 9300 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9388 2350 50  0001 C CNN
F 3 "~" H 9350 2500 50  0001 C CNN
	1    9350 2500
	0    1    -1   0   
$EndComp
Wire Wire Line
	9500 2500 9750 2500
$Comp
L Device:R_POT_TRIM RV_UPOFF1
U 1 1 5BBE47B6
P 2650 3700
F 0 "RV_UPOFF1" V 2500 3700 50  0000 C CNN
F 1 "100K" V 2400 3700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 2650 3700 50  0001 C CNN
F 3 "~" H 2650 3700 50  0001 C CNN
F 4 "652-3296Y-1-104LF" H -2800 2350 50  0001 C CNN "MouserPartNo"
	1    2650 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2650 3550 2650 3500
Wire Wire Line
	2650 3500 2450 3500
Wire Wire Line
	2450 3500 2450 3700
Wire Wire Line
	2450 3700 2500 3700
Wire Wire Line
	1650 3500 1850 3500
Wire Wire Line
	1850 3500 1850 3700
Connection ~ 1850 3700
Wire Wire Line
	1850 3700 1800 3700
Wire Wire Line
	1650 3500 1650 3550
$Comp
L Amplifier_Custom:LM7171 U_MIX1
U 2 1 5BBE47D0
P 5300 4900
F 0 "U_MIX1" V 5450 4950 50  0000 C CNN
F 1 "LM7171" V 5350 4950 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5300 4900 50  0001 C CNN
F 3 "" H 5300 4900 50  0001 C CNN
F 4 "926-LM7171BIMX/NOPB" H 5300 4900 50  0001 C CNN "MouserPartNo"
	2    5300 4900
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Custom:LM7171 U_GAIN1
U 1 1 5BBE47D8
P 9200 3000
F 0 "U_GAIN1" H 9200 3367 50  0000 C CNN
F 1 "LM7171" H 9200 3276 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9200 3000 50  0001 C CNN
F 3 "" H 9200 3000 50  0001 C CNN
F 4 "926-LM7171BIMX/NOPB" H -250 1000 50  0001 C CNN "MouserPartNo"
	1    9200 3000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Custom:TL071 U_BUF1
U 1 1 5BBE47E0
P 2150 1500
F 0 "U_BUF1" H 2150 1867 50  0000 C CNN
F 1 "TL071" H 2150 1776 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2150 1500 50  0001 C CNN
F 3 "" H 2150 1500 50  0001 C CNN
F 4 "595-TL071ACDR" H -3450 -1900 50  0001 C CNN "MouserPartNo"
	1    2150 1500
	1    0    0    1   
$EndComp
Connection ~ 2450 3700
Wire Wire Line
	9750 2500 9750 3000
$Comp
L Device:C C_MIXIN1
U 1 1 5BBE47EB
P 4150 3250
F 0 "C_MIXIN1" H 4200 3400 50  0000 L CNN
F 1 "?" H 4350 3250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4188 3100 50  0001 C CNN
F 3 "~" H 4150 3250 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3100 4150 2800
$Comp
L Device:C C_MIXF1
U 1 1 5BBE47F7
P 5400 1800
F 0 "C_MIXF1" V 5550 1800 50  0000 C CNN
F 1 "?" V 5650 1800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5438 1650 50  0001 C CNN
F 3 "~" H 5400 1800 50  0001 C CNN
	1    5400 1800
	0    1    -1   0   
$EndComp
Wire Wire Line
	5250 1800 4850 1800
Wire Wire Line
	4850 1800 4850 2350
Connection ~ 4850 2350
Wire Wire Line
	5550 1800 5850 1800
Wire Wire Line
	5850 1800 5850 2350
Connection ~ 5850 2350
$Comp
L Device:C C_GAIN1
U 1 1 5BBE4804
P 7650 3250
F 0 "C_GAIN1" H 7200 3250 50  0000 L CNN
F 1 "470pF" H 7250 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7688 3100 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
	1    7650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3100 7650 2900
Connection ~ 7650 2900
$Comp
L Device:R_POT_TRIM RV_LOWG1
U 1 1 5BBE4810
P 8550 1900
F 0 "RV_LOWG1" H 9150 1900 50  0000 R CNN
F 1 "100R" V 8550 2000 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 8550 1900 50  0001 C CNN
F 3 "~" H 8550 1900 50  0001 C CNN
F 4 "652-3296Y-1-101LF" H -550 -1200 50  0001 C CNN "MouserPartNo"
	1    8550 1900
	1    0    0    1   
$EndComp
$Comp
L Device:R R_LOWG1
U 1 1 5BBE4817
P 8550 1550
F 0 "R_LOWG1" H 8620 1595 50  0000 L CNN
F 1 "120R" V 8550 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8480 1550 50  0001 C CNN
F 3 "~" H 8550 1550 50  0001 C CNN
	1    8550 1550
	1    0    0    1   
$EndComp
Wire Wire Line
	8550 2050 8550 2200
Connection ~ 9750 2500
Wire Wire Line
	8550 1750 8550 1700
Wire Wire Line
	9750 1050 9750 2500
Connection ~ 8550 2500
$Comp
L Device:R_POT_TRIM RV_TOPG1
U 1 1 5BBE4826
P 6800 2900
F 0 "RV_TOPG1" V 6686 2900 50  0000 C CNN
F 1 "10K" V 6597 2900 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 6800 2900 50  0001 C CNN
F 3 "~" H 6800 2900 50  0001 C CNN
F 4 "652-3296Y-1-103LF" H -1500 800 50  0001 C CNN "MouserPartNo"
	1    6800 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_TOPG1
U 1 1 5BBE482D
P 6250 2900
F 0 "R_TOPG1" V 6350 2900 50  0000 C CNN
F 1 "330R" V 6450 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6180 2900 50  0001 C CNN
F 3 "~" H 6250 2900 50  0001 C CNN
	1    6250 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2900 6650 2900
Wire Wire Line
	6800 2750 6800 2600
Wire Wire Line
	6800 2600 7100 2600
Wire Wire Line
	7100 2600 7100 2900
Connection ~ 7100 2900
Wire Wire Line
	7100 2900 7650 2900
Wire Wire Line
	8550 2500 9200 2500
Wire Wire Line
	8550 2200 9100 2200
Wire Wire Line
	9100 2200 9100 1900
Wire Wire Line
	8700 1900 9100 1900
Connection ~ 8550 2200
Wire Wire Line
	8550 2200 8550 2500
$Comp
L Device:R_POT_Dual_Separate RV_AMP1
U 1 1 5BBE4847
P 2150 3700
F 0 "RV_AMP1" V 2000 3850 50  0000 R CNN
F 1 "B10K" V 1900 3750 50  0000 R CNN
F 2 "PTH901:PTH901" H 2150 3700 50  0001 C CNN
F 3 "~" H 2150 3700 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -2850 2000 50  0001 C CNN "MouserPartNo"
	1    2150 3700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV_AMP1
U 2 1 5BBE484F
P 8950 1050
F 0 "RV_AMP1" V 8836 1050 50  0000 C CNN
F 1 "B10K" V 8747 1050 50  0000 C CNN
F 2 "PTH901:PTH901" H 8950 1050 50  0001 C CNN
F 3 "~" H 8950 1050 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -550 -2900 50  0001 C CNN "MouserPartNo"
	2    8950 1050
	0    -1   1    0   
$EndComp
Wire Wire Line
	9750 1050 9300 1050
Wire Wire Line
	8550 1050 8800 1050
Wire Wire Line
	8550 1400 8550 1050
Text HLabel 1150 1600 0    50   Input ~ 0
SIGIN
Text HLabel 2950 3350 1    50   Input ~ 0
+12V
Text HLabel 1350 3350 1    50   Input ~ 0
-12V
Wire Wire Line
	2950 3350 2950 3700
Wire Wire Line
	1350 3350 1350 3700
Text HLabel 4150 3600 3    50   Input ~ 0
GND
Wire Wire Line
	4150 3600 4150 3400
Text HLabel 10500 3000 2    50   Input ~ 0
SIGOUT
Wire Wire Line
	10500 3000 10200 3000
Wire Wire Line
	2300 3700 2450 3700
Wire Wire Line
	1850 3700 2000 3700
Wire Wire Line
	2150 3550 2150 2700
Wire Wire Line
	8950 1200 8950 1350
Wire Wire Line
	8950 1350 9300 1350
Wire Wire Line
	9300 1350 9300 1050
Connection ~ 9300 1050
Wire Wire Line
	9300 1050 9100 1050
Wire Wire Line
	2100 5000 1900 5000
Wire Wire Line
	5000 5000 4900 5000
Wire Wire Line
	2700 5000 2900 5000
Wire Wire Line
	9500 5000 9600 5000
Wire Wire Line
	5600 5000 5700 5000
Wire Wire Line
	8900 5000 8800 5000
$Comp
L Amplifier_Custom:LM7171 U_MIX?
U 1 1 5BC85C6C
P 5350 2900
AR Path="/5BC85C6C" Ref="U_MIX?"  Part="2" 
AR Path="/5BBD761F/5BC85C6C" Ref="U_MIX1"  Part="1" 
F 0 "U_MIX1" H 5400 3200 50  0000 L CNN
F 1 "LM7171" H 5400 3300 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
F 4 "926-LM7171BIMX/NOPB" H -4550 -2300 50  0001 C CNN "MouserPartNo"
	1    5350 2900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Custom:LM7171 U_GAIN?
U 2 1 5BC85C74
P 9200 4900
AR Path="/5BC85C74" Ref="U_GAIN?"  Part="2" 
AR Path="/5BBD761F/5BC85C74" Ref="U_GAIN1"  Part="2" 
F 0 "U_GAIN1" V 9400 4700 50  0000 L CNN
F 1 "LM7171" V 9300 4750 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9200 4900 50  0001 C CNN
F 3 "" H 9200 4900 50  0001 C CNN
F 4 "926-LM7171BIMX/NOPB" H -1300 -300 50  0001 C CNN "MouserPartNo"
	2    9200 4900
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Custom:TL071 U_BUF?
U 2 1 5BC85C7C
P 2400 4900
AR Path="/5BC85C7C" Ref="U_BUF?"  Part="2" 
AR Path="/5BBD761F/5BC85C7C" Ref="U_BUF1"  Part="2" 
F 0 "U_BUF1" V 2550 4750 50  0000 L CNN
F 1 "TL071" V 2450 4800 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2400 4900 50  0001 C CNN
F 3 "" H 2400 4900 50  0001 C CNN
F 4 "595-TL071ACDR" H -6900 -300 50  0001 C CNN "MouserPartNo"
	2    2400 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_BUFBP?
U 1 1 5BC85C83
P 1900 5350
AR Path="/5BC85C83" Ref="C_BUFBP?"  Part="1" 
AR Path="/5BBD761F/5BC85C83" Ref="C_BUFBP1"  Part="1" 
F 0 "C_BUFBP1" H 1600 5450 50  0000 C CNN
F 1 "100nF" H 1550 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1938 5200 50  0001 C CNN
F 3 "~" H 1900 5350 50  0001 C CNN
	1    1900 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_BUFBP?
U 1 1 5BC85C8A
P 2900 5350
AR Path="/5BC85C8A" Ref="C_BUFBP?"  Part="1" 
AR Path="/5BBD761F/5BC85C8A" Ref="C_BUFBP2"  Part="1" 
F 0 "C_BUFBP2" H 2600 5450 50  0000 C CNN
F 1 "100nF" H 2600 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2938 5200 50  0001 C CNN
F 3 "~" H 2900 5350 50  0001 C CNN
	1    2900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5200 2900 5000
Wire Wire Line
	1900 5200 1900 5000
Wire Wire Line
	1900 5500 1900 5700
Wire Wire Line
	1900 5700 2900 5700
Wire Wire Line
	2900 5700 2900 5500
Connection ~ 2900 5700
$Comp
L Device:C C_MIXBP?
U 1 1 5BC85C9D
P 4900 5350
AR Path="/5BC85C9D" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC85C9D" Ref="C_MIXBP2"  Part="1" 
F 0 "C_MIXBP2" H 4650 5450 50  0000 C CNN
F 1 "10nF" H 4600 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 5200 50  0001 C CNN
F 3 "~" H 4900 5350 50  0001 C CNN
	1    4900 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C_MIXBP?
U 1 1 5BC85CA4
P 4200 5350
AR Path="/5BC85CA4" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CA4" Ref="C_MIXBP1"  Part="1" 
F 0 "C_MIXBP1" H 3800 5450 50  0000 C CNN
F 1 "2.2uF TANT." H 3800 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 5200 50  0001 C CNN
F 3 "~" H 4200 5350 50  0001 C CNN
	1    4200 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_MIXBP?
U 1 1 5BC85CAB
P 5700 5350
AR Path="/5BC85CAB" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CAB" Ref="C_MIXBP3"  Part="1" 
F 0 "C_MIXBP3" H 5450 5450 50  0000 C CNN
F 1 "10nF" H 5400 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5738 5200 50  0001 C CNN
F 3 "~" H 5700 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C_MIXBP?
U 1 1 5BC85CB2
P 6500 5350
AR Path="/5BC85CB2" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CB2" Ref="C_MIXBP4"  Part="1" 
F 0 "C_MIXBP4" H 6150 5450 50  0000 C CNN
F 1 "2.2pF TANT." H 6150 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6538 5200 50  0001 C CNN
F 3 "~" H 6500 5350 50  0001 C CNN
	1    6500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5200 5700 5000
Connection ~ 5700 5000
Wire Wire Line
	5700 5000 6500 5000
Wire Wire Line
	6500 5200 6500 5000
Wire Wire Line
	4200 5200 4200 5000
Wire Wire Line
	4900 5200 4900 5000
Connection ~ 4900 5000
Wire Wire Line
	4900 5000 4200 5000
Wire Wire Line
	4200 5500 4200 5700
Wire Wire Line
	4200 5700 4900 5700
Wire Wire Line
	5700 5500 5700 5700
Connection ~ 5700 5700
Wire Wire Line
	5700 5700 6500 5700
Wire Wire Line
	6500 5700 6500 5500
Connection ~ 6500 5700
Wire Wire Line
	4900 5500 4900 5700
Connection ~ 4900 5700
Wire Wire Line
	4900 5700 5700 5700
$Comp
L Device:C C_GAINBP?
U 1 1 5BC85CD1
P 8800 5350
AR Path="/5BC85CD1" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CD1" Ref="C_GAINBP2"  Part="1" 
F 0 "C_GAINBP2" H 8550 5450 50  0000 C CNN
F 1 "10nF" H 8550 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8838 5200 50  0001 C CNN
F 3 "~" H 8800 5350 50  0001 C CNN
	1    8800 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C_GAINBP?
U 1 1 5BC85CD8
P 8200 5350
AR Path="/5BC85CD8" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CD8" Ref="C_GAINBP1"  Part="1" 
F 0 "C_GAINBP1" H 7850 5450 50  0000 C CNN
F 1 "2.2uF TANT." H 7850 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8238 5200 50  0001 C CNN
F 3 "~" H 8200 5350 50  0001 C CNN
	1    8200 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_GAINBP?
U 1 1 5BC85CDF
P 9600 5350
AR Path="/5BC85CDF" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CDF" Ref="C_GAINBP3"  Part="1" 
F 0 "C_GAINBP3" H 9300 5450 50  0000 C CNN
F 1 "10nF" H 9350 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9638 5200 50  0001 C CNN
F 3 "~" H 9600 5350 50  0001 C CNN
	1    9600 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C_GAINBP?
U 1 1 5BC85CE6
P 10500 5350
AR Path="/5BC85CE6" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CE6" Ref="C_GAINBP4"  Part="1" 
F 0 "C_GAINBP4" H 10150 5450 50  0000 C CNN
F 1 "2.2uF TANT." H 10150 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10538 5200 50  0001 C CNN
F 3 "~" H 10500 5350 50  0001 C CNN
	1    10500 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 5200 9600 5000
Wire Wire Line
	10500 5200 10500 5000
Wire Wire Line
	8200 5200 8200 5000
Wire Wire Line
	8800 5200 8800 5000
Wire Wire Line
	8200 5500 8200 5700
Wire Wire Line
	8200 5700 8800 5700
Wire Wire Line
	9600 5500 9600 5700
Connection ~ 9600 5700
Wire Wire Line
	9600 5700 10500 5700
Wire Wire Line
	10500 5700 10500 5500
Connection ~ 10500 5700
Wire Wire Line
	8800 5500 8800 5700
Connection ~ 8800 5700
Wire Wire Line
	8800 5700 9600 5700
Connection ~ 8800 5000
Wire Wire Line
	8800 5000 8200 5000
Connection ~ 9600 5000
Wire Wire Line
	9600 5000 10500 5000
$Comp
L Device:R_POT_TRIM RV_LOWOFF1
U 1 1 5BBE47BE
P 1650 3700
F 0 "RV_LOWOFF1" V 1500 3700 50  0000 C CNN
F 1 "100K" V 1400 3700 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296Y_Vertical" H 1650 3700 50  0001 C CNN
F 3 "~" H 1650 3700 50  0001 C CNN
F 4 "652-3296Y-1-104LF" H -3800 1650 50  0001 C CNN "MouserPartNo"
	1    1650 3700
	0    -1   -1   0   
$EndComp
Text HLabel 7650 3600 3    50   Input ~ 0
GND
Wire Wire Line
	7650 3600 7650 3400
Wire Wire Line
	7650 2900 8550 2900
Wire Wire Line
	9500 3000 9750 3000
Connection ~ 8550 2900
Wire Wire Line
	8550 2900 8900 2900
Connection ~ 9750 3000
Wire Wire Line
	9750 3000 9900 3000
Text HLabel 8550 3600 3    50   Input ~ 0
GND
Wire Wire Line
	8550 3600 8550 3100
Wire Wire Line
	8550 3100 8900 3100
Wire Wire Line
	5650 2900 5850 2900
Wire Wire Line
	4150 2800 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	4850 2800 5050 2800
Connection ~ 5850 2900
Text HLabel 4700 3600 3    50   Input ~ 0
GND
Wire Wire Line
	4700 3600 4700 3000
Wire Wire Line
	4700 3000 5050 3000
Wire Wire Line
	2650 1500 3150 1500
Wire Wire Line
	3650 1500 3450 1500
Wire Wire Line
	3650 2700 3450 2700
Wire Wire Line
	2150 2700 3150 2700
Wire Wire Line
	3650 2700 3650 2050
Wire Wire Line
	4150 2800 4150 2050
Wire Wire Line
	4150 2050 3650 2050
Connection ~ 4150 2800
Connection ~ 3650 2050
Wire Wire Line
	3650 2050 3650 1500
Text HLabel 1900 4650 1    50   Input ~ 0
+12V
Wire Wire Line
	1900 4650 1900 5000
Text HLabel 4200 4650 1    50   Input ~ 0
+12V
Wire Wire Line
	4200 4650 4200 5000
Connection ~ 4200 5000
Text HLabel 8200 4600 1    50   Input ~ 0
+12V
Wire Wire Line
	8200 4600 8200 5000
Connection ~ 8200 5000
Text HLabel 2900 4650 1    50   Input ~ 0
-12V
Wire Wire Line
	2900 4650 2900 5000
Connection ~ 2900 5000
Text HLabel 6500 4650 1    50   Input ~ 0
-12V
Wire Wire Line
	6500 4650 6500 5000
Text HLabel 10500 4600 1    50   Input ~ 0
-12V
Wire Wire Line
	10500 4600 10500 5000
Connection ~ 10500 5000
Connection ~ 6500 5000
Connection ~ 1900 5000
Text HLabel 2900 5900 3    50   Input ~ 0
GND
Wire Wire Line
	2900 5900 2900 5700
Text HLabel 6500 5900 3    50   Input ~ 0
GND
Wire Wire Line
	6500 5900 6500 5700
Text HLabel 10500 5900 3    50   Input ~ 0
GND
Wire Wire Line
	10500 5900 10500 5700
Wire Wire Line
	5850 2900 6100 2900
$Comp
L Connector:TestPoint TP_OFF1
U 1 1 5BCAA241
P 2150 2550
F 0 "TP_OFF1" H 2207 2669 50  0000 L CNN
F 1 "TestPoint" H 2207 2580 50  0000 L CNN
F 2 "" H 2350 2550 50  0001 C CNN
F 3 "~" H 2350 2550 50  0001 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2550 2150 2700
Connection ~ 2150 2700
$EndSCHEMATC
