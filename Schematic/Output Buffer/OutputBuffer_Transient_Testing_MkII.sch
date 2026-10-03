<Qucs Schematic 26.1.1>
<Properties>
  <View=-1240,-44,1988,942,0.893554,765,0>
  <Grid=10,10,1>
  <DataSet=OutputBuffer_Transient_Testing_MkII.dat>
  <DataDisplay=OutputBuffer_Transient_Testing_MkII.dpl>
  <OpenDisplay=0>
  <Script=OutputBuffer_Transient_Testing_MkII.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 -110 730 0 0 0 0>
  <.TR TR1 1 440 -170 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 440 -30 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 790 -160 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 770 -70 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <.FFT FFT1 1 580 -170 0 50 0 0 "3GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <GND * 1 90 510 0 0 0 0>
  <Vdc V7 1 90 480 18 -26 0 1 "5 V" 1>
  <Vac V5 1 -110 670 18 -26 0 1 "10 mV" 1 "1.7 GHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <SpiceLib SpiceLib2 1 770 20 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <GND * 1 490 870 0 0 0 0>
  <BJT_SPICE Q1 1 490 580 -26 34 0 0 "4" 1 "npn" 1 "X" 1 "NPN_10P00X10P00 m=1" 1 "" 0 "" 0 "" 0 "" 0>
  <C C4 1 130 580 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 340 730 0 0 0 0>
  <GND * 1 940 820 0 0 0 0>
  <C C5 1 750 720 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <R R7 1 940 770 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R6 1 490 780 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 550 640 0 0 0 0>
  <R R5 1 340 640 -111 -26 0 3 "30 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V8 1 340 700 18 -26 0 1 "5 V" 1>
</Components>
<Wires>
  <-110 700 -110 730 "" 0 0 0 "">
  <160 580 340 580 "" 0 0 0 "">
  <90 430 90 450 "" 0 0 0 "">
  <490 610 490 720 "" 0 0 0 "">
  <520 580 550 580 "" 0 0 0 "">
  <550 580 550 640 "" 0 0 0 "">
  <340 580 340 610 "" 0 0 0 "">
  <340 580 460 580 "input_dc" 300 540 16 "">
  <-110 580 100 580 "" 0 0 0 "">
  <-110 580 -110 640 "" 0 0 0 "">
  <490 810 490 870 "" 0 0 0 "">
  <490 430 490 550 "" 0 0 0 "">
  <90 430 490 430 "" 0 0 0 "">
  <940 720 940 740 "" 0 0 0 "">
  <940 800 940 820 "" 0 0 0 "">
  <780 720 940 720 "output" 940 610 97 "">
  <490 720 490 750 "" 0 0 0 "">
  <490 720 720 720 "output_dc" 680 630 99 "">
  <-110 580 -110 580 "input" 110 550 0 "">
</Wires>
<Diagrams>
  <Rect -240 -60 240 160 3 #c0c0c0 1 00 1 0 5e-09 2e-08 1 -0.012 0.01 0.012 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
	<"ngspice/tran.v(input)" #0000ff 0 3 0 0 0>
  </Rect>
  <Tab 750 245 548 97 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(input)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output_dc)" #0000ff 0 3 1 0 0>
	<"ngspice/v(input_dc)" #0000ff 0 3 0 0 0>
  </Tab>
  <Rect 100 -60 240 160 3 #c0c0c0 1 00 1 0 5e-09 2e-08 1 -0.000169297 0.0001 2.06628e-05 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
