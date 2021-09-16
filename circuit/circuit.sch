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
$Comp
L power:+5V #PWR0101
U 1 1 61423494
P 2950 1400
F 0 "#PWR0101" H 2950 1250 50  0001 C CNN
F 1 "+5V" H 2965 1573 50  0000 C CNN
F 2 "" H 2950 1400 50  0001 C CNN
F 3 "" H 2950 1400 50  0001 C CNN
	1    2950 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1400 2950 1550
Wire Wire Line
	2800 2250 2800 2350
$Comp
L power:Earth #PWR0103
U 1 1 61429E2B
P 2800 2350
F 0 "#PWR0103" H 2800 2100 50  0001 C CNN
F 1 "Earth" H 2800 2200 50  0001 C CNN
F 2 "" H 2800 2350 50  0001 C CNN
F 3 "~" H 2800 2350 50  0001 C CNN
	1    2800 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Photo D1
U 1 1 6142C863
P 2950 3100
F 0 "D1" V 2854 3257 50  0000 L CNN
F 1 "D_Photo" V 2945 3257 50  0000 L CNN
F 2 "" H 2900 3100 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2950 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3200 2950 3300
$Comp
L power:Earth #PWR0104
U 1 1 6142D9DD
P 2950 3300
F 0 "#PWR0104" H 2950 3050 50  0001 C CNN
F 1 "Earth" H 2950 3150 50  0001 C CNN
F 2 "" H 2950 3300 50  0001 C CNN
F 3 "~" H 2950 3300 50  0001 C CNN
	1    2950 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 6142F1A5
P 4800 2250
F 0 "R4" V 4595 2250 50  0000 C CNN
F 1 "1K" V 4686 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4840 2240 50  0001 C CNN
F 3 "~" H 4800 2250 50  0001 C CNN
	1    4800 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 6142FDA4
P 4950 2400
F 0 "R5" H 4882 2354 50  0000 R CNN
F 1 "6.6K" H 4882 2445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4990 2390 50  0001 C CNN
F 3 "~" H 4950 2400 50  0001 C CNN
	1    4950 2400
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR0105
U 1 1 6143068F
P 4950 2550
F 0 "#PWR0105" H 4950 2300 50  0001 C CNN
F 1 "Earth" H 4950 2400 50  0001 C CNN
F 2 "" H 4950 2550 50  0001 C CNN
F 3 "~" H 4950 2550 50  0001 C CNN
	1    4950 2550
	1    0    0    -1  
$EndComp
Text GLabel 5250 2250 2    50   Output ~ 0
IMPULSE_OUT
Wire Wire Line
	5250 2250 4950 2250
Connection ~ 4950 2250
Text Notes 3450 1400 0    50   ~ 0
A ratio of 1/18 here gives 0.28 volts of hysteresis on the comparison.
Connection ~ 4150 2550
Wire Wire Line
	4150 2550 4400 2550
$Comp
L power:+5V #PWR0106
U 1 1 61451173
P 4400 2550
F 0 "#PWR0106" H 4400 2400 50  0001 C CNN
F 1 "+5V" H 4415 2723 50  0000 C CNN
F 2 "" H 4400 2550 50  0001 C CNN
F 3 "" H 4400 2550 50  0001 C CNN
	1    4400 2550
	1    0    0    -1  
$EndComp
Connection ~ 3350 2050
Wire Wire Line
	3350 1950 3350 2050
Wire Wire Line
	4150 1950 3350 1950
Wire Wire Line
	4150 2050 4150 1950
Wire Wire Line
	4150 2550 4150 2450
Wire Wire Line
	3350 2550 4150 2550
$Comp
L dk_Linear-Amplifiers-Instrumentation-OP-Amps-Buffer-Amps:LM324AN U1
U 2 1 6144BF1C
P 4150 2250
F 0 "U1" H 4150 1847 60  0000 C CNN
F 1 "LM324AN" H 4150 1953 60  0000 C CNN
F 2 "digikey-footprints:DIP-14_W3mm" H 4350 2450 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Flm224" H 4350 2550 60  0001 L CNN
F 4 "296-9542-5-ND" H 4350 2650 60  0001 L CNN "Digi-Key_PN"
F 5 "LM324AN" H 4350 2750 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 4350 2850 60  0001 L CNN "Category"
F 7 "Linear - Amplifiers - Instrumentation, OP Amps, Buffer Amps" H 4350 2950 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Flm224" H 4350 3050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/LM324AN/296-9542-5-ND/412056" H 4350 3150 60  0001 L CNN "DK_Detail_Page"
F 10 "IC OPAMP GP 4 CIRCUIT 14DIP" H 4350 3250 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 4350 3350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4350 3450 60  0001 L CNN "Status"
	2    4150 2250
	1    0    0    1   
$EndComp
Connection ~ 3050 2250
Wire Wire Line
	3050 2050 3050 2250
Wire Wire Line
	3350 2050 3050 2050
Wire Wire Line
	3350 2150 3350 2050
$Comp
L dk_Linear-Amplifiers-Instrumentation-OP-Amps-Buffer-Amps:LM324AN U1
U 1 1 61447FCC
P 3350 2350
F 0 "U1" H 3350 1947 60  0000 C CNN
F 1 "LM324AN" H 3350 2053 60  0000 C CNN
F 2 "digikey-footprints:DIP-14_W3mm" H 3550 2550 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Flm224" H 3550 2650 60  0001 L CNN
F 4 "296-9542-5-ND" H 3550 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "LM324AN" H 3550 2850 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 3550 2950 60  0001 L CNN "Category"
F 7 "Linear - Amplifiers - Instrumentation, OP Amps, Buffer Amps" H 3550 3050 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Flm224" H 3550 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/LM324AN/296-9542-5-ND/412056" H 3550 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "IC OPAMP GP 4 CIRCUIT 14DIP" H 3550 3350 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 3550 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3550 3550 60  0001 L CNN "Status"
	1    3350 2350
	1    0    0    1   
$EndComp
Wire Wire Line
	3350 1700 3100 1700
Wire Wire Line
	4050 1700 4550 1700
Connection ~ 3700 1700
Wire Wire Line
	3700 1700 3750 1700
Wire Wire Line
	3650 1700 3700 1700
$Comp
L Device:R_US R2
U 1 1 6144199F
P 3500 1700
F 0 "R2" V 3705 1700 50  0000 C CNN
F 1 "1K" V 3614 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3540 1690 50  0001 C CNN
F 3 "~" H 3500 1700 50  0001 C CNN
	1    3500 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 1700 3700 2150
$Comp
L Device:R_US R3
U 1 1 61440E5A
P 3900 1700
F 0 "R3" V 4105 1700 50  0000 C CNN
F 1 "18K" V 4014 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3940 1690 50  0001 C CNN
F 3 "~" H 3900 1700 50  0001 C CNN
	1    3900 1700
	0    -1   -1   0   
$EndComp
Connection ~ 3750 2350
Wire Wire Line
	3850 2350 3750 2350
Connection ~ 4550 2250
Wire Wire Line
	4650 2250 4550 2250
Connection ~ 2950 2800
Wire Wire Line
	2950 2800 2950 2900
Wire Wire Line
	2950 2450 3050 2450
Wire Wire Line
	2950 2800 2950 2450
Wire Wire Line
	3100 2800 2950 2800
Wire Wire Line
	3750 2800 3750 2350
Wire Wire Line
	3400 2800 3750 2800
$Comp
L Device:R_US R1
U 1 1 6142A93A
P 3250 2800
F 0 "R1" V 3455 2800 50  0000 C CNN
F 1 "220K" V 3364 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3290 2790 50  0001 C CNN
F 3 "~" H 3250 2800 50  0001 C CNN
	1    3250 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 2250 2800 2250
Wire Wire Line
	3650 2350 3750 2350
Wire Wire Line
	3700 2150 3850 2150
Wire Wire Line
	4550 2250 4450 2250
Wire Wire Line
	4550 1700 4550 2250
Wire Wire Line
	2950 1850 2950 1950
$Comp
L power:Earth #PWR0102
U 1 1 6142409F
P 2950 1950
F 0 "#PWR0102" H 2950 1700 50  0001 C CNN
F 1 "Earth" H 2950 1800 50  0001 C CNN
F 2 "" H 2950 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_US RV_THRESHOLD1
U 1 1 61422150
P 2950 1700
F 0 "RV_THRESHOLD1" H 2882 1746 50  0000 R CNN
F 1 "200K" H 2882 1655 50  0000 R CNN
F 2 "" H 2950 1700 50  0001 C CNN
F 3 "~" H 2950 1700 50  0001 C CNN
	1    2950 1700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
