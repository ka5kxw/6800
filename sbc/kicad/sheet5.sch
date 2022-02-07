EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 6 6
Title "6800 SIngle Board Computer"
Date "2022-02-07"
Rev "0.1"
Comp "Jeff Tranter"
Comment1 ""
Comment2 "DECODING, CONNECTORS"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Logic_Programmable:GAL16V8 U22
U 1 1 61DBDD05
P 2200 1950
F 0 "U22" H 2200 2000 50  0000 C CNN
F 1 "ATF16V8B" H 2200 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 2200 1950 50  0001 C CNN
F 3 "" H 2200 1950 50  0001 C CNN
	1    2200 1950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS42 U24
U 1 1 61DBF21C
P 2250 4050
F 0 "U24" H 2250 3950 50  0000 C CNN
F 1 "74LS42" H 2250 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2250 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS42" H 2250 4050 50  0001 C CNN
	1    2250 4050
	1    0    0    -1  
$EndComp
Text GLabel 1450 3950 0    50   Input ~ 0
~DISPEN
Text GLabel 1450 3850 0    50   Input ~ 0
A6
Text GLabel 1450 3750 0    50   Input ~ 0
A5
Text GLabel 1450 3650 0    50   Input ~ 0
A4
NoConn ~ 2750 4550
NoConn ~ 2750 4450
NoConn ~ 2750 4350
Text GLabel 3100 4250 2    50   Output ~ 0
~DISP1EN
NoConn ~ 2750 3650
Text GLabel 3100 4150 2    50   Output ~ 0
~DISP2EN
Text GLabel 3100 4050 2    50   Output ~ 0
~DISP3EN
Text GLabel 3100 3950 2    50   Output ~ 0
~DISP4EN
Text GLabel 3100 3850 2    50   Output ~ 0
~DISP5EN
Text GLabel 3100 3750 2    50   Output ~ 0
~DISP6EN
$Comp
L power:GND #PWR069
U 1 1 61DC2A53
P 2250 4850
F 0 "#PWR069" H 2250 4600 50  0001 C CNN
F 1 "GND" H 2255 4677 50  0000 C CNN
F 2 "" H 2250 4850 50  0001 C CNN
F 3 "" H 2250 4850 50  0001 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR062
U 1 1 61DC322A
P 2250 3350
F 0 "#PWR062" H 2250 3200 50  0001 C CNN
F 1 "VCC" H 2267 3523 50  0000 C CNN
F 2 "" H 2250 3350 50  0001 C CNN
F 3 "" H 2250 3350 50  0001 C CNN
	1    2250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3750 3100 3750
Wire Wire Line
	2750 3850 3100 3850
Wire Wire Line
	2750 3950 3100 3950
Wire Wire Line
	2750 4050 3100 4050
Wire Wire Line
	2750 4250 3100 4250
Wire Wire Line
	1450 3650 1750 3650
Wire Wire Line
	1450 3750 1750 3750
Wire Wire Line
	1450 3850 1750 3850
Wire Wire Line
	1450 3950 1750 3950
$Comp
L power:GND #PWR061
U 1 1 61DC71D6
P 2200 2650
F 0 "#PWR061" H 2200 2400 50  0001 C CNN
F 1 "GND" H 2205 2477 50  0000 C CNN
F 2 "" H 2200 2650 50  0001 C CNN
F 3 "" H 2200 2650 50  0001 C CNN
	1    2200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR059
U 1 1 61DC737B
P 2200 1250
F 0 "#PWR059" H 2200 1100 50  0001 C CNN
F 1 "VCC" H 2217 1423 50  0000 C CNN
F 2 "" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
Text GLabel 1500 1450 0    50   Input ~ 0
VMA
Text GLabel 1500 1550 0    50   Input ~ 0
A15
Text GLabel 1500 1650 0    50   Input ~ 0
A14
Text GLabel 1500 1750 0    50   Input ~ 0
A13
Text GLabel 1500 1850 0    50   Input ~ 0
A12
Text GLabel 1500 1950 0    50   Input ~ 0
A11
Text GLabel 1500 2050 0    50   Input ~ 0
A10
Text GLabel 1500 2150 0    50   Input ~ 0
A9
Text GLabel 1500 2250 0    50   Input ~ 0
A8
Text GLabel 3050 1450 2    50   Input ~ 0
~ROMEN
Text GLabel 3050 1550 2    50   Input ~ 0
~RAMEN
Text GLabel 3050 1650 2    50   Input ~ 0
~PIAEN
Text GLabel 3050 1750 2    50   Input ~ 0
~ACIAEN
Text GLabel 3050 1850 2    50   Input ~ 0
~KBDEN
Text GLabel 3050 1950 2    50   Input ~ 0
~DISPEN
Wire Wire Line
	1500 1450 1700 1450
Wire Wire Line
	1500 1650 1700 1650
Wire Wire Line
	1500 1750 1700 1750
Wire Wire Line
	1500 1850 1700 1850
Wire Wire Line
	1500 1950 1700 1950
Wire Wire Line
	1500 2050 1700 2050
Wire Wire Line
	1500 2150 1700 2150
Wire Wire Line
	1500 2250 1700 2250
Wire Wire Line
	2700 1950 3050 1950
Wire Wire Line
	2700 1850 3050 1850
Wire Wire Line
	2700 1750 3050 1750
Wire Wire Line
	2700 1650 3050 1650
Wire Wire Line
	2700 1550 3050 1550
Wire Wire Line
	2700 1450 3050 1450
Text GLabel 4250 2700 0    50   Input ~ 0
A2
Text GLabel 4250 2600 0    50   Input ~ 0
A1
Text GLabel 4250 2500 0    50   Input ~ 0
A0
$Comp
L 74xx:74LS244 U?
U 1 1 62010770
P 4950 3000
AR Path="/61DB68D0/62010770" Ref="U?"  Part="1" 
AR Path="/61DB6C63/62010770" Ref="U23"  Part="1" 
F 0 "U23" H 4950 3200 50  0000 C CNN
F 1 "74LS244" H 4950 2700 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4950 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS244" H 4950 3000 50  0001 C CNN
	1    4950 3000
	1    0    0    -1  
$EndComp
Text GLabel 5650 2500 2    50   Output ~ 0
BA0
Text GLabel 5650 2600 2    50   Output ~ 0
BA1
Text GLabel 5650 2700 2    50   Output ~ 0
BA2
Wire Wire Line
	4250 2500 4450 2500
Wire Wire Line
	4250 2600 4450 2600
Wire Wire Line
	4250 2700 4450 2700
Wire Wire Line
	5450 2500 5650 2500
Wire Wire Line
	5450 2600 5650 2600
Wire Wire Line
	5450 2700 5650 2700
Text GLabel 4250 2800 0    50   Input ~ 0
~RESETPB
Wire Wire Line
	4250 2800 4450 2800
Text GLabel 5650 2800 2    50   Output ~ 0
~RESET
Wire Wire Line
	5450 2800 5650 2800
Text GLabel 4250 2900 0    50   Input ~ 0
60HZ
Wire Wire Line
	4450 2900 4250 2900
Text GLabel 6450 3050 2    50   Output ~ 0
~IRQ
Text GLabel 7800 1850 0    50   BiDi ~ 0
D7
$Comp
L Device:R_Network08 RN8
U 1 1 62678597
P 2550 5850
F 0 "RN8" V 1933 5850 50  0000 C CNN
F 1 "3K" V 2024 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3025 5850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2550 5850 50  0001 C CNN
	1    2550 5850
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR070
U 1 1 6267C003
P 2850 5450
F 0 "#PWR070" H 2850 5300 50  0001 C CNN
F 1 "VCC" V 2850 5700 50  0000 C CNN
F 2 "" H 2850 5450 50  0001 C CNN
F 3 "" H 2850 5450 50  0001 C CNN
	1    2850 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 5450 2850 5450
Text GLabel 2000 5450 0    50   Input ~ 0
~RESET
Wire Wire Line
	7800 1850 8100 1850
Text GLabel 7800 1950 0    50   BiDi ~ 0
D6
Wire Wire Line
	7800 1950 8100 1950
Text GLabel 7800 2050 0    50   BiDi ~ 0
D5
Text GLabel 7800 2150 0    50   BiDi ~ 0
D4
Text GLabel 7800 2250 0    50   BiDi ~ 0
D3
Text GLabel 7800 2450 0    50   BiDi ~ 0
D1
Wire Wire Line
	7800 2050 8100 2050
Wire Wire Line
	7800 2150 8100 2150
Wire Wire Line
	7800 2250 8100 2250
Wire Wire Line
	7800 2450 8100 2450
Wire Wire Line
	2000 5450 2350 5450
Text GLabel 2000 5550 0    50   Input ~ 0
~HALT
Text GLabel 2000 5650 0    50   Input ~ 0
MR
Text GLabel 2000 5750 0    50   Input ~ 0
~NMI
Wire Wire Line
	2000 5550 2350 5550
Wire Wire Line
	2000 5650 2350 5650
Wire Wire Line
	2000 5750 2350 5750
$Comp
L Connector:Conn_01x06_Male J9
U 1 1 62699BD1
P 5750 6550
F 0 "J9" H 5800 6100 50  0000 R CNN
F 1 "FTDI SERIAL" H 5600 6100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5750 6550 50  0001 C CNN
F 3 "~" H 5750 6550 50  0001 C CNN
	1    5750 6550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR077
U 1 1 6269B32F
P 5450 6850
F 0 "#PWR077" H 5450 6600 50  0001 C CNN
F 1 "GND" H 5455 6677 50  0000 C CNN
F 2 "" H 5450 6850 50  0001 C CNN
F 3 "" H 5450 6850 50  0001 C CNN
	1    5450 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6850 5450 6750
Wire Wire Line
	5450 6750 5550 6750
NoConn ~ 5550 6650
Text GLabel 4250 6550 0    50   Output ~ 0
RXDATA
Text GLabel 4250 5700 0    50   Input ~ 0
TXDATA
NoConn ~ 5550 6250
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 626A55C7
P 4950 6550
F 0 "J8" H 4850 6500 50  0000 R CNN
F 1 "USB POWER" H 5200 6350 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4950 6550 50  0001 C CNN
F 3 "~" H 4950 6550 50  0001 C CNN
	1    4950 6550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR076
U 1 1 626A7BB5
P 5150 6850
F 0 "#PWR076" H 5150 6700 50  0001 C CNN
F 1 "VCC" H 5167 7023 50  0000 C CNN
F 2 "" H 5150 6850 50  0001 C CNN
F 3 "" H 5150 6850 50  0001 C CNN
	1    5150 6850
	-1   0    0    1   
$EndComp
NoConn ~ 2350 5950
NoConn ~ 2350 6050
NoConn ~ 2350 6150
NoConn ~ 4450 3000
NoConn ~ 4450 3100
NoConn ~ 4450 3200
NoConn ~ 5450 3000
NoConn ~ 5450 3100
NoConn ~ 5450 3200
$Comp
L power:GND #PWR063
U 1 1 626BD5C8
P 4300 3650
F 0 "#PWR063" H 4300 3400 50  0001 C CNN
F 1 "GND" H 4305 3477 50  0000 C CNN
F 2 "" H 4300 3650 50  0001 C CNN
F 3 "" H 4300 3650 50  0001 C CNN
	1    4300 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3650 4300 3400
Wire Wire Line
	4300 3400 4450 3400
Wire Wire Line
	4450 3400 4450 3500
Connection ~ 4450 3400
Wire Wire Line
	8050 4800 7750 4800
Text GLabel 7750 4900 0    50   BiDi ~ 0
PA1
Text GLabel 7750 5000 0    50   BiDi ~ 0
PA2
Text GLabel 7750 5100 0    50   BiDi ~ 0
PA3
Text GLabel 7750 5200 0    50   BiDi ~ 0
PA4
Text GLabel 7750 5300 0    50   BiDi ~ 0
PA5
Text GLabel 7750 5400 0    50   BiDi ~ 0
PA6
Text GLabel 7750 5500 0    50   BiDi ~ 0
PA7
Text GLabel 7750 5600 0    50   BiDi ~ 0
CA1
Text GLabel 7750 5700 0    50   BiDi ~ 0
CA2
Text GLabel 9150 4800 2    50   BiDi ~ 0
PB0
Text GLabel 9150 4900 2    50   BiDi ~ 0
PB1
Text GLabel 9150 5000 2    50   BiDi ~ 0
PB2
Text GLabel 9150 5100 2    50   BiDi ~ 0
PB3
Text GLabel 9150 5200 2    50   BiDi ~ 0
PB4
Text GLabel 9150 5300 2    50   BiDi ~ 0
PB5
Text GLabel 9150 5400 2    50   BiDi ~ 0
PB6
Text GLabel 9150 5500 2    50   BiDi ~ 0
PB7
Text GLabel 9150 5600 2    50   BiDi ~ 0
CB1
Text GLabel 9150 5700 2    50   BiDi ~ 0
CB2
Wire Wire Line
	8550 4800 9150 4800
Wire Wire Line
	7750 4900 8050 4900
Wire Wire Line
	7750 5000 8050 5000
Wire Wire Line
	7750 5100 8050 5100
Wire Wire Line
	7750 5200 8050 5200
Wire Wire Line
	7750 5300 8050 5300
Wire Wire Line
	7750 5400 8050 5400
Wire Wire Line
	7750 5500 8050 5500
Wire Wire Line
	7750 5600 8050 5600
Wire Wire Line
	7750 5700 8050 5700
Wire Wire Line
	8550 5700 9150 5700
Wire Wire Line
	8550 5600 9150 5600
Wire Wire Line
	8550 5500 9150 5500
Wire Wire Line
	8550 5400 9150 5400
Wire Wire Line
	8550 5300 9150 5300
Wire Wire Line
	8550 5200 9150 5200
Wire Wire Line
	8550 5100 9150 5100
Wire Wire Line
	8550 5000 9150 5000
Wire Wire Line
	8550 4900 9150 4900
Text GLabel 7800 2550 0    50   BiDi ~ 0
D0
Text GLabel 7800 2650 0    50   Input ~ 0
VMA
Wire Wire Line
	7800 2750 8100 2750
Wire Wire Line
	7800 2650 8100 2650
Wire Wire Line
	7800 2550 8100 2550
Wire Wire Line
	7800 2850 8100 2850
Text GLabel 7800 2950 0    50   Input ~ 0
E
Text GLabel 7800 3050 0    50   Input ~ 0
R~W
Text GLabel 7800 3150 0    50   Input ~ 0
~RESET
Text GLabel 7800 3350 0    50   Input ~ 0
~IRQ
Text GLabel 7800 3450 0    50   Input ~ 0
~NMI
Wire Wire Line
	7800 3750 8100 3750
Wire Wire Line
	7800 3550 8100 3550
Wire Wire Line
	7800 3450 8100 3450
Wire Wire Line
	7800 3350 8100 3350
Text GLabel 9050 3350 2    50   Input ~ 0
A0
Text GLabel 9050 3150 2    50   Input ~ 0
A2
Text GLabel 9050 3050 2    50   Input ~ 0
A3
Text GLabel 9050 2950 2    50   Input ~ 0
A4
Text GLabel 9050 2850 2    50   Input ~ 0
A5
Text GLabel 9050 2750 2    50   Input ~ 0
A6
Text GLabel 9050 2650 2    50   Input ~ 0
A7
Text GLabel 9050 2550 2    50   Input ~ 0
A8
Text GLabel 9050 2450 2    50   Input ~ 0
A9
Text GLabel 9050 2250 2    50   Input ~ 0
A11
Text GLabel 9050 2150 2    50   Input ~ 0
A12
Text GLabel 9050 2050 2    50   Input ~ 0
A13
Text GLabel 9050 1950 2    50   Input ~ 0
A14
Text GLabel 9050 1850 2    50   Input ~ 0
A15
Wire Wire Line
	8600 1850 9050 1850
Wire Wire Line
	8600 1950 9050 1950
Wire Wire Line
	8600 2050 9050 2050
Wire Wire Line
	8600 2150 9050 2150
Wire Wire Line
	8600 2250 9050 2250
Wire Wire Line
	8600 2450 9050 2450
Wire Wire Line
	8600 2550 9050 2550
Wire Wire Line
	8600 2650 9050 2650
Wire Wire Line
	8600 2750 9050 2750
Wire Wire Line
	8600 2850 9050 2850
Wire Wire Line
	8600 2950 9050 2950
Wire Wire Line
	8600 3050 9050 3050
Wire Wire Line
	8600 3150 9050 3150
Wire Wire Line
	8600 3350 9050 3350
Wire Wire Line
	8600 3450 9050 3450
Wire Wire Line
	8600 3550 9050 3550
Wire Wire Line
	8600 3650 9050 3650
Wire Wire Line
	8600 3750 9050 3750
Text GLabel 7750 4800 0    50   BiDi ~ 0
PA0
Wire Wire Line
	7800 2950 8100 2950
Wire Wire Line
	7800 3050 8100 3050
Wire Wire Line
	7800 3150 8100 3150
$Comp
L power:VCC #PWR060
U 1 1 627DE24D
P 4950 2100
F 0 "#PWR060" H 4950 1950 50  0001 C CNN
F 1 "VCC" H 4967 2273 50  0000 C CNN
F 2 "" H 4950 2100 50  0001 C CNN
F 3 "" H 4950 2100 50  0001 C CNN
	1    4950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2200 4950 2100
$Comp
L power:GND #PWR068
U 1 1 627E5C21
P 4950 3900
F 0 "#PWR068" H 4950 3650 50  0001 C CNN
F 1 "GND" H 4955 3727 50  0000 C CNN
F 2 "" H 4950 3900 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3900 4950 3800
$Comp
L 74xx:74LS00 U2
U 1 1 627F16DE
P 5700 4550
F 0 "U2" H 5700 4875 50  0000 C CNN
F 1 "74LS00" H 5700 4784 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5700 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5700 4550 50  0001 C CNN
	1    5700 4550
	1    0    0    -1  
$EndComp
Text GLabel 4350 4450 0    50   Input ~ 0
R~W
Text GLabel 4350 4650 0    50   Input ~ 0
E
Text GLabel 6400 4550 2    50   Output ~ 0
~READ
Text GLabel 2000 5850 0    50   Input ~ 0
~IRQ
Wire Wire Line
	2000 5850 2350 5850
Text Notes 1500 950  0    118  ~ 0
ADDRESS DECODING
Text GLabel 9050 2350 2    50   Input ~ 0
A10
$Comp
L Connector_Generic:Conn_02x20_Counter_Clockwise J3
U 1 1 6264B5BC
P 8300 2750
F 0 "J3" H 8350 3867 50  0000 C CNN
F 1 "EXPANSION" H 8350 3776 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8300 2750 50  0001 C CNN
F 3 "~" H 8300 2750 50  0001 C CNN
	1    8300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2350 9050 2350
Text GLabel 9050 3250 2    50   Input ~ 0
A1
Wire Wire Line
	8600 3250 9050 3250
Text GLabel 7800 2350 0    50   BiDi ~ 0
D2
Wire Wire Line
	7800 2350 8100 2350
Text GLabel 7800 2750 0    50   Input ~ 0
BA
Text GLabel 7800 2850 0    50   Input ~ 0
MR
Text GLabel 7800 3250 0    50   Input ~ 0
~HALT
Wire Wire Line
	7800 3250 8100 3250
$Comp
L power:GND #PWR067
U 1 1 61FDD12A
P 9050 3750
F 0 "#PWR067" H 9050 3500 50  0001 C CNN
F 1 "GND" V 9055 3622 50  0000 R CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "" H 9050 3750 50  0001 C CNN
	1    9050 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR065
U 1 1 61FDD98D
P 9050 3650
F 0 "#PWR065" H 9050 3500 50  0001 C CNN
F 1 "VCC" V 9067 3778 50  0000 L CNN
F 2 "" H 9050 3650 50  0001 C CNN
F 3 "" H 9050 3650 50  0001 C CNN
	1    9050 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR066
U 1 1 61FE44FC
P 7800 3750
F 0 "#PWR066" H 7800 3500 50  0001 C CNN
F 1 "GND" V 7805 3622 50  0000 R CNN
F 2 "" H 7800 3750 50  0001 C CNN
F 3 "" H 7800 3750 50  0001 C CNN
	1    7800 3750
	0    1    1    0   
$EndComp
Text Notes 5850 6800 0    50   ~ 0
GND
Text Notes 5850 6700 0    50   ~ 0
CTS
Text Notes 5850 6600 0    50   ~ 0
VCC
Text Notes 5850 6500 0    50   ~ 0
RX
Text Notes 5850 6400 0    50   ~ 0
TX
Text Notes 5850 6300 0    50   ~ 0
DTR/RTS
Wire Wire Line
	7800 3650 8100 3650
$Comp
L power:VCC #PWR064
U 1 1 62034783
P 7800 3650
F 0 "#PWR064" H 7800 3500 50  0001 C CNN
F 1 "VCC" V 7818 3777 50  0000 L CNN
F 2 "" H 7800 3650 50  0001 C CNN
F 3 "" H 7800 3650 50  0001 C CNN
	1    7800 3650
	0    -1   -1   0   
$EndComp
NoConn ~ 7800 3550
Text GLabel 9050 3450 2    50   Input ~ 0
SCLK
$Comp
L 74xx:74LS00 U?
U 2 1 61E15194
P 5750 5150
AR Path="/61E11285/61E15194" Ref="U?"  Part="2" 
AR Path="/61DB6C63/61E15194" Ref="U2"  Part="2" 
F 0 "U2" H 5750 5475 50  0000 C CNN
F 1 "74LS00" H 5750 5384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5750 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 5750 5150 50  0001 C CNN
	2    5750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1700 5450 1700
$Comp
L 74xx:74LS04 U3
U 4 1 61F78838
P 4950 1700
F 0 "U3" H 4950 2017 50  0000 C CNN
F 1 "74LS04" H 4950 1926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4950 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4950 1700 50  0001 C CNN
	4    4950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1700 4650 1700
Text GLabel 5450 1700 2    50   Output ~ 0
~D0
Text GLabel 4450 1700 0    50   Input ~ 0
D0
Text GLabel 6400 5150 2    50   Output ~ 0
~WRITE
Wire Wire Line
	6050 5150 6400 5150
$Comp
L 74xx:74LS04 U?
U 5 1 61E8035C
P 5050 5250
AR Path="/61E11285/61E8035C" Ref="U?"  Part="5" 
AR Path="/61DB6C63/61E8035C" Ref="U3"  Part="5" 
F 0 "U3" H 5050 5567 50  0000 C CNN
F 1 "74LS04" H 5050 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 5050 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5050 5250 50  0001 C CNN
	5    5050 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5250 5450 5250
Wire Wire Line
	4350 4450 4750 4450
Wire Wire Line
	4350 4650 5250 4650
Wire Wire Line
	5450 5050 5250 5050
Wire Wire Line
	5250 5050 5250 4650
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 5400 4650
Wire Wire Line
	4750 5250 4750 4450
Connection ~ 4750 4450
Wire Wire Line
	4750 4450 5400 4450
Wire Wire Line
	6000 4550 6400 4550
Wire Wire Line
	2750 4150 3100 4150
NoConn ~ 2700 2050
NoConn ~ 2700 2150
Wire Wire Line
	1500 1550 1700 1550
NoConn ~ 1700 2350
NoConn ~ 9050 3550
Text GLabel 6450 3250 2    50   Output ~ 0
~NMI
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 61E10F5C
P 6000 3150
F 0 "J4" H 5900 3150 50  0000 R CNN
F 1 "LTC" H 5950 3250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6000 3150 50  0001 C CNN
F 3 "~" H 6000 3150 50  0001 C CNN
	1    6000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3050 6450 3050
Wire Wire Line
	6200 3250 6450 3250
Wire Wire Line
	6200 3150 6300 3150
Wire Wire Line
	6300 3150 6300 2900
Wire Wire Line
	5450 2900 6300 2900
$Comp
L Connector_Generic:Conn_02x12_Counter_Clockwise J5
U 1 1 61E2BF81
P 8250 5300
F 0 "J5" H 8300 6017 50  0000 C CNN
F 1 "Parallel Port" H 8300 5926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x12_P2.54mm_Vertical" H 8250 5300 50  0001 C CNN
F 3 "~" H 8250 5300 50  0001 C CNN
	1    8250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 61E2FF4F
P 7850 5800
F 0 "#PWR071" H 7850 5550 50  0001 C CNN
F 1 "GND" V 7855 5672 50  0000 R CNN
F 2 "" H 7850 5800 50  0001 C CNN
F 3 "" H 7850 5800 50  0001 C CNN
	1    7850 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR072
U 1 1 61E3108C
P 9050 5800
F 0 "#PWR072" H 9050 5550 50  0001 C CNN
F 1 "GND" V 9055 5672 50  0000 R CNN
F 2 "" H 9050 5800 50  0001 C CNN
F 3 "" H 9050 5800 50  0001 C CNN
	1    9050 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR073
U 1 1 61E31DB3
P 7850 5900
F 0 "#PWR073" H 7850 5750 50  0001 C CNN
F 1 "VCC" V 7868 6027 50  0000 L CNN
F 2 "" H 7850 5900 50  0001 C CNN
F 3 "" H 7850 5900 50  0001 C CNN
	1    7850 5900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR074
U 1 1 61E32BE9
P 9050 5900
F 0 "#PWR074" H 9050 5750 50  0001 C CNN
F 1 "VCC" V 9067 6028 50  0000 L CNN
F 2 "" H 9050 5900 50  0001 C CNN
F 3 "" H 9050 5900 50  0001 C CNN
	1    9050 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 5800 8050 5800
Wire Wire Line
	7850 5900 8050 5900
Wire Wire Line
	8550 5800 9050 5800
Wire Wire Line
	8550 5900 9050 5900
Wire Wire Line
	5150 6550 5550 6550
Wire Wire Line
	5150 6650 5150 6850
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 61E7AE9A
P 4600 6150
F 0 "J7" V 4662 6294 50  0000 L CNN
F 1 "RX DATA SELECT" V 4650 5350 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4600 6150 50  0001 C CNN
F 3 "~" H 4600 6150 50  0001 C CNN
	1    4600 6150
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 61E7D6CA
P 4600 6050
F 0 "J6" V 4754 5862 50  0000 R CNN
F 1 "TX DATA SELECT" V 4700 6850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4600 6050 50  0001 C CNN
F 3 "~" H 4600 6050 50  0001 C CNN
	1    4600 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 6350 4600 6450
Wire Wire Line
	4600 6450 5550 6450
Wire Wire Line
	4800 6350 4800 5700
Wire Wire Line
	4800 5700 4600 5700
Wire Wire Line
	4600 5700 4600 5850
Wire Wire Line
	4800 6350 5550 6350
Text GLabel 4250 5500 0    50   Input ~ 0
PA0
Text GLabel 4250 6750 0    50   Output ~ 0
PA7
Wire Wire Line
	4250 6550 4500 6550
Wire Wire Line
	4500 6550 4500 6350
Wire Wire Line
	4250 6750 4700 6750
Wire Wire Line
	4700 6750 4700 6350
Wire Wire Line
	4250 5700 4500 5700
Wire Wire Line
	4500 5700 4500 5850
Wire Wire Line
	4250 5500 4700 5500
Wire Wire Line
	4700 5500 4700 5850
$Comp
L power:VCC #PWR075
U 1 1 61ECAFDD
P 1750 6450
F 0 "#PWR075" H 1750 6300 50  0001 C CNN
F 1 "VCC" H 1767 6623 50  0000 C CNN
F 2 "" H 1750 6450 50  0001 C CNN
F 3 "" H 1750 6450 50  0001 C CNN
	1    1750 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J10
U 1 1 61ED5301
P 2650 7250
F 0 "J10" H 2800 7700 50  0000 C CNN
F 1 "BAUD RATE" H 2800 7600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 2650 7250 50  0001 C CNN
F 3 "~" H 2650 7250 50  0001 C CNN
	1    2650 7250
	1    0    0    -1  
$EndComp
Text GLabel 1650 7050 0    50   Input ~ 0
PA1
Text GLabel 1650 7150 0    50   Input ~ 0
PA2
Text GLabel 1650 7250 0    50   Input ~ 0
PA3
Text GLabel 1650 7350 0    50   Input ~ 0
PA4
Text GLabel 1650 7450 0    50   Input ~ 0
PA5
Text GLabel 1650 7550 0    50   Input ~ 0
PA1
$Comp
L Device:R_Network08 RN9
U 1 1 61EBFA5C
P 2150 6750
F 0 "RN9" H 1600 6800 50  0000 C CNN
F 1 "3K" H 1600 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2625 6750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2150 6750 50  0001 C CNN
	1    2150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6550 1750 6450
$Comp
L power:GND #PWR078
U 1 1 61EFFBD5
P 3050 7550
F 0 "#PWR078" H 3050 7300 50  0001 C CNN
F 1 "GND" H 3055 7377 50  0000 C CNN
F 2 "" H 3050 7550 50  0001 C CNN
F 3 "" H 3050 7550 50  0001 C CNN
	1    3050 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7050 2950 7150
Wire Wire Line
	2950 7150 2950 7250
Connection ~ 2950 7150
Wire Wire Line
	2950 7250 2950 7350
Connection ~ 2950 7250
Wire Wire Line
	2950 7350 2950 7450
Connection ~ 2950 7350
Wire Wire Line
	2950 7450 2950 7550
Connection ~ 2950 7450
Wire Wire Line
	1650 7050 1750 7050
Wire Wire Line
	1650 7150 1850 7150
Wire Wire Line
	1650 7250 1950 7250
Wire Wire Line
	1650 7350 2050 7350
Wire Wire Line
	1650 7450 2150 7450
Wire Wire Line
	1650 7550 2250 7550
Wire Wire Line
	1750 6950 1750 7050
Connection ~ 1750 7050
Wire Wire Line
	1750 7050 2450 7050
Wire Wire Line
	1850 6950 1850 7150
Connection ~ 1850 7150
Wire Wire Line
	1850 7150 2450 7150
Wire Wire Line
	1950 6950 1950 7250
Connection ~ 1950 7250
Wire Wire Line
	1950 7250 2450 7250
Wire Wire Line
	2050 6950 2050 7350
Connection ~ 2050 7350
Wire Wire Line
	2050 7350 2450 7350
Wire Wire Line
	2150 6950 2150 7450
Connection ~ 2150 7450
Wire Wire Line
	2150 7450 2450 7450
Wire Wire Line
	2250 6950 2250 7550
Connection ~ 2250 7550
Wire Wire Line
	2250 7550 2450 7550
NoConn ~ 2350 6950
NoConn ~ 2450 6950
Wire Wire Line
	2950 7550 3050 7550
Connection ~ 2950 7550
$EndSCHEMATC
