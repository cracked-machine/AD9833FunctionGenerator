EESchema Schematic File Version 4
LIBS:AD9833FunctionGenerator-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L AD9833FunctionGenerator-rescue:Conn_01x15 J_TX1
U 1 1 5B8B26FC
P 2100 4000
F 0 "J_TX1" H 2100 4950 50  0000 C CNN
F 1 "Conn_01x15" H 2100 4850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 2100 4000 50  0001 C CNN
F 3 "" H 2100 4000 50  0001 C CNN
	1    2100 4000
	1    0    0    -1  
$EndComp
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x15 J_VIN1
U 1 1 5B8B271C
P 3100 4000
F 0 "J_VIN1" H 3100 4950 50  0000 C CNN
F 1 "Conn_01x15" H 3100 4850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 3100 4000 50  0001 C CNN
F 3 "" H 3100 4000 50  0001 C CNN
	1    3100 4000
	-1   0    0    -1  
$EndComp
Text Notes 2200 4700 0    63   ~ 0
TX\nRX\nRST\nGND\nD2\nD3\nD4\nD5\nD6\nD7\nD8\nD9\nD10\nD11\nD12
Text Notes 2800 4725 0    63   ~ 0
VIN\nGND\nRST\n5V\nA7\nA6\nA5\nA4\nA3\nA2\nA1\nA0\nAREF\n3V3\nD13
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x07 J_AD9833
U 1 1 5B8B29C3
P 5500 7175
F 0 "J_AD9833" H 5500 7725 50  0000 C CNN
F 1 "Conn_01x07" H 5500 7625 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x07_P2.54mm_Vertical" H 5500 7175 50  0001 C CNN
F 3 "" H 5500 7175 50  0001 C CNN
	1    5500 7175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1800 2200 1800
Text Label 2000 1800 0    50   ~ 0
GND
Wire Wire Line
	3300 3300 3600 3300
Text Label 3600 3300 2    50   ~ 0
5V
$Comp
L Device:CP C1
U 1 1 5B8B3473
P 2800 1800
F 0 "C1" H 2825 1900 50  0000 L CNN
F 1 "330nF" H 2825 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2838 1650 50  0001 C CNN
F 3 "" H 2800 1800 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5B8B34AC
P 3900 1800
F 0 "C2" H 3925 1900 50  0000 L CNN
F 1 "100nF" H 3925 1700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3938 1650 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1450 2800 1650
Wire Wire Line
	3600 1450 3900 1450
Wire Wire Line
	3900 1450 3900 1650
Wire Wire Line
	3300 1750 3300 2050
Wire Wire Line
	2800 1950 2800 2050
Wire Wire Line
	2800 2050 3300 2050
Connection ~ 3300 2050
Wire Wire Line
	3900 2050 3900 1950
Text Label 3300 2350 1    50   ~ 0
GND
Text Label 2150 1600 2    50   ~ 0
+12V
Connection ~ 3900 1450
Text Label 4200 1450 2    50   ~ 0
5V
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x04 J_OLED1
U 1 1 5B8B7CEB
P 3775 7000
F 0 "J_OLED1" H 3575 7350 50  0000 C CNN
F 1 "Conn_01x04" H 3600 7250 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3775 7000 50  0001 C CNN
F 3 "" H 3775 7000 50  0001 C CNN
	1    3775 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 6900 3575 6900
Text Label 3275 6900 0    50   ~ 0
GND
Wire Wire Line
	3575 7000 3275 7000
Text Label 3275 7000 0    50   ~ 0
5V
Wire Wire Line
	3575 7100 3275 7100
Text Label 3275 7100 0    50   ~ 0
SCL
Wire Wire Line
	3575 7200 3275 7200
Text Label 3275 7200 0    50   ~ 0
SDA
Wire Wire Line
	3300 3900 3600 3900
Wire Wire Line
	3300 4000 3600 4000
Text Label 3600 3900 2    50   ~ 0
SCL
Text Label 3600 4000 2    50   ~ 0
SDA
Wire Wire Line
	3300 3400 3600 3400
Text Label 3600 3400 2    50   ~ 0
GND
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x03 J_FREQ1
U 1 1 5B8BA2D4
P 4325 5975
F 0 "J_FREQ1" H 4275 5700 50  0000 C CNN
F 1 "Conn_01x03" H 4625 5925 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4325 5975 50  0001 C CNN
F 3 "" H 4325 5975 50  0001 C CNN
	1    4325 5975
	1    0    0    1   
$EndComp
Wire Wire Line
	1900 4500 1425 4500
Text Label 1425 4500 0    50   ~ 0
DDS_CS
Wire Wire Line
	1900 4600 1650 4600
Text Label 1650 4600 0    50   ~ 0
MOSI
Wire Wire Line
	3300 4700 3600 4700
Text Label 3600 4700 2    50   ~ 0
SCK
Wire Wire Line
	5300 6975 5000 6975
Wire Wire Line
	5300 7075 5000 7075
Wire Wire Line
	5300 7175 5000 7175
Wire Wire Line
	5300 7275 5000 7275
Wire Wire Line
	5300 7375 4800 7375
Wire Wire Line
	5300 7475 4650 7475
Text Notes 5600 7525 0    63   ~ 0
REF\nVCC\nGND\nDAT\nCLK\nFNC\nOUT
NoConn ~ 5300 6875
Text Label 5000 6975 0    50   ~ 0
5V
Text Label 5000 7075 0    50   ~ 0
GND
Text Label 5000 7175 0    50   ~ 0
MOSI
Text Label 5000 7275 0    50   ~ 0
SCK
Text Label 4800 7375 0    50   ~ 0
DDS_CS
Text Label 4650 7475 0    50   ~ 0
FUNCSIG
Wire Wire Line
	2800 1450 3000 1450
Wire Wire Line
	3300 2050 3300 2350
Wire Wire Line
	3300 2050 3900 2050
Wire Wire Line
	3900 1450 4200 1450
$Comp
L Regulator_Linear:LM7805_TO220 U1
U 1 1 5BA958E1
P 3300 1450
F 0 "U1" H 3300 1689 50  0000 C CNN
F 1 "LM7805_TO220" H 3300 1600 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3300 1675 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 3300 1400 50  0001 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4300 3600 4300
Wire Wire Line
	3300 4400 3600 4400
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x03 J_FREQ2
U 1 1 5BAAEFB8
P 2725 5975
F 0 "J_FREQ2" H 2650 5700 50  0000 C CNN
F 1 "Conn_01x03" H 3025 5925 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2725 5975 50  0001 C CNN
F 3 "" H 2725 5975 50  0001 C CNN
	1    2725 5975
	-1   0    0    1   
$EndComp
Wire Wire Line
	2925 5875 3525 5875
Wire Wire Line
	3525 5625 3525 5875
Connection ~ 3525 5875
Wire Wire Line
	3525 5875 4125 5875
Text Label 3525 5625 0    50   ~ 0
5V
Wire Wire Line
	2925 6075 3525 6075
Wire Wire Line
	3525 6075 3525 6425
Connection ~ 3525 6075
Wire Wire Line
	3525 6075 4125 6075
Text Label 3525 6425 1    50   ~ 0
GND
Wire Wire Line
	2925 5975 3225 5975
Wire Wire Line
	4125 5975 3875 5975
Text Label 3875 5975 0    50   ~ 0
FREQ1
Text Label 3225 5975 2    50   ~ 0
FREQ2
Text Label 3600 4400 2    50   ~ 0
FREQ1
Text Label 3600 4300 2    50   ~ 0
FREQ2
$Comp
L Switch:SW_SPST SW_MODE1
U 1 1 5BADFFB9
P 1550 6600
F 0 "SW_MODE1" H 1550 6831 50  0000 C CNN
F 1 "SW_SPST" H 1550 6742 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1550 6600 50  0001 C CNN
F 3 "" H 1550 6600 50  0001 C CNN
	1    1550 6600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW_FUNC1
U 1 1 5BAE004A
P 1550 7250
F 0 "SW_FUNC1" H 1550 7481 50  0000 C CNN
F 1 "SW_SPST" H 1550 7392 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1550 7250 50  0001 C CNN
F 3 "" H 1550 7250 50  0001 C CNN
	1    1550 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6600 1000 6600
Wire Wire Line
	1350 7250 1000 7250
Wire Wire Line
	1000 7250 1000 6600
Connection ~ 1000 6600
Wire Wire Line
	1000 6600 1000 5950
Text Label 1000 5750 3    50   ~ 0
5V
Wire Wire Line
	2300 6600 2300 7250
$Comp
L Device:R R_MODE1
U 1 1 5BAED996
P 2100 6600
F 0 "R_MODE1" V 1896 6600 50  0000 C CNN
F 1 "1K" V 1985 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 6600 50  0001 C CNN
F 3 "~" H 2100 6600 50  0001 C CNN
	1    2100 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R_FUNC1
U 1 1 5BAEDA4A
P 2100 7250
F 0 "R_FUNC1" V 1896 7250 50  0000 C CNN
F 1 "1K" V 1985 7250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 7250 50  0001 C CNN
F 3 "~" H 2100 7250 50  0001 C CNN
	1    2100 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 6600 2300 6600
Wire Wire Line
	2250 7250 2300 7250
Connection ~ 2300 7250
Wire Wire Line
	2300 7250 2300 7450
Wire Wire Line
	1950 7250 1850 7250
Wire Wire Line
	1950 6600 1850 6600
Text Label 2300 7450 1    50   ~ 0
GND
Wire Wire Line
	1850 7250 1850 6700
Connection ~ 1850 7250
Wire Wire Line
	1850 7250 1750 7250
Wire Wire Line
	1850 6600 1850 6050
Connection ~ 1850 6600
Wire Wire Line
	1850 6600 1750 6600
Text Label 1850 6050 3    50   ~ 0
SWEEPMODE1
Text Label 1850 6700 3    50   ~ 0
FUNCMODE1
Wire Wire Line
	1900 3700 1250 3700
Text Label 1250 3700 0    50   ~ 0
FUNCMODE1
Wire Wire Line
	1900 3800 1250 3800
Text Label 1250 3800 0    50   ~ 0
SWEEPMODE1
$Comp
L AD9833FunctionGenerator-rescue:Conn_01x03 J_VEL1
U 1 1 5BB0C07D
P 6200 6975
F 0 "J_VEL1" H 6125 6700 50  0000 C CNN
F 1 "Conn_01x03" H 6500 6925 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6200 6975 50  0001 C CNN
F 3 "" H 6200 6975 50  0001 C CNN
	1    6200 6975
	-1   0    0    1   
$EndComp
Wire Wire Line
	6825 7075 6825 7425
Text Label 6825 7425 1    50   ~ 0
GND
Wire Wire Line
	6400 6875 6600 6875
Wire Wire Line
	6600 6875 6600 6625
Text Label 6600 6625 3    50   ~ 0
5V
Wire Wire Line
	6400 6975 6675 6975
Text Label 6675 6975 2    50   ~ 0
VEL1
Wire Wire Line
	3300 3800 3575 3800
Text Label 3575 3800 2    50   ~ 0
VEL1
$Comp
L Device:R R_VEL1
U 1 1 5BB29D66
P 6600 7075
F 0 "R_VEL1" V 6700 7075 50  0000 C CNN
F 1 "1K" V 6600 7075 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6530 7075 50  0001 C CNN
F 3 "~" H 6600 7075 50  0001 C CNN
	1    6600 7075
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 7075 6450 7075
Wire Wire Line
	6750 7075 6825 7075
Wire Notes Line
	900  1050 900  2575
Wire Notes Line
	900  2575 4400 2575
Wire Notes Line
	4400 2575 4400 1050
Wire Notes Line
	4400 1050 900  1050
Text Notes 925  1025 0    50   ~ 0
Power supply
Wire Notes Line
	900  2850 4400 2850
Wire Notes Line
	4400 2850 4400 4875
Wire Notes Line
	4400 4875 900  4875
Wire Notes Line
	900  4875 900  2850
Text Notes 925  2775 0    50   ~ 0
Arduino Nano sockets
Wire Wire Line
	3300 4500 3525 4500
Wire Wire Line
	3525 4500 3525 4600
Wire Wire Line
	3525 4600 3300 4600
Wire Wire Line
	1850 2000 2200 2000
Text Label 2150 2000 2    50   ~ 0
-12V
Text Label 5300 4450 0    50   ~ 0
FUNCSIG
Wire Wire Line
	8400 2300 8400 2900
Wire Wire Line
	9200 2900 9200 2200
$Comp
L Device:R R_MIX2
U 1 1 5BB19DD3
P 6400 2150
F 0 "R_MIX2" V 6500 2250 50  0000 R CNN
F 1 "10K" V 6400 2200 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_MIX1
U 1 1 5BB19E85
P 6400 2650
F 0 "R_MIX1" V 6500 2750 50  0000 R CNN
F 1 "10K" V 6400 2700 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 2650 50  0001 C CNN
F 3 "~" H 6400 2650 50  0001 C CNN
	1    6400 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J_OFFSET1
U 1 1 5BB26E72
P 5400 1700
F 0 "J_OFFSET1" H 5300 1450 50  0000 C CNN
F 1 "Conn_01x03" H 5450 1350 50  0001 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5400 1700 50  0001 C CNN
F 3 "~" H 5400 1700 50  0001 C CNN
	1    5400 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R RB2
U 1 1 5BB2B576
P 5800 1800
F 0 "RB2" V 5900 1750 50  0000 L CNN
F 1 "1K" V 5800 1750 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 1800 50  0001 C CNN
F 3 "~" H 5800 1800 50  0001 C CNN
	1    5800 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1800 5650 1800
Wire Wire Line
	6000 1800 6000 2000
Text Label 6000 2000 3    50   ~ 0
-12V
Text Label 6000 1450 1    50   ~ 0
+12V
Text Notes 5350 2250 0    50   ~ 0
adjust \nRB1/RB2 \nfor center \noffset
$Comp
L Device:R RB1
U 1 1 5BB66B1F
P 5800 1600
F 0 "RB1" V 5700 1550 50  0000 L CNN
F 1 "1K" V 5800 1550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5730 1600 50  0001 C CNN
F 3 "~" H 5800 1600 50  0001 C CNN
	1    5800 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 1600 6000 1450
Wire Wire Line
	7800 2300 7800 3100
Wire Wire Line
	6900 3100 6900 2400
$Comp
L Connector_Generic:Conn_01x03 J_AMP1
U 1 1 5BB9B471
P 8850 3300
F 0 "J_AMP1" V 9100 3150 50  0000 L CNN
F 1 "Conn_01x03" V 9000 3100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 8850 3300 50  0001 C CNN
F 3 "~" H 8850 3300 50  0001 C CNN
	1    8850 3300
	0    -1   1    0   
$EndComp
Text Notes 7700 900  0    50   ~ 0
10K Pot
Wire Notes Line
	4700 800  4700 6000
Wire Notes Line
	4700 6000 10800 6000
Wire Notes Line
	10800 6000 10800 800 
Wire Notes Line
	10800 800  4700 800 
Text Notes 4800 950  0    50   ~ 0
OUTPUT
NoConn ~ 3300 3500
NoConn ~ 3300 3600
NoConn ~ 3300 3700
NoConn ~ 3300 4100
NoConn ~ 3300 4200
NoConn ~ 1900 3300
NoConn ~ 1900 3400
NoConn ~ 1900 3500
NoConn ~ 1900 3600
NoConn ~ 1900 3900
NoConn ~ 1900 4200
NoConn ~ 1900 4300
NoConn ~ 1900 4700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BB589B5
P 2200 1600
F 0 "#FLG0101" H 2200 1675 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 1750 50  0001 L CNN
F 2 "" H 2200 1600 50  0001 C CNN
F 3 "~" H 2200 1600 50  0001 C CNN
	1    2200 1600
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BB5C39F
P 2200 1800
F 0 "#FLG0102" H 2200 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 1950 50  0001 L CNN
F 2 "" H 2200 1800 50  0001 C CNN
F 3 "~" H 2200 1800 50  0001 C CNN
	1    2200 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 1600 2200 1600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5BB669DD
P 2200 2000
F 0 "#FLG0103" H 2200 2075 50  0001 C CNN
F 1 "PWR_FLAG" V 2200 2150 50  0001 L CNN
F 2 "" H 2200 2000 50  0001 C CNN
F 3 "~" H 2200 2000 50  0001 C CNN
	1    2200 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 1450 2500 1450
Connection ~ 2800 1450
Text Label 2500 1450 0    50   ~ 0
+12V
$Comp
L Connector_Generic:Conn_01x02 J_OUT1
U 1 1 5BB86F40
P 9800 2200
F 0 "J_OUT1" H 9650 2350 50  0000 L CNN
F 1 "Conn_01x02" H 9880 2101 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 9800 2200 50  0001 C CNN
F 3 "~" H 9800 2200 50  0001 C CNN
	1    9800 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2300 9550 2300
Text Label 9550 2400 3    50   ~ 0
GND
Wire Wire Line
	7050 2200 6900 2200
Text Label 6900 2200 0    50   ~ 0
GND
Wire Wire Line
	6000 1600 5950 1600
Wire Wire Line
	1950 1800 1950 1700
Wire Wire Line
	1950 1700 1850 1700
Wire Wire Line
	1950 1800 1950 1900
Wire Wire Line
	1950 1900 1850 1900
Connection ~ 1950 1800
Wire Wire Line
	1950 1800 1850 1800
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J_PWR1
U 1 1 5BBA34EF
P 1550 1800
F 0 "J_PWR1" H 1600 2217 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1600 2126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1550 1800 50  0001 C CNN
F 3 "~" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1600 1100 1600
Wire Wire Line
	1350 1700 1100 1700
Wire Wire Line
	1100 1800 1350 1800
Wire Wire Line
	1100 1900 1350 1900
Wire Wire Line
	1100 2000 1350 2000
Text Label 1100 1600 0    50   ~ 0
+12V
Text Label 1100 1700 0    50   ~ 0
GND
Text Label 1100 1800 0    50   ~ 0
GND
Text Label 1100 1900 0    50   ~ 0
GND
Text Label 1100 2000 0    50   ~ 0
-12V
Wire Wire Line
	1900 4000 1250 4000
Wire Wire Line
	1900 4100 1250 4100
Text Label 1250 4100 0    50   ~ 0
RANGE_RELAY_EN
$Comp
L Switch:SW_SPST SW_RANGE1
U 1 1 5BC11B4E
P 1550 5950
F 0 "SW_RANGE1" H 1550 6181 50  0000 C CNN
F 1 "SW_SPST" H 1550 6092 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1550 5950 50  0001 C CNN
F 3 "" H 1550 5950 50  0001 C CNN
	1    1550 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5950 1000 5950
$Comp
L Device:R R_RANGE1
U 1 1 5BC11B55
P 2100 5950
F 0 "R_RANGE1" V 1896 5950 50  0000 C CNN
F 1 "1K" V 1985 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 5950 50  0001 C CNN
F 3 "~" H 2100 5950 50  0001 C CNN
	1    2100 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5950 1850 5400
Text Label 1850 5400 3    50   ~ 0
RANGEMODE1
Wire Wire Line
	2300 6600 2300 5950
Wire Wire Line
	2300 5950 2250 5950
Connection ~ 2300 6600
Connection ~ 1000 5950
Wire Wire Line
	1000 5950 1000 5750
Text Label 1250 4000 0    50   ~ 0
RANGEMODE1
Wire Wire Line
	1750 5950 1850 5950
Connection ~ 1850 5950
Wire Wire Line
	1850 5950 1950 5950
Wire Wire Line
	5650 4450 5300 4450
$Comp
L Potentiometer_Digital:MCP42050 U?
U 1 1 5BB5DA86
P 6150 4750
F 0 "U?" H 5750 5400 50  0000 C CNN
F 1 "MCP42050" H 5750 5300 50  0000 C CNN
F 2 "" H 6150 4850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/11195c.pdf" H 6150 4850 50  0001 C CNN
	1    6150 4750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 4450 6900 4450
Text Label 6900 4450 2    50   ~ 0
SCK
Wire Wire Line
	6650 4550 6900 4550
Text Label 6900 4550 2    50   ~ 0
MOSI
NoConn ~ 6650 4650
Wire Wire Line
	6650 4750 6950 4750
Text Label 6950 4750 2    50   ~ 0
POT_CS
Wire Wire Line
	1900 4400 1450 4400
Text Label 1450 4400 0    50   ~ 0
POT_CS
Wire Wire Line
	6650 4950 7050 4950
Wire Wire Line
	6650 5050 7050 5050
Wire Wire Line
	6150 4250 6150 4000
Text Label 6150 4000 2    50   ~ 0
5V
Wire Wire Line
	6150 5250 6150 5500
Text Label 6150 5500 2    50   ~ 0
GND
NoConn ~ 5650 4850
NoConn ~ 5650 4950
NoConn ~ 5650 5050
Wire Wire Line
	5650 4650 5300 4650
Wire Wire Line
	5300 4650 5300 4800
Text Label 5300 4800 1    50   ~ 0
GND
Wire Wire Line
	7050 5050 7050 4950
Connection ~ 7050 4950
Wire Wire Line
	7050 4950 7050 4800
Text Label 7050 4800 3    50   ~ 0
5V
Wire Wire Line
	5600 3200 5400 3200
Wire Wire Line
	5400 3200 5400 3800
Wire Wire Line
	5400 3800 6400 3800
Wire Wire Line
	6400 3800 6400 3100
Wire Wire Line
	6400 3100 6200 3100
Connection ~ 6400 3100
Wire Wire Line
	5200 3000 5200 4550
Wire Wire Line
	5200 4550 5650 4550
Wire Wire Line
	5200 3000 5600 3000
$Comp
L Device:R R_1
U 1 1 5BCBCF93
P 7350 3100
F 0 "R_1" V 7450 3100 50  0000 C CNN
F 1 "10K" V 7350 3100 50  0000 C CNN
F 2 "" V 7280 3100 50  0001 C CNN
F 3 "~" H 7350 3100 50  0001 C CNN
	1    7350 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 3100 7800 3100
Wire Wire Line
	7200 3100 6900 3100
Wire Wire Line
	7650 2300 7800 2300
Wire Wire Line
	6900 2400 7050 2400
$Comp
L Amplifier_Operational:TL071 U?
U 1 1 5BB7F23F
P 8800 2200
F 0 "U?" H 8900 2450 50  0000 L CNN
F 1 "TL071" H 8900 2500 50  0000 L CNN
F 2 "" H 8850 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8950 2350 50  0001 C CNN
	1    8800 2200
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL071 U?
U 1 1 5BB7F589
P 5900 3100
F 0 "U?" H 5950 3300 50  0000 L CNN
F 1 "TL071" H 5950 3350 50  0000 L CNN
F 2 "" H 5950 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6050 3250 50  0001 C CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1600 5650 1600
Wire Wire Line
	6000 1800 5950 1800
Wire Wire Line
	9550 2300 9550 2400
$Comp
L Amplifier_Operational:TL071 U?
U 1 1 5BB7F607
P 7350 2300
F 0 "U?" H 7400 2550 50  0000 L CNN
F 1 "TL071" H 7400 2600 50  0000 L CNN
F 2 "" H 7400 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 2450 50  0001 C CNN
	1    7350 2300
	1    0    0    -1  
$EndComp
Text Label 5800 2700 1    50   ~ 0
+12V
Wire Wire Line
	5800 2800 5800 2700
Text Label 7250 1900 1    50   ~ 0
+12V
Wire Wire Line
	7250 2000 7250 1900
Text Label 5800 3500 3    50   ~ 0
-12V
Wire Wire Line
	5800 3400 5800 3500
Text Label 8700 2600 3    50   ~ 0
-12V
Wire Wire Line
	8700 2500 8700 2600
Text Label 7250 2700 3    50   ~ 0
-12V
Wire Wire Line
	7250 2600 7250 2700
NoConn ~ 8800 2500
NoConn ~ 8900 2500
NoConn ~ 7350 2600
NoConn ~ 7450 2600
NoConn ~ 5900 3400
NoConn ~ 6000 3400
Wire Wire Line
	8950 2900 8950 3100
Wire Wire Line
	8850 3100 8850 3000
Wire Wire Line
	8750 3100 8750 3000
Wire Wire Line
	6400 1700 5600 1700
Wire Wire Line
	6400 2800 6400 3100
Wire Wire Line
	6400 2000 6400 1700
Connection ~ 6900 2400
Wire Wire Line
	6400 2400 6400 2500
Wire Wire Line
	6400 2300 6400 2400
Connection ~ 6400 2400
Wire Wire Line
	6400 2400 6900 2400
$Comp
L Device:R R?
U 1 1 5BDB0D4B
P 8150 2300
F 0 "R?" V 8250 2300 50  0000 C CNN
F 1 "1K" V 8150 2300 50  0000 C CNN
F 2 "" V 8080 2300 50  0001 C CNN
F 3 "~" H 8150 2300 50  0001 C CNN
	1    8150 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2300 7800 2300
Connection ~ 7800 2300
Wire Wire Line
	8300 2300 8400 2300
Wire Wire Line
	8500 2100 8300 2100
Text Label 8300 2100 0    50   ~ 0
GND
Connection ~ 8400 2300
Wire Wire Line
	8400 2300 8500 2300
Wire Wire Line
	9100 2200 9200 2200
Text Label 8700 1800 1    50   ~ 0
+12V
Wire Wire Line
	8700 1900 8700 1800
Wire Wire Line
	8750 3000 8850 3000
Connection ~ 8750 3000
Wire Wire Line
	8750 3000 8750 2900
Wire Wire Line
	8750 2900 8400 2900
Wire Wire Line
	8950 2900 9200 2900
Wire Wire Line
	9600 2200 9200 2200
Connection ~ 9200 2200
Text Notes 8800 3650 0    50   ~ 0
10K
Text Notes 8800 2700 0    50   ~ 0
GAIN
Text Notes 7350 2800 0    50   ~ 0
MIXER
Text Notes 5900 3550 0    50   ~ 0
BUFFER
$EndSCHEMATC
