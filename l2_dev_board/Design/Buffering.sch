EESchema Schematic File Version 2  date 27/07/2011 16:09:28
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
LIBS:apx803
LIBS:ase_20mhz
LIBS:brooktre
LIBS:cmos_ieee
LIBS:EECV
LIBS:elec-unifil
LIBS:ft232r
LIBS:gennum
LIBS:graphic
LIBS:LT3480
LIBS:microchip1
LIBS:nc7wz17
LIBS:ncp303
LIBS:ncp1529
LIBS:pspice
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:xmos_capacitors
LIBS:xmos_resistors
LIBS:xmos_support
LIBS:XS1_L2_V2
LIBS:xs1
LIBS:XS1-L1-128
LIBS:L2DevBoard-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 2 13
Title ""
Date "27 jul 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NC7WZ17 U?
U 1 1 4E302A25
P 4420 2440
F 0 "U?" H 4120 2840 60  0000 C CNN
F 1 "NC7WZ17" H 4270 2040 60  0000 C CNN
	1    4420 2440
	1    0    0    -1  
$EndComp
$Comp
L NC7WZ17 U?
U 1 1 4E302A24
P 4420 3440
F 0 "U?" H 4120 3840 60  0000 C CNN
F 1 "NC7WZ17" H 4270 3040 60  0000 C CNN
	1    4420 3440
	1    0    0    -1  
$EndComp
Text GLabel 5070 3040 2    39   Input ~ 0
+3V3
$Comp
L GND #PWR?
U 1 1 4E302A23
P 5070 2790
F 0 "#PWR?" H 5070 2790 30  0001 C CNN
F 1 "GND" H 5070 2720 30  0001 C CNN
	1    5070 2790
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4E302A22
P 5070 3790
F 0 "#PWR?" H 5070 3790 30  0001 C CNN
F 1 "GND" H 5070 3720 30  0001 C CNN
	1    5070 3790
	1    0    0    -1  
$EndComp
Text GLabel 5070 2040 2    39   Input ~ 0
+3V3
Text GLabel 3210 2540 0    39   Input ~ 0
MSEL
Text GLabel 5170 2340 2    39   Input ~ 0
RST_N_BUF
Text GLabel 5170 2540 2    39   Input ~ 0
MSEL_BUF
Text GLabel 3190 3340 0    39   Input ~ 0
TCK
Text GLabel 3200 3540 0    39   Input ~ 0
TMS
Text GLabel 3240 2340 0    39   Input ~ 0
RST_N
Text GLabel 3930 1680 2    39   Input ~ 0
+3V3
$Comp
L R R?
U 1 1 4E302A21
P 3700 2030
F 0 "R?" V 3750 1830 50  0000 C CNN
F 1 "10K" V 3700 2030 50  0000 C CNN
	1    3700 2030
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A20
P 3580 2030
F 0 "R?" V 3630 1830 50  0000 C CNN
F 1 "10K" V 3580 2030 50  0000 C CNN
	1    3580 2030
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A1F
P 3470 2030
F 0 "R?" V 3520 1830 50  0000 C CNN
F 1 "10K" V 3470 2030 50  0000 C CNN
	1    3470 2030
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A1E
P 3360 2030
F 0 "R?" V 3410 1830 50  0000 C CNN
F 1 "10K" V 3360 2030 50  0000 C CNN
	1    3360 2030
	1    0    0    -1  
$EndComp
Text GLabel 5180 3340 2    39   Input ~ 0
TCK_BUF
Text GLabel 5180 3540 2    39   Input ~ 0
TMS_BUF
Text Notes 4540 1730 0    39   ~ 0
JTAG L2 Buffering
Text Notes 4540 4180 0    39   ~ 0
JTAG L1 Buffering
Text GLabel 5180 5990 2    39   Input ~ 0
TMS_BUF_L1
Text GLabel 5180 5790 2    39   Input ~ 0
TCK_BUF_L1
$Comp
L R R?
U 1 1 4E302A1D
P 3360 4480
F 0 "R?" V 3410 4280 50  0000 C CNN
F 1 "10K" V 3360 4480 50  0000 C CNN
	1    3360 4480
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A1C
P 3470 4480
F 0 "R?" V 3520 4280 50  0000 C CNN
F 1 "10K" V 3470 4480 50  0000 C CNN
	1    3470 4480
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A1B
P 3580 4480
F 0 "R?" V 3630 4280 50  0000 C CNN
F 1 "10K" V 3580 4480 50  0000 C CNN
	1    3580 4480
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4E302A1A
P 3700 4480
F 0 "R?" V 3750 4280 50  0000 C CNN
F 1 "10K" V 3700 4480 50  0000 C CNN
	1    3700 4480
	1    0    0    -1  
$EndComp
Text GLabel 3930 4130 2    39   Input ~ 0
+3V3
Text GLabel 3240 4790 0    39   Input ~ 0
RST_N
Text GLabel 3200 5990 0    39   Input ~ 0
TMS
Text GLabel 3190 5790 0    39   Input ~ 0
TCK
Text GLabel 5170 4990 2    39   Input ~ 0
MSEL_BUF_L1
Text GLabel 5170 4790 2    39   Input ~ 0
RST_N_BUF_L1
Text GLabel 3210 4990 0    39   Input ~ 0
MSEL
Text GLabel 5070 4490 2    39   Input ~ 0
+3V3
$Comp
L GND #PWR?
U 1 1 4E302A19
P 5070 6240
F 0 "#PWR?" H 5070 6240 30  0001 C CNN
F 1 "GND" H 5070 6170 30  0001 C CNN
	1    5070 6240
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4E302A18
P 5070 5240
F 0 "#PWR?" H 5070 5240 30  0001 C CNN
F 1 "GND" H 5070 5170 30  0001 C CNN
	1    5070 5240
	1    0    0    -1  
$EndComp
Text GLabel 5070 5490 2    39   Input ~ 0
+3V3
$Comp
L NC7WZ17 U?
U 1 1 4E302A17
P 4420 5890
F 0 "U?" H 4120 6290 60  0000 C CNN
F 1 "NC7WZ17" H 4270 5490 60  0000 C CNN
	1    4420 5890
	1    0    0    -1  
$EndComp
$Comp
L NC7WZ17 U?
U 1 1 4E302A16
P 4420 4890
F 0 "U?" H 4120 5290 60  0000 C CNN
F 1 "NC7WZ17" H 4270 4490 60  0000 C CNN
	1    4420 4890
	1    0    0    -1  
$EndComp
Wire Notes Line
	5660 6380 2950 6380
Wire Wire Line
	5180 3540 5070 3540
Connection ~ 3360 3540
Wire Wire Line
	3360 2280 3360 3540
Connection ~ 3580 2540
Wire Wire Line
	3580 2280 3580 2540
Connection ~ 3700 1680
Wire Wire Line
	3700 1780 3700 1680
Connection ~ 3470 1680
Wire Wire Line
	3470 1680 3470 1780
Wire Wire Line
	3200 3540 3770 3540
Wire Wire Line
	3240 2340 3770 2340
Wire Wire Line
	5070 2340 5170 2340
Wire Wire Line
	3210 2540 3770 2540
Wire Wire Line
	5070 3740 5070 3790
Wire Wire Line
	5070 2040 5070 2140
Wire Wire Line
	5070 3040 5070 3140
Wire Wire Line
	5070 2790 5070 2740
Wire Wire Line
	5070 2540 5170 2540
Wire Wire Line
	3190 3340 3770 3340
Wire Wire Line
	3360 1680 3920 1680
Wire Wire Line
	3360 1780 3360 1680
Wire Wire Line
	3580 1680 3580 1780
Connection ~ 3580 1680
Wire Wire Line
	3700 2280 3700 2340
Connection ~ 3700 2340
Wire Wire Line
	3470 2280 3470 3340
Connection ~ 3470 3340
Wire Wire Line
	5180 3340 5070 3340
Wire Notes Line
	2950 3930 2950 1550
Wire Notes Line
	5580 3930 2950 3930
Wire Notes Line
	5580 1550 5580 3930
Wire Notes Line
	5580 1550 2950 1550
Wire Notes Line
	5660 4000 5660 6380
Wire Notes Line
	2950 4000 2950 6380
Wire Wire Line
	5180 5790 5070 5790
Connection ~ 3470 5790
Wire Wire Line
	3470 4730 3470 5790
Connection ~ 3700 4790
Wire Wire Line
	3700 4730 3700 4790
Connection ~ 3580 4130
Wire Wire Line
	3580 4130 3580 4230
Wire Wire Line
	3360 4130 3360 4230
Wire Wire Line
	3920 4130 3360 4130
Wire Wire Line
	3190 5790 3770 5790
Wire Wire Line
	5070 4990 5170 4990
Wire Wire Line
	5070 5240 5070 5190
Wire Wire Line
	5070 5490 5070 5590
Wire Wire Line
	5070 4490 5070 4590
Wire Wire Line
	5070 6190 5070 6240
Wire Wire Line
	3210 4990 3770 4990
Wire Wire Line
	5070 4790 5170 4790
Wire Wire Line
	3240 4790 3770 4790
Wire Wire Line
	3200 5990 3770 5990
Wire Wire Line
	3470 4130 3470 4230
Connection ~ 3470 4130
Wire Wire Line
	3700 4230 3700 4130
Connection ~ 3700 4130
Wire Wire Line
	3580 4730 3580 4990
Connection ~ 3580 4990
Wire Wire Line
	3360 4730 3360 5990
Connection ~ 3360 5990
Wire Wire Line
	5180 5990 5070 5990
Wire Notes Line
	2950 4000 5660 4000
$EndSCHEMATC
