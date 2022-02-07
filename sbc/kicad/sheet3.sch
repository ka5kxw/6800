EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 6
Title "6800 SIngle Board Computer"
Date "2022-02-07"
Rev "0.1"
Comp "Jeff Tranter"
Comment1 ""
Comment2 "PARALLEL, SERIAL"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_UART:MC6850 U5
U 1 1 61DBC0F9
P 7300 3250
F 0 "U5" H 7300 3700 50  0000 C CNN
F 1 "MC6850" H 7300 3600 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 7350 2100 50  0001 L CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/MC6850.pdf" H 7300 3250 50  0001 C CNN
	1    7300 3250
	1    0    0    -1  
$EndComp
$Comp
L Interface:6821 U4
U 1 1 61DBC0F3
P 3250 3250
F 0 "U4" H 3250 3650 50  0000 C CNN
F 1 "6821" H 3250 3550 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 3300 1900 50  0001 L CNN
F 3 "http://pdf.datasheetcatalog.com/datasheet/motorola/6821.pdf" H 3250 3250 50  0001 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
Text GLabel 2450 2050 0    50   BiDi ~ 0
D0
Text GLabel 2450 3050 0    50   Input ~ 0
A0
Text GLabel 2450 2150 0    50   BiDi ~ 0
D1
Text GLabel 2450 2250 0    50   BiDi ~ 0
D2
Text GLabel 2450 2350 0    50   BiDi ~ 0
D3
Text GLabel 2450 2450 0    50   BiDi ~ 0
D4
Text GLabel 2450 2550 0    50   BiDi ~ 0
D5
Text GLabel 2450 2650 0    50   BiDi ~ 0
D6
Text GLabel 2450 2750 0    50   BiDi ~ 0
D7
Text GLabel 2450 3150 0    50   Input ~ 0
A1
Text GLabel 2450 3550 0    50   Input ~ 0
~PIAEN
Text GLabel 2450 3750 0    50   Input ~ 0
R~W
Text GLabel 2450 4350 0    50   Input ~ 0
~RESET
Wire Wire Line
	2450 2050 2750 2050
Wire Wire Line
	2450 2150 2750 2150
Wire Wire Line
	2450 2250 2750 2250
Wire Wire Line
	2450 2350 2750 2350
Wire Wire Line
	2450 2450 2750 2450
Wire Wire Line
	2450 2550 2750 2550
Wire Wire Line
	2450 2650 2750 2650
Wire Wire Line
	2450 2750 2750 2750
Wire Wire Line
	2450 3050 2750 3050
Wire Wire Line
	2450 3150 2750 3150
Wire Wire Line
	2450 3750 2750 3750
Wire Wire Line
	2450 4350 2750 4350
Text GLabel 4050 4350 2    50   BiDi ~ 0
CB2
Text GLabel 4050 4250 2    50   BiDi ~ 0
CB1
Text GLabel 4050 4050 2    50   BiDi ~ 0
PB7
Text GLabel 4050 3950 2    50   BiDi ~ 0
PB6
Text GLabel 4050 3850 2    50   BiDi ~ 0
PB5
Text GLabel 4050 3750 2    50   BiDi ~ 0
PB4
Text GLabel 4050 3650 2    50   BiDi ~ 0
PB3
Text GLabel 4050 3050 2    50   BiDi ~ 0
CA2
Text GLabel 4050 2950 2    50   BiDi ~ 0
CA1
Text GLabel 4050 3550 2    50   BiDi ~ 0
PB2
Text GLabel 4050 3450 2    50   BiDi ~ 0
PB1
Text GLabel 4050 2750 2    50   BiDi ~ 0
PA7
Text GLabel 4050 2650 2    50   BiDi ~ 0
PA6
Text GLabel 4050 2550 2    50   BiDi ~ 0
PA5
Text GLabel 4050 2450 2    50   BiDi ~ 0
PA4
Text GLabel 4050 2350 2    50   BiDi ~ 0
PA3
Text GLabel 4050 2250 2    50   BiDi ~ 0
PA2
Text GLabel 4050 2150 2    50   BiDi ~ 0
PA1
Text GLabel 4050 3350 2    50   BiDi ~ 0
PB0
Wire Wire Line
	3750 2150 4050 2150
Wire Wire Line
	3750 2050 4050 2050
Wire Wire Line
	3750 2250 4050 2250
Wire Wire Line
	3750 2350 4050 2350
Wire Wire Line
	3750 2450 4050 2450
Wire Wire Line
	3750 2550 4050 2550
Wire Wire Line
	3750 2650 4050 2650
Wire Wire Line
	3750 2750 4050 2750
Wire Wire Line
	3750 2950 4050 2950
Wire Wire Line
	3750 3050 4050 3050
Wire Wire Line
	3750 3350 4050 3350
Wire Wire Line
	3750 3450 4050 3450
Wire Wire Line
	3750 3550 4050 3550
Wire Wire Line
	3750 3750 4050 3750
Wire Wire Line
	3750 3850 4050 3850
Wire Wire Line
	3750 3950 4050 3950
Wire Wire Line
	3750 4050 4050 4050
Wire Wire Line
	3750 4250 4050 4250
Wire Wire Line
	3750 4350 4050 4350
$Comp
L power:VCC #PWR015
U 1 1 61ED5511
P 3250 1750
F 0 "#PWR015" H 3250 1600 50  0001 C CNN
F 1 "VCC" H 3267 1923 50  0000 C CNN
F 2 "" H 3250 1750 50  0001 C CNN
F 3 "" H 3250 1750 50  0001 C CNN
	1    3250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1850 3250 1750
$Comp
L power:GND #PWR021
U 1 1 61ED6AF9
P 3250 4750
F 0 "#PWR021" H 3250 4500 50  0001 C CNN
F 1 "GND" H 3255 4577 50  0000 C CNN
F 2 "" H 3250 4750 50  0001 C CNN
F 3 "" H 3250 4750 50  0001 C CNN
	1    3250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4750 3250 4650
Text GLabel 2450 4050 0    50   Output ~ 0
~IRQ
Wire Wire Line
	2450 4050 2750 4050
Wire Wire Line
	2750 4150 2750 4050
Connection ~ 2750 4050
$Comp
L power:GND #PWR020
U 1 1 61EE8321
P 7300 4550
F 0 "#PWR020" H 7300 4300 50  0001 C CNN
F 1 "GND" H 7305 4377 50  0000 C CNN
F 2 "" H 7300 4550 50  0001 C CNN
F 3 "" H 7300 4550 50  0001 C CNN
	1    7300 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 61EEB2E3
P 7300 1800
F 0 "#PWR016" H 7300 1650 50  0001 C CNN
F 1 "VCC" H 7317 1973 50  0000 C CNN
F 2 "" H 7300 1800 50  0001 C CNN
F 3 "" H 7300 1800 50  0001 C CNN
	1    7300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1800 7300 1950
Text GLabel 6550 2150 0    50   BiDi ~ 0
D0
Text GLabel 6550 3050 0    50   Input ~ 0
R~W
Text GLabel 8050 2350 2    50   Output ~ 0
~IRQ
Text GLabel 6550 2250 0    50   BiDi ~ 0
D1
Text GLabel 6550 2350 0    50   BiDi ~ 0
D2
Text GLabel 6550 2450 0    50   BiDi ~ 0
D3
Text GLabel 6550 2550 0    50   BiDi ~ 0
D4
Text GLabel 6550 2650 0    50   BiDi ~ 0
D5
Text GLabel 6550 2750 0    50   BiDi ~ 0
D6
Text GLabel 6550 2850 0    50   BiDi ~ 0
D7
Text GLabel 6550 3150 0    50   Input ~ 0
A0
Text GLabel 6550 3450 0    50   Input ~ 0
~ACIAEN
NoConn ~ 7700 4150
Wire Wire Line
	7700 2350 8050 2350
Wire Wire Line
	6550 2150 6800 2150
Wire Wire Line
	6550 2250 6800 2250
Wire Wire Line
	6550 2350 6800 2350
Wire Wire Line
	6550 2450 6800 2450
Wire Wire Line
	6550 2550 6800 2550
Wire Wire Line
	6550 2650 6800 2650
Wire Wire Line
	6550 2750 6800 2750
Wire Wire Line
	6550 2850 6800 2850
Wire Wire Line
	6550 3050 6800 3050
Wire Wire Line
	6550 3150 6800 3150
Wire Wire Line
	6550 3450 6800 3450
Text GLabel 8000 4050 2    50   Output ~ 0
TXDATA
Wire Wire Line
	8000 4050 7700 4050
Text GLabel 6550 4050 0    50   Input ~ 0
RXDATA
Wire Wire Line
	6550 4050 6800 4050
$Comp
L Device:Crystal Y1
U 1 1 61EFB83E
P 2850 5950
F 0 "Y1" H 2850 6218 50  0000 C CNN
F 1 "1.8432 MHz" H 2850 6127 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 2850 5950 50  0001 C CNN
F 3 "~" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 1 1 61EFC55B
P 2250 6500
F 0 "U3" H 2250 6817 50  0000 C CNN
F 1 "74LS04" H 2250 6726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 2250 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 2250 6500 50  0001 C CNN
	1    2250 6500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U3
U 2 1 61EFCF0C
P 3450 6500
F 0 "U3" H 3450 6817 50  0000 C CNN
F 1 "74LS04" H 3450 6726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3450 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3450 6500 50  0001 C CNN
	2    3450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 61F064AF
P 2850 6500
F 0 "C22" V 2598 6500 50  0000 C CNN
F 1 "1nF" V 2689 6500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 2888 6350 50  0001 C CNN
F 3 "~" H 2850 6500 50  0001 C CNN
	1    2850 6500
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 61F07150
P 2250 6900
F 0 "R3" V 2043 6900 50  0000 C CNN
F 1 "2K2" V 2134 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2180 6900 50  0001 C CNN
F 3 "~" H 2250 6900 50  0001 C CNN
	1    2250 6900
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61F07645
P 3450 6900
F 0 "R4" V 3243 6900 50  0000 C CNN
F 1 "2K2" V 3334 6900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3380 6900 50  0001 C CNN
F 3 "~" H 3450 6900 50  0001 C CNN
	1    3450 6900
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS04 U3
U 3 1 61F07BCC
P 4200 6500
F 0 "U3" H 4200 6817 50  0000 C CNN
F 1 "74LS04" H 4200 6726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 4200 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4200 6500 50  0001 C CNN
	3    4200 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6500 2650 6500
Wire Wire Line
	3000 6500 3050 6500
Wire Wire Line
	3750 6500 3850 6500
Wire Wire Line
	1950 6500 1950 5950
Wire Wire Line
	1950 5950 2700 5950
Wire Wire Line
	3000 5950 3850 5950
Wire Wire Line
	3850 5950 3850 6500
Connection ~ 3850 6500
Wire Wire Line
	3850 6500 3900 6500
Wire Wire Line
	1950 6500 1950 6900
Wire Wire Line
	1950 6900 2100 6900
Connection ~ 1950 6500
Wire Wire Line
	3600 6900 3850 6900
Wire Wire Line
	3850 6900 3850 6500
Wire Wire Line
	2400 6900 2650 6900
Wire Wire Line
	2650 6900 2650 6500
Connection ~ 2650 6500
Wire Wire Line
	2650 6500 2700 6500
Wire Wire Line
	3300 6900 3050 6900
Wire Wire Line
	3050 6900 3050 6500
Connection ~ 3050 6500
Wire Wire Line
	3050 6500 3150 6500
Text GLabel 4700 6500 2    50   Output ~ 0
SCLK
Wire Wire Line
	4500 6500 4700 6500
Text GLabel 6550 3750 0    50   Input ~ 0
SCLK
Wire Wire Line
	6550 3750 6800 3750
Wire Wire Line
	6800 3850 6800 3750
Connection ~ 6800 3750
Text GLabel 6550 3550 0    50   Input ~ 0
E
Wire Wire Line
	6550 3550 6800 3550
Wire Wire Line
	2450 3550 2750 3550
$Comp
L power:VCC #PWR018
U 1 1 626C5C16
P 2450 3350
F 0 "#PWR018" H 2450 3200 50  0001 C CNN
F 1 "VCC" V 2468 3477 50  0000 L CNN
F 2 "" H 2450 3350 50  0001 C CNN
F 3 "" H 2450 3350 50  0001 C CNN
	1    2450 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2450 3350 2750 3350
Wire Wire Line
	2750 3350 2750 3450
Connection ~ 2750 3350
Text GLabel 2450 3850 0    50   Input ~ 0
E
Wire Wire Line
	2450 3850 2750 3850
Text GLabel 4050 2050 2    50   BiDi ~ 0
PA0
Wire Wire Line
	3750 3650 4050 3650
$Comp
L power:VCC #PWR017
U 1 1 627C83AF
P 6550 3250
F 0 "#PWR017" H 6550 3100 50  0001 C CNN
F 1 "VCC" V 6568 3377 50  0000 L CNN
F 2 "" H 6550 3250 50  0001 C CNN
F 3 "" H 6550 3250 50  0001 C CNN
	1    6550 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 3250 6800 3250
Wire Wire Line
	6800 3350 6800 3250
Connection ~ 6800 3250
Wire Wire Line
	7300 4450 7300 4550
Text Notes 2400 1300 0    118  ~ 0
PARALLEL INTERFACE
Text Notes 6450 1350 0    118  ~ 0
SERIAL INTERFACE
Text Notes 1900 5500 0    118  ~ 0
SERIAL CLOCK (115,200 BPS X 16)
$Comp
L power:GND #PWR019
U 1 1 61E9D4A3
P 6500 4250
F 0 "#PWR019" H 6500 4000 50  0001 C CNN
F 1 "GND" H 6505 4077 50  0000 C CNN
F 2 "" H 6500 4250 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4250 6800 4250
Wire Wire Line
	6800 4250 6800 4150
Connection ~ 6800 4250
$EndSCHEMATC
