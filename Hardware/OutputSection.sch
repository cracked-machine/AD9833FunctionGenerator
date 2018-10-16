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
$Comp
L Device:R R_MIX2
U 1 1 5BBE4770
P 4300 3450
F 0 "R_MIX2" V 4200 3550 50  0000 R CNN
F 1 "1K" V 4300 3500 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 3450 50  0001 C CNN
F 3 "~" H 4300 3450 50  0001 C CNN
	1    4300 3450
	1    0    0    1   
$EndComp
$Comp
L Device:R R_MIX1
U 1 1 5BBE4777
P 3550 2800
F 0 "R_MIX1" V 3450 2900 50  0000 R CNN
F 1 "1K" V 3550 2850 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 2800 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	0    -1   1    0   
$EndComp
Wire Wire Line
	5100 5000 4950 5000
Wire Wire Line
	2050 2900 1800 2900
Wire Wire Line
	1800 2900 1800 3300
Wire Wire Line
	2850 3300 2850 2800
Wire Wire Line
	1350 2700 2050 2700
Wire Wire Line
	3500 5000 3650 5000
$Comp
L Device:R R_ISO1
U 1 1 5BBE47A5
P 9250 2900
F 0 "R_ISO1" V 9050 2900 50  0000 C CNN
F 1 "600R 1%" V 9150 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9180 2900 50  0001 C CNN
F 3 "~" H 9250 2900 50  0001 C CNN
	1    9250 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM RV_UPOFF1
U 1 1 5BBE47B6
P 4800 5000
F 0 "RV_UPOFF1" V 4650 5000 50  0000 C CNN
F 1 "100K" V 4550 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-H_Horizontal" H 4800 5000 50  0001 C CNN
F 3 "~" H 4800 5000 50  0001 C CNN
F 4 "652-3296Y-1-104LF" H -650 3650 50  0001 C CNN "MouserPartNo"
	1    4800 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 4850 4800 4800
Wire Wire Line
	4800 4800 4600 4800
Wire Wire Line
	4600 4800 4600 5000
Wire Wire Line
	4600 5000 4650 5000
Wire Wire Line
	3800 4800 4000 4800
Wire Wire Line
	4000 4800 4000 5000
Connection ~ 4000 5000
Wire Wire Line
	4000 5000 3950 5000
Wire Wire Line
	3800 4800 3800 4850
Connection ~ 4600 5000
$Comp
L Device:C C_GAIN1
U 1 1 5BBE4804
P 6850 3150
F 0 "C_GAIN1" H 6400 3150 50  0000 L CNN
F 1 "470pF" H 6450 3050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6888 3000 50  0001 C CNN
F 3 "~" H 6850 3150 50  0001 C CNN
	1    6850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3000 6850 2800
$Comp
L Device:R_POT_Dual_Separate RV_AMP1
U 1 1 5BBE4847
P 4300 5000
F 0 "RV_AMP1" V 4150 5150 50  0000 R CNN
F 1 "B10K" V 4050 5050 50  0000 R CNN
F 2 "PTH901:PTH901" H 4300 5000 50  0001 C CNN
F 3 "~" H 4300 5000 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -700 3300 50  0001 C CNN "MouserPartNo"
	1    4300 5000
	0    1    -1   0   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV_AMP1
U 2 1 5BBE484F
P 6050 2800
F 0 "RV_AMP1" V 5936 2800 50  0000 C CNN
F 1 "B10K" V 5847 2800 50  0000 C CNN
F 2 "PTH901:PTH901" H 6050 2800 50  0001 C CNN
F 3 "~" H 6050 2800 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -3450 -1150 50  0001 C CNN "MouserPartNo"
	2    6050 2800
	0    1    1    0   
$EndComp
Text HLabel 1350 2700 0    50   Input ~ 0
SIGIN
Text HLabel 5100 4450 1    50   Input ~ 0
+12V
Text HLabel 3500 4450 1    50   Input ~ 0
-12V
Text HLabel 9700 2900 2    50   Input ~ 0
SIGOUT
Wire Wire Line
	9700 2900 9400 2900
Wire Wire Line
	4450 5000 4600 5000
Wire Wire Line
	4000 5000 4150 5000
$Comp
L Device:C C_GAINBP?
U 1 1 5BC85CD1
P 8250 5350
AR Path="/5BC85CD1" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CD1" Ref="C_MIXBP2"  Part="1" 
F 0 "C_MIXBP2" H 8000 5450 50  0000 C CNN
F 1 "100nF" H 8000 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8288 5200 50  0001 C CNN
F 3 "~" H 8250 5350 50  0001 C CNN
	1    8250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_GAINBP?
U 1 1 5BC85CDF
P 9250 5350
AR Path="/5BC85CDF" Ref="C_GAINBP?"  Part="1" 
AR Path="/5BBD761F/5BC85CDF" Ref="C_MIXBP3"  Part="1" 
F 0 "C_MIXBP3" H 8950 5450 50  0000 C CNN
F 1 "100nF" H 9000 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9288 5200 50  0001 C CNN
F 3 "~" H 9250 5350 50  0001 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5200 9250 5000
Wire Wire Line
	8250 5200 8250 5000
Wire Wire Line
	8250 5500 8250 5700
Wire Wire Line
	9250 5700 9250 5500
Connection ~ 9250 5700
$Comp
L Device:R_POT_TRIM RV_LOWOFF1
U 1 1 5BBE47BE
P 3800 5000
F 0 "RV_LOWOFF1" V 3650 5000 50  0000 C CNN
F 1 "100K" V 3550 5000 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-H_Horizontal" H 3800 5000 50  0001 C CNN
F 3 "~" H 3800 5000 50  0001 C CNN
F 4 "652-3296Y-1-104LF" H -1650 2950 50  0001 C CNN "MouserPartNo"
	1    3800 5000
	0    1    -1   0   
$EndComp
Text HLabel 6850 3500 3    50   Input ~ 0
AGND
Wire Wire Line
	6850 3500 6850 3300
Wire Wire Line
	6850 2800 7750 2800
Connection ~ 7750 2800
Wire Wire Line
	7750 2800 8100 2800
Text HLabel 7750 3500 3    50   Input ~ 0
AGND
Wire Wire Line
	7750 3500 7750 3000
Wire Wire Line
	7750 3000 8100 3000
Connection ~ 4300 2800
Text HLabel 8250 4600 1    50   Input ~ 0
+12V
Wire Wire Line
	8250 4600 8250 5000
Connection ~ 8250 5000
Text HLabel 9250 4600 1    50   Input ~ 0
-12V
Wire Wire Line
	9250 4600 9250 5000
Connection ~ 9250 5000
Text HLabel 9250 5900 3    50   Input ~ 0
AGND
Wire Wire Line
	9250 5900 9250 5700
$Comp
L Connector:TestPoint TP_OFF1
U 1 1 5BCAA241
P 3800 3950
F 0 "TP_OFF1" V 4000 4050 50  0000 L CNN
F 1 "TestPoint" V 3900 4050 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 4000 3950 50  0001 C CNN
F 3 "~" H 4000 3950 50  0001 C CNN
	1    3800 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_LOFF1
U 1 1 5BBDB6A3
P 3500 4750
F 0 "R_LOFF1" H 3100 4800 50  0000 L CNN
F 1 "1K" H 3100 4700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 4750 50  0001 C CNN
F 3 "~" H 3500 4750 50  0001 C CNN
	1    3500 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_HIOFF1
U 1 1 5BBDB715
P 5100 4750
F 0 "R_HIOFF1" H 5170 4795 50  0000 L CNN
F 1 "1K" H 5170 4706 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5030 4750 50  0001 C CNN
F 3 "~" H 5100 4750 50  0001 C CNN
	1    5100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4450 3500 4600
Wire Wire Line
	3500 4900 3500 5000
Wire Wire Line
	5100 4600 5100 4450
Wire Wire Line
	5100 4900 5100 5000
$Comp
L Device:R RF1
U 1 1 5BC04D4E
P 2350 3300
F 0 "RF1" V 2146 3300 50  0000 C CNN
F 1 "1k" V 2235 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2280 3300 50  0001 C CNN
F 3 "~" H 2350 3300 50  0001 C CNN
	1    2350 3300
	0    1    -1   0   
$EndComp
Wire Wire Line
	2200 3300 1800 3300
Wire Wire Line
	2500 3300 2850 3300
Wire Wire Line
	2650 2800 2850 2800
Connection ~ 2850 2800
Wire Wire Line
	2850 2800 3400 2800
$Comp
L Device:R RG1
U 1 1 5BC2C675
P 1800 3550
F 0 "RG1" H 1730 3505 50  0000 R CNN
F 1 "1k" H 1730 3594 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1730 3550 50  0001 C CNN
F 3 "~" H 1800 3550 50  0001 C CNN
	1    1800 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	1800 3400 1800 3300
Connection ~ 1800 3300
Wire Wire Line
	6200 2800 6850 2800
Connection ~ 6850 2800
Wire Wire Line
	5900 2800 5600 2800
Wire Wire Line
	6050 2950 6050 3150
Wire Wire Line
	6050 3150 5600 3150
Wire Wire Line
	5600 3150 5600 2800
Connection ~ 5600 2800
Wire Wire Line
	7750 2000 7750 2800
Wire Wire Line
	8700 2900 8800 2900
$Comp
L Device:R RF2
U 1 1 5BC73BF4
P 8300 2000
F 0 "RF2" V 8096 2000 50  0000 C CNN
F 1 "8K2" V 8185 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8230 2000 50  0001 C CNN
F 3 "~" H 8300 2000 50  0001 C CNN
	1    8300 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2000 8150 2000
Wire Wire Line
	8450 2000 8800 2000
Wire Wire Line
	8800 2000 8800 2900
Connection ~ 8800 2900
Wire Wire Line
	8800 2900 9100 2900
Wire Wire Line
	4300 2800 5600 2800
Wire Wire Line
	4300 2800 4300 3300
Wire Wire Line
	4300 3600 4300 3950
Wire Wire Line
	3800 3950 4300 3950
Connection ~ 4300 3950
Wire Wire Line
	4300 3950 4300 4850
Text HLabel 1800 3700 3    50   Input ~ 0
AGND
Wire Wire Line
	9050 5000 9250 5000
Wire Wire Line
	8250 5000 8450 5000
Wire Wire Line
	8250 5700 9250 5700
Wire Wire Line
	3700 2800 4300 2800
Text HLabel 1700 1900 0    50   Input ~ 0
OFFSETADJUST
$Comp
L Device:R R_MIX3
U 1 1 5BCB6909
P 4300 2450
F 0 "R_MIX3" H 4370 2495 50  0000 L CNN
F 1 "1K" H 4370 2406 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4230 2450 50  0001 C CNN
F 3 "~" H 4300 2450 50  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2300 4300 1900
Wire Wire Line
	4300 1900 1700 1900
Wire Wire Line
	4300 2600 4300 2800
Text Notes 4425 4575 0    50   ~ 0
User Offset\n
Text Notes 1750 1800 0    50   ~ 0
MCU Offset\n
Text Notes 5625 2425 0    50   ~ 0
User Gain
$Comp
L Amplifier_Custom:LM7171 U_BUFF1
U 1 1 5BC53321
P 2350 2800
F 0 "U_BUFF1" H 2350 3167 50  0000 C CNN
F 1 "LM7171" H 2350 3076 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2350 2800 50  0001 C CNN
F 3 "" H 2350 2800 50  0001 C CNN
	1    2350 2800
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Custom:LM7171 U_MIX1
U 1 1 5BC533CE
P 8400 2900
F 0 "U_MIX1" H 8400 2422 50  0000 C CNN
F 1 "LM7171" H 8400 2513 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8400 2900 50  0001 C CNN
F 3 "" H 8400 2900 50  0001 C CNN
	1    8400 2900
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Custom:LM7171 U_MIX1
U 2 1 5BC5347A
P 8750 4900
F 0 "U_MIX1" V 8845 4900 50  0000 C CNN
F 1 "LM7171" V 8754 4900 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8750 4900 50  0001 C CNN
F 3 "" H 8750 4900 50  0001 C CNN
	2    8750 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_MIXBP?
U 1 1 5BC7A089
P 7550 5350
AR Path="/5BC7A089" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC7A089" Ref="C_MIXBP1"  Part="1" 
F 0 "C_MIXBP1" H 7300 5450 50  0000 C CNN
F 1 "2.2uF" H 7300 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7588 5200 50  0001 C CNN
F 3 "~" H 7550 5350 50  0001 C CNN
	1    7550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5200 7550 5000
Wire Wire Line
	7550 5500 7550 5700
Wire Wire Line
	7550 5000 8250 5000
Wire Wire Line
	7550 5700 8250 5700
Connection ~ 8250 5700
$Comp
L Device:C C_MIXBP?
U 1 1 5BC7ED23
P 9950 5350
AR Path="/5BC7ED23" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC7ED23" Ref="C_MIXBP4"  Part="1" 
F 0 "C_MIXBP4" H 10250 5450 50  0000 C CNN
F 1 "2.2uF" H 10250 5300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9988 5200 50  0001 C CNN
F 3 "~" H 9950 5350 50  0001 C CNN
	1    9950 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9950 5200 9950 5000
Wire Wire Line
	9950 5500 9950 5700
Wire Wire Line
	9950 5000 9250 5000
Wire Wire Line
	9950 5700 9250 5700
$Comp
L Device:C C_MIXBP?
U 1 1 5BC87C97
P 2350 6700
AR Path="/5BC87C97" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC87C97" Ref="C_BUFFBP2"  Part="1" 
F 0 "C_BUFFBP2" H 2100 6800 50  0000 C CNN
F 1 "100nF" H 2100 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 6550 50  0001 C CNN
F 3 "~" H 2350 6700 50  0001 C CNN
	1    2350 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_MIXBP?
U 1 1 5BC87C9D
P 3350 6700
AR Path="/5BC87C9D" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC87C9D" Ref="C_BUFFBP3"  Part="1" 
F 0 "C_BUFFBP3" H 3050 6800 50  0000 C CNN
F 1 "100nF" H 3100 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3388 6550 50  0001 C CNN
F 3 "~" H 3350 6700 50  0001 C CNN
	1    3350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6550 3350 6350
Wire Wire Line
	2350 6550 2350 6350
Wire Wire Line
	2350 6850 2350 7050
Wire Wire Line
	3350 7050 3350 6850
Connection ~ 3350 7050
Text HLabel 2350 5950 1    50   Input ~ 0
+12V
Wire Wire Line
	2350 5950 2350 6350
Connection ~ 2350 6350
Text HLabel 3350 5950 1    50   Input ~ 0
-12V
Wire Wire Line
	3350 5950 3350 6350
Connection ~ 3350 6350
Text HLabel 3350 7250 3    50   Input ~ 0
AGND
Wire Wire Line
	3350 7250 3350 7050
Wire Wire Line
	3150 6350 3350 6350
Wire Wire Line
	2350 6350 2550 6350
Wire Wire Line
	2350 7050 3350 7050
$Comp
L Amplifier_Custom:LM7171 U_BUFF1
U 2 1 5BC87CB3
P 2850 6250
F 0 "U_BUFF1" V 2945 6250 50  0000 C CNN
F 1 "LM7171" V 2854 6250 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2850 6250 50  0001 C CNN
F 3 "" H 2850 6250 50  0001 C CNN
	2    2850 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_MIXBP?
U 1 1 5BC87CB9
P 1650 6700
AR Path="/5BC87CB9" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC87CB9" Ref="C_BUFFBP1"  Part="1" 
F 0 "C_BUFFBP1" H 1400 6800 50  0000 C CNN
F 1 "2.2uF" H 1400 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1688 6550 50  0001 C CNN
F 3 "~" H 1650 6700 50  0001 C CNN
	1    1650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6550 1650 6350
Wire Wire Line
	1650 6850 1650 7050
Wire Wire Line
	1650 6350 2350 6350
Wire Wire Line
	1650 7050 2350 7050
Connection ~ 2350 7050
$Comp
L Device:C C_MIXBP?
U 1 1 5BC87CC4
P 4050 6700
AR Path="/5BC87CC4" Ref="C_MIXBP?"  Part="1" 
AR Path="/5BBD761F/5BC87CC4" Ref="C_BUFFBP4"  Part="1" 
F 0 "C_BUFFBP4" H 4350 6800 50  0000 C CNN
F 1 "2.2uF" H 4350 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4088 6550 50  0001 C CNN
F 3 "~" H 4050 6700 50  0001 C CNN
	1    4050 6700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 6550 4050 6350
Wire Wire Line
	4050 6850 4050 7050
Wire Wire Line
	4050 6350 3350 6350
Wire Wire Line
	4050 7050 3350 7050
$Comp
L Device:C CF2
U 1 1 5BC8B380
P 8300 1350
F 0 "CF2" V 8048 1350 50  0000 C CNN
F 1 "2pF" V 8139 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8338 1200 50  0001 C CNN
F 3 "~" H 8300 1350 50  0001 C CNN
	1    8300 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1350 7750 1350
Wire Wire Line
	7750 1350 7750 2000
Connection ~ 7750 2000
Wire Wire Line
	8450 1350 8800 1350
Wire Wire Line
	8800 1350 8800 2000
Connection ~ 8800 2000
$EndSCHEMATC
