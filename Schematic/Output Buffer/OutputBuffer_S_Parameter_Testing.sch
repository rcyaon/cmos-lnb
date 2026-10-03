<Qucs Schematic 26.1.1>
<Properties>
  <View=-1483,-100,2214,1822,1.10568,1149,158>
  <Grid=10,10,1>
  <DataSet=OutputBuffer_S_Parameter_Testing.dat>
  <DataDisplay=OutputBuffer_S_Parameter_Testing.dpl>
  <OpenDisplay=0>
  <Script=OutputBuffer_S_Parameter_Testing.m>
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
  <GND * 1 40 390 0 0 0 0>
  <.DC DC1 1 -370 680 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 240 540 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 220 630 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <GND * 1 850 400 0 0 0 0>
  <R R2 1 240 360 15 -26 0 1 "50 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 240 480 0 0 0 0>
  <NutmegEq NutmegEq1 1 240 740 -31 16 0 0 "ALL" 1 "y=1" 1>
  <Vdc V6 1 240 450 18 -26 0 1 "4 V" 1>
  <C C2 1 190 310 -26 17 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <C C3 1 660 310 -26 17 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 -370 520 0 50 0 0 "lin" 1 "1 MHz" 1 "3 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 -280 280 0 0 0 0>
  <Vdc V7 1 -280 250 18 -26 0 1 "5 V" 1>
  <GND * 1 -90 420 0 0 0 0>
  <GND * 1 -40 320 0 0 0 0>
  <MOS_SPICE X1 1 -90 300 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Idc I1 1 -90 220 -77 -26 0 3 "1 mA" 1>
  <Pac P2 1 850 350 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Pac P1 1 40 360 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Sub SUB1 1 440 300 -26 98 0 0 "OutputBufferMkIV.sch" 0>
</Components>
<Wires>
  <40 310 40 330 "" 0 0 0 "">
  <850 310 850 320 "" 0 0 0 "">
  <850 380 850 400 "" 0 0 0 "">
  <520 310 630 310 "output_dc" 570 280 11 "">
  <240 310 360 310 "" 0 0 0 "">
  <40 310 160 310 "input" 160 280 33 "">
  <220 310 240 310 "" 0 0 0 "">
  <240 310 240 330 "" 0 0 0 "">
  <240 390 240 420 "" 0 0 0 "">
  <690 310 850 310 "output" 860 280 97 "">
  <-90 260 -90 270 "" 0 0 0 "">
  <-40 300 -40 320 "" 0 0 0 "">
  <-70 300 -40 300 "" 0 0 0 "">
  <-90 330 -90 420 "" 0 0 0 "">
  <-130 300 -120 300 "" 0 0 0 "">
  <-130 260 -130 300 "" 0 0 0 "">
  <-90 250 -90 260 "" 0 0 0 "">
  <-130 260 -90 260 "" 0 0 0 "">
  <-90 130 440 130 "" 0 0 0 "">
  <-90 260 360 260 "" 0 0 0 "">
  <-280 130 -90 130 "" 0 0 0 "">
  <-280 130 -280 220 "" 0 0 0 "">
  <440 220 440 130 "" 0 0 0 "">
  <-90 190 -90 130 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Tab 990 145 452 88 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(input)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output_dc)" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 980 810 609 374 3 #c0c0c0 1 00 1 0 2e+08 3e+09 1 -5249.1 10000 60000 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.z_1_1" #0000ff 0 3 0 0 0>
	  <Mkr 1.70395e+09 63 -347 3 1 0>
	<"ngspice/ac.s_2_2" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 980 1280 609 374 3 #c0c0c0 1 00 1 0 2e+08 3e+09 1 -5249.1 10000 60000 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s_2_1" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
