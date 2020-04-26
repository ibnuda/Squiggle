EESchema Schematic File Version 4
EELAYER 30 0
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
NoConn ~ 6275 925 
NoConn ~ 6275 1025
NoConn ~ 7675 1125
NoConn ~ 6275 1325
Text GLabel 6275 1525 0    50   Input ~ 0
COL0
Text GLabel 6275 1625 0    50   Input ~ 0
COL1
Text GLabel 6275 1725 0    50   Input ~ 0
COL2
Text GLabel 6275 1825 0    50   Input ~ 0
COL3
Text GLabel 6275 1925 0    50   Input ~ 0
COL4
Text GLabel 7675 1625 2    50   Input ~ 0
ROW3A
Text GLabel 7675 1525 2    50   Input ~ 0
ROW2A
Text GLabel 7675 1425 2    50   Input ~ 0
ROW1A
$Comp
L squiggle:switch SW1
U 1 1 5E360FEB
P 1600 800
F 0 "SW1" H 1600 1055 50  0000 C CNN
F 1 "switch" H 1600 964 50  0000 C CNN
F 2 "footprints:1u-dual" H 1600 800 60  0001 C CNN
F 3 "" H 1600 800 60  0000 C CNN
	1    1600 800 
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D1
U 1 1 5E362220
P 1300 1100
F 0 "D1" H 1172 1050 60  0000 R CNN
F 1 "D" V 1450 1050 60  0001 C CNN
F 2 "footprints:diode" H 1300 1100 60  0001 C CNN
F 3 "" H 1300 1100 60  0000 C CNN
	1    1300 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 800  1300 950 
$Comp
L squiggle:switch SW2
U 1 1 5E363F7D
P 1600 1500
F 0 "SW2" H 1600 1755 50  0000 C CNN
F 1 "switch" H 1600 1664 50  0000 C CNN
F 2 "footprints:1u-dual" H 1600 1500 60  0001 C CNN
F 3 "" H 1600 1500 60  0000 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D2
U 1 1 5E363F83
P 1300 1800
F 0 "D2" H 1172 1750 60  0000 R CNN
F 1 "D" V 1450 1750 60  0001 C CNN
F 2 "footprints:diode" H 1300 1800 60  0001 C CNN
F 3 "" H 1300 1800 60  0000 C CNN
	1    1300 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 1500 1300 1650
$Comp
L squiggle:switch SW3
U 1 1 5E366E44
P 1600 2200
F 0 "SW3" H 1600 2455 50  0000 C CNN
F 1 "switch" H 1600 2364 50  0000 C CNN
F 2 "footprints:1u-dual" H 1600 2200 60  0001 C CNN
F 3 "" H 1600 2200 60  0000 C CNN
	1    1600 2200
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D3
U 1 1 5E366E4A
P 1300 2500
F 0 "D3" H 1172 2450 60  0000 R CNN
F 1 "D" V 1450 2450 60  0001 C CNN
F 2 "footprints:diode" H 1300 2500 60  0001 C CNN
F 3 "" H 1300 2500 60  0000 C CNN
	1    1300 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 2200 1300 2350
Wire Wire Line
	1900 800  1900 1500
Connection ~ 1900 1500
Wire Wire Line
	1900 1500 1900 2200
Connection ~ 1900 2200
$Comp
L squiggle:switch SW4
U 1 1 5E36F499
P 2400 800
F 0 "SW4" H 2400 1055 50  0000 C CNN
F 1 "switch" H 2400 964 50  0000 C CNN
F 2 "footprints:1u-dual" H 2400 800 60  0001 C CNN
F 3 "" H 2400 800 60  0000 C CNN
	1    2400 800 
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D4
U 1 1 5E36F49F
P 2100 1100
F 0 "D4" H 1972 1050 60  0000 R CNN
F 1 "D" V 2250 1050 60  0001 C CNN
F 2 "footprints:diode" H 2100 1100 60  0001 C CNN
F 3 "" H 2100 1100 60  0000 C CNN
	1    2100 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 800  2100 950 
$Comp
L squiggle:switch SW5
U 1 1 5E36F4A6
P 2400 1500
F 0 "SW5" H 2400 1755 50  0000 C CNN
F 1 "switch" H 2400 1664 50  0000 C CNN
F 2 "footprints:1u-dual" H 2400 1500 60  0001 C CNN
F 3 "" H 2400 1500 60  0000 C CNN
	1    2400 1500
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D5
U 1 1 5E36F4AC
P 2100 1800
F 0 "D5" H 1972 1750 60  0000 R CNN
F 1 "D" V 2250 1750 60  0001 C CNN
F 2 "footprints:diode" H 2100 1800 60  0001 C CNN
F 3 "" H 2100 1800 60  0000 C CNN
	1    2100 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 1500 2100 1650
$Comp
L squiggle:switch SW6
U 1 1 5E36F4B3
P 2400 2200
F 0 "SW6" H 2400 2455 50  0000 C CNN
F 1 "switch" H 2400 2364 50  0000 C CNN
F 2 "footprints:1u-dual" H 2400 2200 60  0001 C CNN
F 3 "" H 2400 2200 60  0000 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D6
U 1 1 5E36F4B9
P 2100 2500
F 0 "D6" H 1972 2450 60  0000 R CNN
F 1 "D" V 2250 2450 60  0001 C CNN
F 2 "footprints:diode" H 2100 2500 60  0001 C CNN
F 3 "" H 2100 2500 60  0000 C CNN
	1    2100 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2200 2100 2350
Wire Wire Line
	2700 800  2700 1500
Connection ~ 2700 1500
Wire Wire Line
	2700 1500 2700 2200
Connection ~ 2700 2200
$Comp
L squiggle:switch SW7
U 1 1 5E37DE80
P 3250 800
F 0 "SW7" H 3250 1055 50  0000 C CNN
F 1 "switch" H 3250 964 50  0000 C CNN
F 2 "footprints:1u-dual" H 3250 800 60  0001 C CNN
F 3 "" H 3250 800 60  0000 C CNN
	1    3250 800 
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D7
U 1 1 5E37DE86
P 2950 1100
F 0 "D7" H 2822 1050 60  0000 R CNN
F 1 "D" V 3100 1050 60  0001 C CNN
F 2 "footprints:diode" H 2950 1100 60  0001 C CNN
F 3 "" H 2950 1100 60  0000 C CNN
	1    2950 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 800  2950 950 
$Comp
L squiggle:switch SW8
U 1 1 5E37DE8D
P 3250 1500
F 0 "SW8" H 3250 1755 50  0000 C CNN
F 1 "switch" H 3250 1664 50  0000 C CNN
F 2 "footprints:1u-dual" H 3250 1500 60  0001 C CNN
F 3 "" H 3250 1500 60  0000 C CNN
	1    3250 1500
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D8
U 1 1 5E37DE93
P 2950 1800
F 0 "D8" H 2822 1750 60  0000 R CNN
F 1 "D" V 3100 1750 60  0001 C CNN
F 2 "footprints:diode" H 2950 1800 60  0001 C CNN
F 3 "" H 2950 1800 60  0000 C CNN
	1    2950 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 1500 2950 1650
$Comp
L squiggle:switch SW9
U 1 1 5E37DE9A
P 3250 2200
F 0 "SW9" H 3250 2455 50  0000 C CNN
F 1 "switch" H 3250 2364 50  0000 C CNN
F 2 "footprints:1u-dual" H 3250 2200 60  0001 C CNN
F 3 "" H 3250 2200 60  0000 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D9
U 1 1 5E37DEA0
P 2950 2500
F 0 "D9" H 2822 2450 60  0000 R CNN
F 1 "D" V 3100 2450 60  0001 C CNN
F 2 "footprints:diode" H 2950 2500 60  0001 C CNN
F 3 "" H 2950 2500 60  0000 C CNN
	1    2950 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2200 2950 2350
Wire Wire Line
	3550 800  3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3550 1500 3550 2200
Connection ~ 3550 2200
$Comp
L squiggle:switch SW10
U 1 1 5E37DEBB
P 4050 800
F 0 "SW10" H 4050 1055 50  0000 C CNN
F 1 "switch" H 4050 964 50  0000 C CNN
F 2 "footprints:1u-dual" H 4050 800 60  0001 C CNN
F 3 "" H 4050 800 60  0000 C CNN
	1    4050 800 
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D10
U 1 1 5E37DEC1
P 3750 1100
F 0 "D10" H 3622 1050 60  0000 R CNN
F 1 "D" V 3900 1050 60  0001 C CNN
F 2 "footprints:diode" H 3750 1100 60  0001 C CNN
F 3 "" H 3750 1100 60  0000 C CNN
	1    3750 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 800  3750 950 
$Comp
L squiggle:switch SW11
U 1 1 5E37DEC8
P 4050 1500
F 0 "SW11" H 4050 1755 50  0000 C CNN
F 1 "switch" H 4050 1664 50  0000 C CNN
F 2 "footprints:1u-dual" H 4050 1500 60  0001 C CNN
F 3 "" H 4050 1500 60  0000 C CNN
	1    4050 1500
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D11
U 1 1 5E37DECE
P 3750 1800
F 0 "D11" H 3622 1750 60  0000 R CNN
F 1 "D" V 3900 1750 60  0001 C CNN
F 2 "footprints:diode" H 3750 1800 60  0001 C CNN
F 3 "" H 3750 1800 60  0000 C CNN
	1    3750 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 1500 3750 1650
$Comp
L squiggle:switch SW12
U 1 1 5E37DED5
P 4050 2200
F 0 "SW12" H 4050 2455 50  0000 C CNN
F 1 "switch" H 4050 2364 50  0000 C CNN
F 2 "footprints:1u-dual" H 4050 2200 60  0001 C CNN
F 3 "" H 4050 2200 60  0000 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D12
U 1 1 5E37DEDB
P 3750 2500
F 0 "D12" H 3622 2450 60  0000 R CNN
F 1 "D" V 3900 2450 60  0001 C CNN
F 2 "footprints:diode" H 3750 2500 60  0001 C CNN
F 3 "" H 3750 2500 60  0000 C CNN
	1    3750 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2200 3750 2350
$Comp
L squiggle:switch SW13
U 1 1 5E37DEE2
P 4050 2900
F 0 "SW13" H 4050 3155 50  0000 C CNN
F 1 "switch" H 4050 3064 50  0000 C CNN
F 2 "footprints:2u-dual" H 4050 2900 60  0001 C CNN
F 3 "" H 4050 2900 60  0000 C CNN
	1    4050 2900
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode D13
U 1 1 5E37DEE8
P 3750 3200
F 0 "D13" H 3622 3150 60  0000 R CNN
F 1 "D" V 3900 3150 60  0001 C CNN
F 2 "footprints:diode" H 3750 3200 60  0001 C CNN
F 3 "" H 3750 3200 60  0000 C CNN
	1    3750 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 2900 3750 3050
Wire Wire Line
	4350 800  4350 1500
Connection ~ 4350 1500
Wire Wire Line
	4350 1500 4350 2200
Connection ~ 4350 2200
$Comp
L squiggle:switch SW14
U 1 1 5E38B255
P 4850 800
F 0 "SW14" H 4850 1055 50  0000 C CNN
F 1 "switch" H 4850 964 50  0000 C CNN
F 2 "footprints:1u-dual" H 4850 800 60  0001 C CNN
F 3 "" H 4850 800 60  0000 C CNN
	1    4850 800 
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D14
U 1 1 5E38B25B
P 4550 1100
F 0 "D14" H 4422 1050 60  0000 R CNN
F 1 "D" V 4700 1050 60  0001 C CNN
F 2 "footprints:diode" H 4550 1100 60  0001 C CNN
F 3 "" H 4550 1100 60  0000 C CNN
	1    4550 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 800  4550 950 
$Comp
L squiggle:switch SW15
U 1 1 5E38B262
P 4850 1500
F 0 "SW15" H 4850 1755 50  0000 C CNN
F 1 "switch" H 4850 1664 50  0000 C CNN
F 2 "footprints:1u-dual" H 4850 1500 60  0001 C CNN
F 3 "" H 4850 1500 60  0000 C CNN
	1    4850 1500
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D15
U 1 1 5E38B268
P 4550 1800
F 0 "D15" H 4422 1750 60  0000 R CNN
F 1 "D" V 4700 1750 60  0001 C CNN
F 2 "footprints:diode" H 4550 1800 60  0001 C CNN
F 3 "" H 4550 1800 60  0000 C CNN
	1    4550 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 1500 4550 1650
$Comp
L squiggle:switch SW16
U 1 1 5E38B26F
P 4850 2200
F 0 "SW16" H 4850 2455 50  0000 C CNN
F 1 "switch" H 4850 2364 50  0000 C CNN
F 2 "footprints:1u-dual" H 4850 2200 60  0001 C CNN
F 3 "" H 4850 2200 60  0000 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D16
U 1 1 5E38B275
P 4550 2500
F 0 "D16" H 4422 2450 60  0000 R CNN
F 1 "D" V 4700 2450 60  0001 C CNN
F 2 "footprints:diode" H 4550 2500 60  0001 C CNN
F 3 "" H 4550 2500 60  0000 C CNN
	1    4550 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 2200 4550 2350
$Comp
L squiggle:switch SW17
U 1 1 5E38B27C
P 4850 2900
F 0 "SW17" H 4850 3155 50  0000 C CNN
F 1 "switch" H 4850 3064 50  0000 C CNN
F 2 "footprints:2u-dual" H 4850 2900 60  0001 C CNN
F 3 "" H 4850 2900 60  0000 C CNN
	1    4850 2900
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode D17
U 1 1 5E38B282
P 4550 3200
F 0 "D17" H 4422 3150 60  0000 R CNN
F 1 "D" V 4700 3150 60  0001 C CNN
F 2 "footprints:diode" H 4550 3200 60  0001 C CNN
F 3 "" H 4550 3200 60  0000 C CNN
	1    4550 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4550 2900 4550 3050
Wire Wire Line
	5150 800  5150 1500
Connection ~ 5150 1500
Wire Wire Line
	5150 1500 5150 2200
Connection ~ 5150 2200
Wire Wire Line
	5150 2200 5150 2900
Connection ~ 5150 2900
Wire Wire Line
	5150 2900 5150 3700
Wire Wire Line
	1300 1150 2100 1150
Connection ~ 2100 1150
Wire Wire Line
	2100 1150 2950 1150
Connection ~ 2950 1150
Wire Wire Line
	2950 1150 3750 1150
Connection ~ 3750 1150
Wire Wire Line
	3750 1150 4550 1150
Connection ~ 4550 1150
Wire Wire Line
	4550 1150 5350 1150
Wire Wire Line
	1300 1850 2100 1850
Connection ~ 2100 1850
Wire Wire Line
	2100 1850 2950 1850
Connection ~ 2950 1850
Wire Wire Line
	2950 1850 3750 1850
Connection ~ 3750 1850
Wire Wire Line
	3750 1850 4550 1850
Connection ~ 4550 1850
Wire Wire Line
	4550 1850 5450 1850
Wire Wire Line
	1300 2550 2100 2550
Connection ~ 2100 2550
Wire Wire Line
	2100 2550 2950 2550
Connection ~ 2950 2550
Wire Wire Line
	2950 2550 3750 2550
Connection ~ 3750 2550
Wire Wire Line
	3750 2550 4550 2550
Connection ~ 4550 2550
Wire Wire Line
	4550 2550 5450 2550
Wire Wire Line
	3750 3250 4550 3250
Connection ~ 4550 3250
Wire Wire Line
	4550 3250 5500 3250
Text GLabel 5350 1150 2    50   Input ~ 0
ROW0A
Text GLabel 5450 1850 2    50   Input ~ 0
ROW1A
Text GLabel 5450 2550 2    50   Input ~ 0
ROW2A
Text GLabel 5500 3250 2    50   Input ~ 0
ROW3A
Text GLabel 1900 3700 3    50   Input ~ 0
COL0
Text GLabel 2700 3700 3    50   Input ~ 0
COL1
Text GLabel 3550 3700 3    50   Input ~ 0
COL2
Text GLabel 4350 3700 3    50   Input ~ 0
COL3
Text GLabel 5150 3700 3    50   Input ~ 0
COL4
Wire Wire Line
	1900 2200 1900 3700
NoConn ~ 6275 1125
NoConn ~ 6275 1225
Wire Wire Line
	3550 2200 3550 3700
Wire Wire Line
	2700 2200 2700 3700
Wire Wire Line
	4350 2200 4350 2900
Connection ~ 4350 2900
Wire Wire Line
	4350 2900 4350 3700
$Comp
L squiggle:switch switch1
U 1 1 5EA5D58D
P 1700 4850
F 0 "switch1" H 1700 5105 50  0000 C CNN
F 1 "switch" H 1700 5014 50  0000 C CNN
F 2 "footprints:1u-dual" H 1700 4850 60  0001 C CNN
F 3 "" H 1700 4850 60  0000 C CNN
	1    1700 4850
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode1
U 1 1 5EA5DDB5
P 1400 5000
F 0 "diode1" H 1272 4950 60  0000 R CNN
F 1 "diode" V 1550 4950 60  0001 C CNN
F 2 "footprints:diode" H 1400 5000 60  0001 C CNN
F 3 "" H 1400 5000 60  0000 C CNN
	1    1400 5000
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch2
U 1 1 5EA60104
P 1700 5450
F 0 "switch2" H 1700 5705 50  0000 C CNN
F 1 "switch" H 1700 5614 50  0000 C CNN
F 2 "footprints:1u-dual" H 1700 5450 60  0001 C CNN
F 3 "" H 1700 5450 60  0000 C CNN
	1    1700 5450
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode2
U 1 1 5EA6010A
P 1400 5600
F 0 "diode2" H 1272 5550 60  0000 R CNN
F 1 "diode" V 1550 5550 60  0001 C CNN
F 2 "footprints:diode" H 1400 5600 60  0001 C CNN
F 3 "" H 1400 5600 60  0000 C CNN
	1    1400 5600
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch3
U 1 1 5EA7354D
P 1700 6050
F 0 "switch3" H 1700 6305 50  0000 C CNN
F 1 "switch" H 1700 6214 50  0000 C CNN
F 2 "footprints:1u-dual" H 1700 6050 60  0001 C CNN
F 3 "" H 1700 6050 60  0000 C CNN
	1    1700 6050
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode3
U 1 1 5EA73553
P 1400 6200
F 0 "diode3" H 1272 6150 60  0000 R CNN
F 1 "diode" V 1550 6150 60  0001 C CNN
F 2 "footprints:diode" H 1400 6200 60  0001 C CNN
F 3 "" H 1400 6200 60  0000 C CNN
	1    1400 6200
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch4
U 1 1 5EA73559
P 1700 6650
F 0 "switch4" H 1700 6905 50  0000 C CNN
F 1 "switch" H 1700 6814 50  0000 C CNN
F 2 "footprints:2u-dual" H 1700 6650 60  0001 C CNN
F 3 "" H 1700 6650 60  0000 C CNN
	1    1700 6650
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode4
U 1 1 5EA7355F
P 1400 6800
F 0 "diode4" H 1272 6750 60  0000 R CNN
F 1 "diode" V 1550 6750 60  0001 C CNN
F 2 "footprints:diode" H 1400 6800 60  0001 C CNN
F 3 "" H 1400 6800 60  0000 C CNN
	1    1400 6800
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch5
U 1 1 5EA7CAAC
P 2600 4850
F 0 "switch5" H 2600 5105 50  0000 C CNN
F 1 "switch" H 2600 5014 50  0000 C CNN
F 2 "footprints:1u-dual" H 2600 4850 60  0001 C CNN
F 3 "" H 2600 4850 60  0000 C CNN
	1    2600 4850
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode5
U 1 1 5EA7CAB2
P 2300 5000
F 0 "diode5" H 2172 4950 60  0000 R CNN
F 1 "diode" V 2450 4950 60  0001 C CNN
F 2 "footprints:diode" H 2300 5000 60  0001 C CNN
F 3 "" H 2300 5000 60  0000 C CNN
	1    2300 5000
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch6
U 1 1 5EA7CAB8
P 2600 5450
F 0 "switch6" H 2600 5705 50  0000 C CNN
F 1 "switch" H 2600 5614 50  0000 C CNN
F 2 "footprints:1u-dual" H 2600 5450 60  0001 C CNN
F 3 "" H 2600 5450 60  0000 C CNN
	1    2600 5450
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode6
U 1 1 5EA7CABE
P 2300 5600
F 0 "diode6" H 2172 5550 60  0000 R CNN
F 1 "diode" V 2450 5550 60  0001 C CNN
F 2 "footprints:diode" H 2300 5600 60  0001 C CNN
F 3 "" H 2300 5600 60  0000 C CNN
	1    2300 5600
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch7
U 1 1 5EA7CAC4
P 2600 6050
F 0 "switch7" H 2600 6305 50  0000 C CNN
F 1 "switch" H 2600 6214 50  0000 C CNN
F 2 "footprints:1u-dual" H 2600 6050 60  0001 C CNN
F 3 "" H 2600 6050 60  0000 C CNN
	1    2600 6050
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode7
U 1 1 5EA7CACA
P 2300 6200
F 0 "diode7" H 2172 6150 60  0000 R CNN
F 1 "diode" V 2450 6150 60  0001 C CNN
F 2 "footprints:diode" H 2300 6200 60  0001 C CNN
F 3 "" H 2300 6200 60  0000 C CNN
	1    2300 6200
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch8
U 1 1 5EA7CAD0
P 2600 6650
F 0 "switch8" H 2600 6905 50  0000 C CNN
F 1 "switch" H 2600 6814 50  0000 C CNN
F 2 "footprints:2u-dual" H 2600 6650 60  0001 C CNN
F 3 "" H 2600 6650 60  0000 C CNN
	1    2600 6650
	1    0    0    -1  
$EndComp
$Comp
L squiggle:diode diode8
U 1 1 5EA7CAD6
P 2300 6800
F 0 "diode8" H 2172 6750 60  0000 R CNN
F 1 "diode" V 2450 6750 60  0001 C CNN
F 2 "footprints:diode" H 2300 6800 60  0001 C CNN
F 3 "" H 2300 6800 60  0000 C CNN
	1    2300 6800
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch9
U 1 1 5EA83429
P 3500 4850
F 0 "switch9" H 3500 5105 50  0000 C CNN
F 1 "switch" H 3500 5014 50  0000 C CNN
F 2 "footprints:1u-dual" H 3500 4850 60  0001 C CNN
F 3 "" H 3500 4850 60  0000 C CNN
	1    3500 4850
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode9
U 1 1 5EA8342F
P 3200 5000
F 0 "diode9" H 3072 4950 60  0000 R CNN
F 1 "diode" V 3350 4950 60  0001 C CNN
F 2 "footprints:diode" H 3200 5000 60  0001 C CNN
F 3 "" H 3200 5000 60  0000 C CNN
	1    3200 5000
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch10
U 1 1 5EA83435
P 3500 5450
F 0 "switch10" H 3500 5705 50  0000 C CNN
F 1 "switch" H 3500 5614 50  0000 C CNN
F 2 "footprints:1u-dual" H 3500 5450 60  0001 C CNN
F 3 "" H 3500 5450 60  0000 C CNN
	1    3500 5450
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode10
U 1 1 5EA8343B
P 3200 5600
F 0 "diode10" H 3072 5550 60  0000 R CNN
F 1 "diode" V 3350 5550 60  0001 C CNN
F 2 "footprints:diode" H 3200 5600 60  0001 C CNN
F 3 "" H 3200 5600 60  0000 C CNN
	1    3200 5600
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch11
U 1 1 5EA83441
P 3500 6050
F 0 "switch11" H 3500 6305 50  0000 C CNN
F 1 "switch" H 3500 6214 50  0000 C CNN
F 2 "footprints:1u-dual" H 3500 6050 60  0001 C CNN
F 3 "" H 3500 6050 60  0000 C CNN
	1    3500 6050
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode11
U 1 1 5EA83447
P 3200 6200
F 0 "diode11" H 3072 6150 60  0000 R CNN
F 1 "diode" V 3350 6150 60  0001 C CNN
F 2 "footprints:diode" H 3200 6200 60  0001 C CNN
F 3 "" H 3200 6200 60  0000 C CNN
	1    3200 6200
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch12
U 1 1 5EA86E16
P 4400 4850
F 0 "switch12" H 4400 5105 50  0000 C CNN
F 1 "switch" H 4400 5014 50  0000 C CNN
F 2 "footprints:1u-dual" H 4400 4850 60  0001 C CNN
F 3 "" H 4400 4850 60  0000 C CNN
	1    4400 4850
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode12
U 1 1 5EA86E1C
P 4100 5000
F 0 "diode12" H 3972 4950 60  0000 R CNN
F 1 "diode" V 4250 4950 60  0001 C CNN
F 2 "footprints:diode" H 4100 5000 60  0001 C CNN
F 3 "" H 4100 5000 60  0000 C CNN
	1    4100 5000
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch13
U 1 1 5EA86E22
P 4400 5450
F 0 "switch13" H 4400 5705 50  0000 C CNN
F 1 "switch" H 4400 5614 50  0000 C CNN
F 2 "footprints:1u-dual" H 4400 5450 60  0001 C CNN
F 3 "" H 4400 5450 60  0000 C CNN
	1    4400 5450
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode13
U 1 1 5EA86E28
P 4100 5600
F 0 "diode13" H 3972 5550 60  0000 R CNN
F 1 "diode" V 4250 5550 60  0001 C CNN
F 2 "footprints:diode" H 4100 5600 60  0001 C CNN
F 3 "" H 4100 5600 60  0000 C CNN
	1    4100 5600
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch14
U 1 1 5EA86E2E
P 4400 6050
F 0 "switch14" H 4400 6305 50  0000 C CNN
F 1 "switch" H 4400 6214 50  0000 C CNN
F 2 "footprints:1u-dual" H 4400 6050 60  0001 C CNN
F 3 "" H 4400 6050 60  0000 C CNN
	1    4400 6050
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode14
U 1 1 5EA86E34
P 4100 6200
F 0 "diode14" H 3972 6150 60  0000 R CNN
F 1 "diode" V 4250 6150 60  0001 C CNN
F 2 "footprints:diode" H 4100 6200 60  0001 C CNN
F 3 "" H 4100 6200 60  0000 C CNN
	1    4100 6200
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch15
U 1 1 5EA89D67
P 5300 4850
F 0 "switch15" H 5300 5105 50  0000 C CNN
F 1 "switch" H 5300 5014 50  0000 C CNN
F 2 "footprints:1u-dual" H 5300 4850 60  0001 C CNN
F 3 "" H 5300 4850 60  0000 C CNN
	1    5300 4850
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode15
U 1 1 5EA89D6D
P 5000 5000
F 0 "diode15" H 4872 4950 60  0000 R CNN
F 1 "diode" V 5150 4950 60  0001 C CNN
F 2 "footprints:diode" H 5000 5000 60  0001 C CNN
F 3 "" H 5000 5000 60  0000 C CNN
	1    5000 5000
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch16
U 1 1 5EA89D73
P 5300 5450
F 0 "switch16" H 5300 5705 50  0000 C CNN
F 1 "switch" H 5300 5614 50  0000 C CNN
F 2 "footprints:1u-dual" H 5300 5450 60  0001 C CNN
F 3 "" H 5300 5450 60  0000 C CNN
	1    5300 5450
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode16
U 1 1 5EA89D79
P 5000 5600
F 0 "diode16" H 4872 5550 60  0000 R CNN
F 1 "diode" V 5150 5550 60  0001 C CNN
F 2 "footprints:diode" H 5000 5600 60  0001 C CNN
F 3 "" H 5000 5600 60  0000 C CNN
	1    5000 5600
	-1   0    0    1   
$EndComp
$Comp
L squiggle:switch switch17
U 1 1 5EA89D7F
P 5300 6050
F 0 "switch17" H 5300 6305 50  0000 C CNN
F 1 "switch" H 5300 6214 50  0000 C CNN
F 2 "footprints:1u-dual" H 5300 6050 60  0001 C CNN
F 3 "" H 5300 6050 60  0000 C CNN
	1    5300 6050
	-1   0    0    1   
$EndComp
$Comp
L squiggle:diode diode17
U 1 1 5EA89D85
P 5000 6200
F 0 "diode17" H 4872 6150 60  0000 R CNN
F 1 "diode" V 5150 6150 60  0001 C CNN
F 2 "footprints:diode" H 5000 6200 60  0001 C CNN
F 3 "" H 5000 6200 60  0000 C CNN
	1    5000 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 5050 2300 5050
Connection ~ 2300 5050
Wire Wire Line
	2300 5050 3200 5050
Connection ~ 3200 5050
Wire Wire Line
	3200 5050 4100 5050
Connection ~ 4100 5050
Wire Wire Line
	4100 5050 5000 5050
Connection ~ 5000 5050
Wire Wire Line
	5000 5050 5800 5050
Wire Wire Line
	1400 5650 2300 5650
Connection ~ 2300 5650
Wire Wire Line
	2300 5650 3200 5650
Connection ~ 3200 5650
Wire Wire Line
	3200 5650 4100 5650
Connection ~ 4100 5650
Wire Wire Line
	4100 5650 5000 5650
Connection ~ 5000 5650
Wire Wire Line
	5000 5650 5800 5650
Wire Wire Line
	1400 6250 2300 6250
Connection ~ 2300 6250
Wire Wire Line
	2300 6250 3200 6250
Connection ~ 3200 6250
Wire Wire Line
	3200 6250 4100 6250
Connection ~ 4100 6250
Wire Wire Line
	4100 6250 5000 6250
Connection ~ 5000 6250
Wire Wire Line
	5000 6250 5800 6250
Wire Wire Line
	1400 6850 2300 6850
Connection ~ 2300 6850
Wire Wire Line
	2300 6850 5800 6850
Connection ~ 2900 6650
Wire Wire Line
	2900 6650 2900 7100
Text GLabel 5800 5050 2    50   Input ~ 0
ROW0B
Text GLabel 5800 5650 2    50   Input ~ 0
ROW1B
Text GLabel 5800 6250 2    50   Input ~ 0
ROW2B
Text GLabel 5800 6850 2    50   Input ~ 0
ROW3B
Text GLabel 2000 7100 3    50   Input ~ 0
COL5
Text GLabel 2900 7100 3    50   Input ~ 0
COL6
Text GLabel 3800 7100 3    50   Input ~ 0
COL7
Text GLabel 4700 7100 3    50   Input ~ 0
COL8
Text GLabel 5600 7100 3    50   Input ~ 0
COL9
$Comp
L squiggle:02x05 J1
U 1 1 5EACC766
P 6700 2950
F 0 "J1" H 6750 3367 50  0000 C CNN
F 1 "02x05" H 6750 3276 50  0000 C CNN
F 2 "footprints:connector-shrouded" H 6700 2950 50  0001 C CNN
F 3 "" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
$Comp
L squiggle:02x05 J2
U 1 1 5EACFB03
P 7450 5450
F 0 "J2" H 7500 5867 50  0000 C CNN
F 1 "02x05" H 7500 5776 50  0000 C CNN
F 2 "footprints:connector-shrouded" H 7450 5450 50  0001 C CNN
F 3 "" H 7450 5450 50  0001 C CNN
	1    7450 5450
	1    0    0    -1  
$EndComp
Text GLabel 7675 1325 2    50   Input ~ 0
ROW0A
Text GLabel 6500 2850 0    50   Input ~ 0
ROW1A
Text GLabel 6500 2750 0    50   Input ~ 0
ROW0A
Text GLabel 6500 2950 0    50   Input ~ 0
ROW2A
Text GLabel 6500 3050 0    50   Input ~ 0
ROW3A
Text GLabel 7750 5650 2    50   Input ~ 0
COL5
Text GLabel 7750 5550 2    50   Input ~ 0
COL6
Text GLabel 7750 5450 2    50   Input ~ 0
COL7
Text GLabel 7750 5350 2    50   Input ~ 0
COL8
Text GLabel 7750 5250 2    50   Input ~ 0
COL9
Text GLabel 7250 5250 0    50   Input ~ 0
ROW0B
Text GLabel 7250 5350 0    50   Input ~ 0
ROW1B
Text GLabel 7250 5450 0    50   Input ~ 0
ROW2B
Text GLabel 7250 5550 0    50   Input ~ 0
ROW3B
$Comp
L squiggle:promicro U2
U 1 1 5E2C8BA7
P 6975 1675
F 0 "U2" H 6975 2712 60  0000 C CNN
F 1 "ProMicro" H 6975 2606 60  0000 C CNN
F 2 "footprints:promicro" H 7075 625 60  0001 C CNN
F 3 "" H 7075 625 60  0000 C CNN
	1    6975 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 2025 6275 2200
Wire Wire Line
	6275 2200 7075 2200
Wire Wire Line
	7075 2200 7075 2750
Wire Wire Line
	7075 2750 7000 2750
Wire Wire Line
	7000 2850 7800 2850
Wire Wire Line
	7800 2850 7800 2025
Wire Wire Line
	7800 2025 7675 2025
Wire Wire Line
	7675 1925 7850 1925
Wire Wire Line
	7850 1925 7850 2950
Wire Wire Line
	7850 2950 7000 2950
Wire Wire Line
	7675 1825 7925 1825
Wire Wire Line
	7925 1825 7925 3050
Wire Wire Line
	7925 3050 7000 3050
Wire Wire Line
	7000 3150 8025 3150
Wire Wire Line
	8025 3150 8025 1725
Wire Wire Line
	8025 1725 7675 1725
NoConn ~ 6500 3150
NoConn ~ 7250 5650
NoConn ~ 7675 1025
NoConn ~ 7675 1225
NoConn ~ 6275 1425
NoConn ~ 7675 925 
Wire Wire Line
	5600 4850 5600 5450
Connection ~ 5600 5450
Wire Wire Line
	4700 4850 4700 5450
Connection ~ 4700 5450
Wire Wire Line
	3800 4850 3800 5450
Connection ~ 3800 5450
Wire Wire Line
	2900 4850 2900 5450
Connection ~ 2900 5450
Wire Wire Line
	2000 4850 2000 5450
Connection ~ 2000 5450
Wire Wire Line
	2000 5450 2000 6050
Connection ~ 2000 6050
Wire Wire Line
	2900 5450 2900 6050
Connection ~ 2900 6050
Wire Wire Line
	2900 6050 2900 6650
Wire Wire Line
	3800 5450 3800 6050
Connection ~ 3800 6050
Wire Wire Line
	3800 6050 3800 7100
Wire Wire Line
	4700 5450 4700 6050
Connection ~ 4700 6050
Wire Wire Line
	4700 6050 4700 7100
Wire Wire Line
	5600 5450 5600 6050
Connection ~ 5600 6050
Wire Wire Line
	5600 6050 5600 7100
Wire Wire Line
	2000 6050 2000 6650
Connection ~ 2000 6650
Wire Wire Line
	2000 6650 2000 7100
$EndSCHEMATC
