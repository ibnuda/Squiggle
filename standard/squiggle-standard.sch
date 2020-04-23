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
NoConn ~ 6275 1525
NoConn ~ 7677 925 
NoConn ~ 7675 1125
NoConn ~ 7675 1325
NoConn ~ 7675 1525
NoConn ~ 7675 1425
NoConn ~ 6275 1325
Text GLabel 6275 1625 0    50   Input ~ 0
COL0
Text GLabel 6275 1725 0    50   Input ~ 0
COL1
Text GLabel 6275 1825 0    50   Input ~ 0
COL2
Text GLabel 6275 1925 0    50   Input ~ 0
COL3
Text GLabel 6275 2025 0    50   Input ~ 0
COL4
Text GLabel 7675 2025 2    50   Input ~ 0
ROW3
Text GLabel 7675 1925 2    50   Input ~ 0
ROW2
Text GLabel 7675 1825 2    50   Input ~ 0
ROW1
Text GLabel 7675 1725 2    50   Input ~ 0
ROW0
NoConn ~ 7675 1625
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
ROW0
Text GLabel 5450 1850 2    50   Input ~ 0
ROW1
Text GLabel 5450 2550 2    50   Input ~ 0
ROW2
Text GLabel 5500 3250 2    50   Input ~ 0
ROW3
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
NoConn ~ 6275 1125
NoConn ~ 6275 1225
Text GLabel 6275 1425 0    50   Input ~ 0
SDA
Wire Wire Line
	3550 2200 3550 3700
Wire Wire Line
	2700 2200 2700 3700
Wire Wire Line
	4350 2200 4350 2900
Connection ~ 4350 2900
Wire Wire Line
	4350 2900 4350 3700
NoConn ~ 9025 1175
Text GLabel 9025 1075 2    50   Input ~ 0
SDA
$Comp
L squiggle:trrs U1
U 1 1 5E2CB886
P 8675 975
F 0 "U1" H 8903 1278 60  0000 L CNN
F 1 "TRRS" H 8903 1172 60  0000 L CNN
F 2 "footprints:trrs" H 8825 975 60  0001 C CNN
F 3 "" H 8825 975 60  0001 C CNN
	1    8675 975 
	-1   0    0    1   
$EndComp
Wire Wire Line
	7675 1025 8300 1025
Wire Wire Line
	8300 1025 8300 850 
Wire Wire Line
	8300 850  9250 850 
Wire Wire Line
	9250 850  9250 1275
Wire Wire Line
	9250 1275 9025 1275
Wire Wire Line
	7675 1225 8300 1225
Wire Wire Line
	8300 1225 8300 1500
Wire Wire Line
	8300 1500 9250 1500
Wire Wire Line
	9250 1500 9250 1375
Wire Wire Line
	9250 1375 9025 1375
$EndSCHEMATC
