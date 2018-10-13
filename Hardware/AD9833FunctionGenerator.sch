EESchema Schematic File Version 4
LIBS:AD9833FunctionGenerator-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L AD9833FunctionGenerator-rescue:Conn_01x07 J_AD9833
U 1 1 5B8B29C3
P 3900 1950
F 0 "J_AD9833" H 3900 2500 50  0000 C CNN
F 1 "Conn_01x07" H 3900 2400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 3900 1950 50  0001 C CNN
F 3 "" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1650 2650 1650
Text Label 2450 1650 0    50   ~ 0
GND
Wire Wire Line
	9300 3950 9300 3750
Text Label 9300 3750 2    50   ~ 0
5V
$Comp
L Device:CP C1
U 1 1 5B8B3473
P 1250 2550
F 0 "C1" H 1275 2650 50  0000 L CNN
F 1 "330nF" H 1275 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1288 2400 50  0001 C CNN
F 3 "" H 1250 2550 50  0001 C CNN
	1    1250 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5B8B34AC
P 2350 2550
F 0 "C2" H 2375 2650 50  0000 L CNN
F 1 "100nF" H 2375 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 2400 50  0001 C CNN
F 3 "" H 2350 2550 50  0001 C CNN
	1    2350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2200 1250 2400
Wire Wire Line
	2050 2200 2350 2200
Wire Wire Line
	2350 2200 2350 2400
Wire Wire Line
	1750 2500 1750 2800
Wire Wire Line
	1250 2700 1250 2800
Wire Wire Line
	1250 2800 1750 2800
Connection ~ 1750 2800
Wire Wire Line
	2350 2800 2350 2700
Text Label 2600 1450 2    50   ~ 0
+12V
Connection ~ 2350 2200
Text Label 2650 2200 2    50   ~ 0
5V
Wire Wire Line
	9900 5450 10100 5450
Wire Wire Line
	9900 5350 10100 5350
Text Label 10100 5450 2    50   ~ 0
SCL
Text Label 10100 5350 2    50   ~ 0
SDA
Wire Wire Line
	9400 5950 9400 6050
Text Label 9400 6250 2    50   ~ 0
GND
Wire Wire Line
	8900 5350 8450 5350
Text Label 8450 5350 0    50   ~ 0
DDS_CS
Wire Wire Line
	8900 5450 8450 5450
Text Label 8450 5450 0    50   ~ 0
MOSI
Wire Wire Line
	8900 5650 8450 5650
Text Label 8450 5650 0    50   ~ 0
SCK
Wire Wire Line
	3700 1750 3250 1750
Wire Wire Line
	3700 1850 3250 1850
Wire Wire Line
	3700 1950 3250 1950
Wire Wire Line
	3700 2050 3250 2050
Wire Wire Line
	3700 2150 3250 2150
Wire Wire Line
	3700 2250 3250 2250
Text Notes 4000 2300 0    63   ~ 0
REF\nVCC\nGND\nDAT\nCLK\nFNC\nOUT
NoConn ~ 3700 1650
Text Label 3250 1750 0    50   ~ 0
5V
Text Label 3250 1850 0    50   ~ 0
GND
Text Label 3250 1950 0    50   ~ 0
MOSI
Text Label 3250 2050 0    50   ~ 0
SCK
Text Label 3250 2150 0    50   ~ 0
DDS_CS
Text Label 3250 2250 0    50   ~ 0
DDS_SIG
Wire Wire Line
	1250 2200 1450 2200
Wire Wire Line
	1750 2800 2350 2800
Wire Wire Line
	2350 2200 2650 2200
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5BA958E1
P 1750 2200
F 0 "U1" H 1750 2439 50  0000 C CNN
F 1 "LM7805_TO220" H 1750 2350 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1750 2425 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 1750 2150 50  0001 C CNN
F 4 "926-LM7805CT/NOPB" H -1250 700 50  0001 C CNN "MouserPartNo"
	1    1750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5050 10200 5050
Wire Wire Line
	9900 4950 10200 4950
Wire Wire Line
	2150 6100 2750 6100
Wire Wire Line
	2750 5900 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	2750 6100 3350 6100
Text Label 2750 5900 2    50   ~ 0
5V
Wire Wire Line
	2150 6700 2750 6700
Wire Wire Line
	2750 6700 2750 6950
Connection ~ 2750 6700
Wire Wire Line
	2750 6700 3350 6700
Text Label 2750 6950 2    50   ~ 0
AGND
Text Label 2850 6400 0    50   ~ 0
FREQ1
Text Label 2650 6400 2    50   ~ 0
FREQ2
Text Label 10200 4950 2    50   ~ 0
FREQ1
Text Label 10200 5050 2    50   ~ 0
FREQ2
Wire Wire Line
	8900 4550 8450 4550
Text Label 8450 4550 0    50   ~ 0
WAVEBTN
Wire Wire Line
	8900 4650 8450 4650
Text Label 8450 4650 0    50   ~ 0
MODEBTN
Text Label 4850 5500 2    50   ~ 0
AGND
Text Label 4850 4200 2    50   ~ 0
5V
Wire Wire Line
	5000 4600 5400 4600
Text Label 5400 4600 2    50   ~ 0
VEL1
Wire Wire Line
	9900 5550 10125 5550
Text Label 10125 5550 2    50   ~ 0
VEL1
$Comp
L Device:R R_VEL1
U 1 1 5BB29D66
P 4850 5050
F 0 "R_VEL1" H 5200 5000 50  0000 C CNN
F 1 "100R" H 5250 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 5050 50  0001 C CNN
F 3 "~" H 4850 5050 50  0001 C CNN
	1    4850 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1850 2650 1850
Text Label 2600 1850 2    50   ~ 0
-12V
Text Label 5200 1850 0    50   ~ 0
DDS_SIG
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BB589B5
P 2650 1450
F 0 "#FLG0101" H 2650 1525 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 1600 50  0001 L CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BB5C39F
P 2650 1650
F 0 "#FLG0102" H 2650 1725 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 1800 50  0001 L CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
	1    2650 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1450 2650 1450
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5BB669DD
P 2650 1850
F 0 "#FLG0103" H 2650 1925 50  0001 C CNN
F 1 "PWR_FLAG" V 2650 2000 50  0001 L CNN
F 2 "" H 2650 1850 50  0001 C CNN
F 3 "~" H 2650 1850 50  0001 C CNN
	1    2650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2200 950  2200
Connection ~ 1250 2200
Text Label 950  2200 0    50   ~ 0
+12V
$Comp
L Connector_Generic:Conn_01x02 J_OUT1
U 1 1 5BB86F40
P 10700 2050
F 0 "J_OUT1" H 10550 2200 50  0000 L CNN
F 1 "Conn_01x02" H 10780 1951 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10700 2050 50  0001 C CNN
F 3 "~" H 10700 2050 50  0001 C CNN
	1    10700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2150 10350 2150
Text Label 10350 2800 2    50   ~ 0
AGND
Wire Wire Line
	2300 1650 2300 1550
Wire Wire Line
	2300 1550 2050 1550
Wire Wire Line
	2300 1650 2300 1750
Wire Wire Line
	2300 1750 2050 1750
Connection ~ 2300 1650
Wire Wire Line
	2300 1650 2050 1650
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J_PWR1
U 1 1 5BBA34EF
P 1750 1650
F 0 "J_PWR1" H 1800 2067 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1800 1976 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1750 1650 50  0001 C CNN
F 3 "~" H 1750 1650 50  0001 C CNN
	1    1750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1450 900  1450
Wire Wire Line
	1550 1550 1450 1550
Wire Wire Line
	900  1650 1450 1650
Wire Wire Line
	1450 1750 1550 1750
Wire Wire Line
	900  1850 1550 1850
Text Label 900  1450 0    50   ~ 0
+12V
Text Label 900  1650 0    50   ~ 0
AGND
Text Label 900  1850 0    50   ~ 0
-12V
Wire Wire Line
	8900 4850 8450 4850
Text Label 8450 4850 0    50   ~ 0
RANGEBTN
Wire Wire Line
	6500 1850 5200 1850
$Comp
L Potentiometer_Digital:MCP42050 U_POT1
U 1 1 5BB5DA86
P 7000 2150
F 0 "U_POT1" H 6600 2800 50  0000 C CNN
F 1 "MCP42050" H 6600 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7000 2250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11195c.pdf" H 7000 2250 50  0001 C CNN
F 4 "579-MCP42050-I/SL" H 1150 -2950 50  0001 C CNN "MouserPartNo"
	1    7000 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 1850 7700 1850
Text Label 7700 1850 2    50   ~ 0
SCK
Wire Wire Line
	7500 1950 7700 1950
Text Label 7700 1950 2    50   ~ 0
MOSI
NoConn ~ 7500 2050
Wire Wire Line
	7500 2150 7750 2150
Text Label 7750 2150 2    50   ~ 0
POT_CS
Wire Wire Line
	8900 5250 8450 5250
Text Label 8450 5250 0    50   ~ 0
POT_CS
Wire Wire Line
	7500 2350 7600 2350
Wire Wire Line
	7500 2450 7600 2450
Wire Wire Line
	7000 1650 7000 1450
Text Label 7000 1300 2    50   ~ 0
5V
Wire Wire Line
	7000 2650 7000 2800
Text Label 7000 2800 2    50   ~ 0
GND
Wire Wire Line
	7600 2450 7600 2350
Connection ~ 7600 2350
Wire Wire Line
	7600 2350 7750 2350
Text Label 7750 2350 2    50   ~ 0
5V
Wire Wire Line
	5200 1950 6500 1950
Wire Wire Line
	10350 2150 10350 2800
Wire Wire Line
	10150 2050 10500 2050
Wire Wire Line
	1450 1550 1450 1650
Connection ~ 1450 1650
Wire Wire Line
	1450 1650 1550 1650
Wire Wire Line
	1450 1650 1450 1750
$Comp
L Device:R_POT_Dual_Separate RV_FREQ1
U 1 1 5BF200DE
P 2150 6400
F 0 "RV_FREQ1" H 2050 6400 50  0000 R CNN
F 1 "B10K" H 1850 6500 50  0000 R CNN
F 2 "PTH901:PTH901" H 2150 6400 50  0001 C CNN
F 3 "~" H 2150 6400 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -1600 -650 50  0001 C CNN "MouserPartNo"
	1    2150 6400
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV_FREQ1
U 2 1 5BF20191
P 3350 6400
F 0 "RV_FREQ1" H 3250 6400 50  0000 R CNN
F 1 "B10K" H 3250 6500 50  0000 R CNN
F 2 "PTH901:PTH901" H 3350 6400 50  0001 C CNN
F 3 "~" H 3350 6400 50  0001 C CNN
F 4 "652-PTH901-030S-103B" H -1900 -650 50  0001 C CNN "MouserPartNo"
	2    3350 6400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 6100 2150 6250
Wire Wire Line
	2150 6700 2150 6550
Wire Wire Line
	3350 6700 3350 6550
Wire Wire Line
	3350 6100 3350 6250
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5BBCCF3E
P 9400 4950
F 0 "A1" H 8650 6100 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 8700 6000 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 9550 4000 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 9400 3950 50  0001 C CNN
	1    9400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3950 9500 3750
Text Label 9500 3750 3    50   ~ 0
AREF
Wire Wire Line
	9900 4750 10150 4750
Text Label 10150 4750 2    50   ~ 0
AREF
Wire Wire Line
	9500 5950 9500 6050
Wire Wire Line
	9500 6050 9400 6050
Connection ~ 9400 6050
Wire Wire Line
	9400 6050 9400 6250
NoConn ~ 8900 4350
NoConn ~ 8900 4450
NoConn ~ 8900 4750
NoConn ~ 8900 4950
NoConn ~ 8900 5050
NoConn ~ 8900 5150
NoConn ~ 8900 5550
NoConn ~ 9900 5150
NoConn ~ 9900 5250
NoConn ~ 9900 5650
NoConn ~ 9900 4450
NoConn ~ 9900 4350
NoConn ~ 9600 3950
Text Label 5200 1950 0    50   ~ 0
DDS_REDUX
Wire Wire Line
	4850 5200 4850 5500
$Comp
L Device:R_POT_Dual_Separate RV_TIME1
U 1 1 5C779514
P 4850 4600
F 0 "RV_TIME1" H 4750 4550 50  0000 R CNN
F 1 "B10K" H 4550 4650 50  0000 R CNN
F 2 "PTH901:PTH901" H 4850 4600 50  0001 C CNN
F 3 "~" H 4850 4600 50  0001 C CNN
	1    4850 4600
	1    0    0    1   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV_TIME1
U 2 1 5C79DB8E
P 4850 6400
F 0 "RV_TIME1" H 4750 6450 50  0000 R CNN
F 1 "B10K" H 4550 6350 50  0000 R CNN
F 2 "PTH901:PTH901" H 4850 6400 50  0001 C CNN
F 3 "~" H 4850 6400 50  0001 C CNN
	2    4850 6400
	1    0    0    -1  
$EndComp
$Sheet
S 2050 3900 1400 1600
U 5C156641
F0 "AuxiliaryBoard" 50
F1 "AuxiliaryBoard.sch" 50
F2 "5V" I R 3450 4500 50 
F3 "GND" I R 3450 4950 50 
F4 "RANGEBTN" I L 2050 4100 50 
F5 "MODEBTN" I L 2050 4400 50 
F6 "WAVEBTN" I L 2050 4700 50 
F7 "SCL" I L 2050 5300 50 
F8 "SDA" I L 2050 5000 50 
$EndSheet
$Sheet
S 9100 1450 1050 1100
U 5BBD761F
F0 "OutputSection" 50
F1 "OutputSection.sch" 50
F2 "SIGIN" I L 9100 2050 50 
F3 "+12V" I L 9100 1550 50 
F4 "-12V" I L 9100 1650 50 
F5 "SIGOUT" I R 10150 2050 50 
F6 "AGND" I L 9100 2450 50 
F7 "OFFSETADJUST" I L 9100 1850 50 
$EndSheet
Text Label 1750 3100 2    50   ~ 0
GND
Wire Wire Line
	1750 2800 1750 3100
Wire Wire Line
	9100 2450 8850 2450
Wire Wire Line
	8850 2450 8850 2800
Text Label 8850 2800 2    50   ~ 0
AGND
Wire Wire Line
	9100 1550 8950 1550
Wire Wire Line
	8950 1550 8950 1300
Text Label 8950 1300 2    50   ~ 0
+12V
Wire Wire Line
	9100 1650 8700 1650
Wire Wire Line
	8700 1650 8700 1300
Text Label 8700 1300 2    50   ~ 0
-12V
Wire Wire Line
	2850 6400 3200 6400
Wire Wire Line
	2300 6400 2650 6400
Wire Notes Line
	3150 1000 3150 2800
Wire Notes Line
	4300 2800 4300 1000
Wire Notes Line
	4300 1000 3150 1000
Wire Notes Line
	10900 3100 10900 1000
Wire Notes Line
	10900 1000 8400 1000
Wire Notes Line
	8400 1000 8400 3100
Wire Notes Line
	8400 3100 10900 3100
Wire Notes Line
	700  1000 700  3200
Wire Notes Line
	700  3200 2900 3200
Wire Notes Line
	2900 3200 2900 1000
Wire Notes Line
	2900 1000 700  1000
Text Notes 3150 950  0    50   ~ 0
DDS Signal Generation
Text Notes 8400 950  0    50   ~ 0
Output Amplifier Section
Text Notes 700  950  0    50   ~ 0
Power Supply Section
Wire Notes Line
	8200 3600 10400 3600
Wire Notes Line
	10400 3600 10400 6400
Wire Notes Line
	10400 6400 8200 6400
Wire Notes Line
	8200 6400 8200 3600
Wire Wire Line
	4850 4750 4850 4900
Wire Wire Line
	4850 4200 4850 4450
Wire Wire Line
	4850 6250 4850 6100
Wire Wire Line
	5000 6400 5150 6400
Wire Wire Line
	4850 6550 4850 6700
NoConn ~ 4850 6100
NoConn ~ 4850 6700
NoConn ~ 5150 6400
Wire Notes Line
	1450 7250 5550 7250
Wire Notes Line
	5550 7250 5550 3600
Wire Notes Line
	5550 3600 1450 3600
Wire Notes Line
	1450 3600 1450 7250
Text Notes 1450 3550 0    50   ~ 0
Peripheral Controls section
Wire Wire Line
	2050 4700 1600 4700
Text Label 1600 4700 0    50   ~ 0
WAVEBTN
Wire Wire Line
	2050 4400 1600 4400
Text Label 1600 4400 0    50   ~ 0
MODEBTN
Wire Wire Line
	2050 4100 1600 4100
Text Label 1600 4100 0    50   ~ 0
RANGEBTN
Wire Wire Line
	2050 5000 1850 5000
Text Label 1850 5000 0    50   ~ 0
SDA
Wire Wire Line
	2050 5300 1850 5300
Text Label 1850 5300 0    50   ~ 0
SCL
Text Label 3750 5500 2    50   ~ 0
GND
Wire Wire Line
	3750 4950 3750 5500
Wire Wire Line
	3450 4950 3750 4950
Wire Wire Line
	3450 4500 3750 4500
Wire Wire Line
	3750 4500 3750 3900
Text Label 3750 3900 2    50   ~ 0
5V
Wire Wire Line
	8500 2050 9100 2050
Text Label 8500 2050 0    50   ~ 0
DDS_REDUX
Wire Notes Line
	3150 2800 4300 2800
Wire Notes Line
	4800 1000 7900 1000
Wire Notes Line
	7900 1000 7900 3100
Wire Notes Line
	7900 3100 4800 3100
Wire Notes Line
	4800 3100 4800 1000
Text Notes 5600 950  0    50   ~ 0
Signal Compensation
Text Notes 8200 3550 0    50   ~ 0
Micocontroller
$Comp
L Device:C C_POTBP1
U 1 1 5BC0F1E8
P 6100 1450
F 0 "C_POTBP1" V 5851 1450 50  0000 C CNN
F 1 "100nF" V 5940 1450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6138 1300 50  0001 C CNN
F 3 "~" H 6100 1450 50  0001 C CNN
	1    6100 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1450 7000 1450
Connection ~ 7000 1450
Wire Wire Line
	7000 1450 7000 1300
Wire Wire Line
	5950 1450 5000 1450
Text Label 5000 2800 0    50   ~ 0
GND
Wire Wire Line
	6500 2450 6300 2450
Wire Wire Line
	6500 2350 5200 2350
$Comp
L Device:R ROFF1
U 1 1 5BC66CD0
P 6150 2250
F 0 "ROFF1" V 6050 2250 50  0000 C CNN
F 1 "1K" V 6150 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 2250 50  0001 C CNN
F 3 "~" H 6150 2250 50  0001 C CNN
	1    6150 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2250 6500 2250
$Comp
L Device:R ROFF2
U 1 1 5BC6A9D4
P 6150 2450
F 0 "ROFF2" V 6250 2450 50  0000 C CNN
F 1 "1K" V 6150 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 2450 50  0001 C CNN
F 3 "~" H 6150 2450 50  0001 C CNN
	1    6150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2250 5750 2250
Wire Wire Line
	5750 2250 5750 2150
Text Label 5750 2150 3    50   ~ 0
5V
Wire Wire Line
	6000 2450 5750 2450
Wire Wire Line
	5750 2450 5750 2625
Text Label 5750 2625 1    50   ~ 0
AGND
Text Label 5200 2350 0    50   ~ 0
OFFSETADJUST
Wire Wire Line
	9100 1850 8500 1850
Text Label 8500 1850 0    50   ~ 0
OFFSETADJUST
Wire Wire Line
	5000 1450 5000 2800
Text Label 5900 2200 1    50   ~ 0
AGND
Wire Wire Line
	5900 2050 5900 2200
Wire Wire Line
	5900 2050 6500 2050
$EndSCHEMATC
