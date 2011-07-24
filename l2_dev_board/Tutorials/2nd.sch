EESchema Schematic File Version 2  date 05/07/2011 14:39:11
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
LIBS:2nd-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 2
Title ""
Date "5 jul 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8950 2050 9850 2050
Wire Wire Line
	8950 3050 9850 3050
Wire Wire Line
	9850 2950 8950 2950
Wire Wire Line
	9850 1950 8950 1950
Text GLabel 9850 3050 2    39   Input ~ 0
SPI_MOSI
Text GLabel 9850 2950 2    39   Input ~ 0
SPI_SCK
Text GLabel 9850 2050 2    39   Input ~ 0
SPI_SS
Text GLabel 9850 1950 2    39   Input ~ 0
SPI_MISO
$Comp
L XS1_L2 U51
U 1 1 4E12D583
P 6200 4450
F 0 "U51" H 4700 4900 50  0000 C CNN
F 1 "XS1_L2" H 4700 5000 50  0000 C CNN
F 2 "124" H 4700 4800 60  0000 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
$Sheet
S 12100 -50  11950 8300
U 4E11B03E
F0 "2" 60
F1 "sheet2.sch" 60
$EndSheet
$EndSCHEMATC
