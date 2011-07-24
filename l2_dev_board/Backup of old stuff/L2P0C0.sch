EESchema Schematic File Version 2  date 11/07/2011 11:05:48
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:XS1_L2
LIBS:LT3480
LIBS:ncp1529
LIBS:ncp303
LIBS:nc7wz17
LIBS:apx803
LIBS:ase_20mhz
LIBS:L2DevBoard-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 9 4
Title ""
Date "11 jul 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5050 1600 2    39   Input ~ 0
C0_X0_XLA_0o
Text GLabel 5050 1500 2    39   Input ~ 0
C0_X0_XLA_1o
Text GLabel 5050 1400 2    39   Input ~ 0
C0_X0_XLA_2o
Text GLabel 5050 1300 2    39   Input ~ 0
C0_X0_XLA_3o
Text GLabel 5050 1200 2    39   Input ~ 0
C0_X0_XLA_4o
Text GLabel 5050 2100 2    39   Input ~ 0
C0_X0_XLA_4i
Text GLabel 5050 2000 2    39   Input ~ 0
C0_X0_XLA_3i
Text GLabel 5050 1900 2    39   Input ~ 0
C0_X0_XLA_2i
Text GLabel 5050 1800 2    39   Input ~ 0
C0_X0_XLA_1i
Text GLabel 5050 1700 2    39   Input ~ 0
C0_X0_XLA_0i
Wire Wire Line
	5050 1600 4750 1600
Wire Wire Line
	5050 1400 4750 1400
Wire Wire Line
	4750 1200 5050 1200
Wire Wire Line
	5050 2000 4750 2000
Wire Wire Line
	4750 1800 5050 1800
Wire Wire Line
	5050 1700 4750 1700
Wire Wire Line
	5050 1900 4750 1900
Wire Wire Line
	5050 2100 4750 2100
Wire Wire Line
	5050 1300 4750 1300
Wire Wire Line
	5050 1500 4750 1500
$Comp
L XS1_L2 U5?
U 1 1 4E15A043
P 4300 3350
F 0 "U5?" H 2800 3800 50  0000 C CNN
F 1 "XS1_L2" H 2800 3900 50  0000 C CNN
F 2 "124" H 2800 3700 60  0000 C CNN
	1    4300 3350
	1    0    0    -1  
$EndComp
Text GLabel 5050 2900 2    39   Input ~ 0
C0_X0_XLB_0i
Text GLabel 5050 3000 2    39   Input ~ 0
C0_X0_XLB_1i
Text GLabel 5050 3100 2    39   Input ~ 0
C0_X0_XLB_2i
Text GLabel 5050 3200 2    39   Input ~ 0
C0_X0_XLB_3i
Text GLabel 5050 3300 2    39   Input ~ 0
C0_X0_XLB_4i
Text GLabel 5050 2400 2    39   Input ~ 0
C0_X0_XLB_4o
Text GLabel 5050 2500 2    39   Input ~ 0
C0_X0_XLB_3o
Text GLabel 5050 2600 2    39   Input ~ 0
C0_X0_XLB_2o
Text GLabel 5050 2700 2    39   Input ~ 0
C0_X0_XLB_1o
Text GLabel 5050 2800 2    39   Input ~ 0
C0_X0_XLB_0o
Wire Wire Line
	5050 2700 4750 2700
Wire Wire Line
	5050 2500 4750 2500
Wire Wire Line
	5050 3300 4750 3300
Wire Wire Line
	5050 3100 4750 3100
Wire Wire Line
	5050 2900 4750 2900
Wire Wire Line
	4750 3000 5050 3000
Wire Wire Line
	5050 3200 4750 3200
Wire Wire Line
	4750 2400 5050 2400
Wire Wire Line
	5050 2600 4750 2600
Wire Wire Line
	5050 2800 4750 2800
Wire Wire Line
	7750 1250 7050 1250
Wire Wire Line
	7750 1050 7050 1050
Wire Wire Line
	7750 1850 7050 1850
Wire Wire Line
	7750 1650 7050 1650
Wire Wire Line
	7750 1450 7050 1450
Wire Wire Line
	7050 1550 7750 1550
Wire Wire Line
	7750 1750 7050 1750
Wire Wire Line
	7050 950  7750 950 
Wire Wire Line
	7750 1150 7050 1150
Wire Wire Line
	7750 1350 7050 1350
Wire Wire Line
	7750 2550 7050 2550
Wire Wire Line
	7750 2350 7050 2350
Wire Wire Line
	7050 2150 7750 2150
Wire Wire Line
	7750 2950 7050 2950
Wire Wire Line
	7050 2750 7750 2750
Connection ~ 2600 4650
Wire Wire Line
	2600 5050 2600 4950
Wire Wire Line
	2600 4950 2600 4850
Wire Wire Line
	2600 4850 2600 4750
Wire Wire Line
	2600 4750 2600 4650
Wire Wire Line
	2600 4650 2600 4450
Connection ~ 2600 4850
Wire Wire Line
	2600 4350 3000 4350
Wire Wire Line
	3000 4350 3000 4250
Connection ~ 2600 3400
Wire Wire Line
	2600 3650 2600 3400
Wire Wire Line
	2600 3400 2600 3150
Wire Wire Line
	900  4950 900  4850
Wire Wire Line
	900  4850 900  4750
Wire Wire Line
	900  4750 900  4650
Wire Wire Line
	900  4650 900  4550
Wire Wire Line
	900  4550 900  4450
Wire Wire Line
	900  4450 900  4350
Wire Wire Line
	900  4350 900  4250
Connection ~ 900  4850
Connection ~ 900  4650
Connection ~ 900  4450
Connection ~ 900  3500
Connection ~ 900  3700
Connection ~ 900  3900
Connection ~ 900  4000
Connection ~ 900  3800
Connection ~ 900  3600
Wire Wire Line
	900  3150 900  3400
Wire Wire Line
	900  3400 900  3500
Wire Wire Line
	900  3500 900  3600
Wire Wire Line
	900  3600 900  3700
Wire Wire Line
	900  3700 900  3800
Wire Wire Line
	900  3800 900  3900
Wire Wire Line
	900  3900 900  4000
Wire Wire Line
	900  4000 900  4100
Connection ~ 900  3400
Connection ~ 900  4350
Connection ~ 900  4550
Connection ~ 900  4750
Wire Wire Line
	650  3150 650  4250
Wire Wire Line
	650  4250 900  4250
Wire Wire Line
	3000 3150 3000 3750
Wire Wire Line
	3000 3750 2600 3750
Wire Wire Line
	3000 4750 3000 5050
Connection ~ 2600 4950
Connection ~ 2600 4750
Wire Wire Line
	7750 2650 7050 2650
Wire Wire Line
	7750 2850 7050 2850
Wire Wire Line
	7750 3050 7050 3050
Wire Wire Line
	7750 2250 7050 2250
Wire Wire Line
	7750 2450 7050 2450
Text GLabel 7750 1450 2    39   Input ~ 0
C0_X1_XLA_0i
Text GLabel 7750 1550 2    39   Input ~ 0
C0_X1_XLA_1i
Text GLabel 7750 1650 2    39   Input ~ 0
C0_X1_XLA_2i
Text GLabel 7750 1750 2    39   Input ~ 0
C0_X1_XLA_3i
Text GLabel 7750 1850 2    39   Input ~ 0
C0_X1_XLA_4i
Text GLabel 7750 950  2    39   Input ~ 0
C0_X1_XLA_4o
Text GLabel 7750 1050 2    39   Input ~ 0
C0_X1_XLA_3o
Text GLabel 7750 1150 2    39   Input ~ 0
C0_X1_XLA_2o
Text GLabel 7750 1250 2    39   Input ~ 0
C0_X1_XLA_1o
Text GLabel 7750 1350 2    39   Input ~ 0
C0_X1_XLA_0o
Text GLabel 7750 2550 2    39   Input ~ 0
C0_X1_XLB_0o
Text GLabel 7750 2450 2    39   Input ~ 0
C0_X1_XLB_1o
Text GLabel 7750 2350 2    39   Input ~ 0
C0_X1_XLB_2o
Text GLabel 7750 2250 2    39   Input ~ 0
C0_X1_XLB_3o
Text GLabel 7750 2150 2    39   Input ~ 0
C0_X1_XLB_4o
Text GLabel 7750 3050 2    39   Input ~ 0
C0_X1_XLB_4i
Text GLabel 7750 2950 2    39   Input ~ 0
C0_X1_XLB_3i
Text GLabel 7750 2850 2    39   Input ~ 0
C0_X1_XLB_2i
Text GLabel 7750 2750 2    39   Input ~ 0
C0_X1_XLB_1i
Text GLabel 7750 2650 2    39   Input ~ 0
C0_X1_XLB_0i
NoConn ~ 2600 4050
NoConn ~ 2600 3950
$Comp
L GND #PWR?
U 1 1 4E15A4C3
P 2600 5050
F 0 "#PWR?" H 2600 5050 30  0001 C CNN
F 1 "GND" H 2600 4980 30  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4E15A4BE
P 3000 5050
F 0 "#PWR?" H 3000 5050 30  0001 C CNN
F 1 "GND" H 3000 4980 30  0001 C CNN
	1    3000 5050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4E15A4A6
P 3000 4550
F 0 "C?" H 3050 4650 50  0000 L CNN
F 1 "1U" H 3050 4450 50  0000 L CNN
	1    3000 4550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E15A467
P 3000 4000
F 0 "R?" V 3080 4000 50  0000 C CNN
F 1 "2R2" V 3000 4000 50  0000 C CNN
	1    3000 4000
	1    0    0    -1  
$EndComp
Text GLabel 3000 3150 1    39   Input ~ 0
+1V0P0
Text GLabel 2600 3150 1    39   Input ~ 0
+3V3
Text GLabel 650  3150 1    39   Input ~ 0
+1V0P0
Text GLabel 900  3150 1    39   Input ~ 0
+3V3
$EndSCHEMATC
