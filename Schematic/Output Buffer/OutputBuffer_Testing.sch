<Qucs Schematic 26.1.1>
<Properties>
  <View=-227,-89,1483,867,1.11518,96,99>
  <Grid=10,10,1>
  <DataSet=OutputBuffer_Testing.dat>
  <DataDisplay=OutputBuffer_Testing.dpl>
  <OpenDisplay=0>
  <Script=OutputBuffer_Testing.m>
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
  <GND * 1 360 170 0 0 0 0>
  <Vdc V1 1 360 140 18 -26 0 1 "5 V" 1>
  <.TR TR1 1 -110 530 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 -110 670 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 240 540 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 220 630 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <.FFT FFT1 1 30 530 0 50 0 0 "3GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <GND * 1 850 400 0 0 0 0>
  <R R2 1 240 360 15 -26 0 1 "50 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 240 480 0 0 0 0>
  <Vac V5 1 40 360 18 -26 0 1 "240 mV" 1 "1 GHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 -110 420 0 0 0 0>
  <GND * 1 -60 320 0 0 0 0>
  <C C2 1 190 310 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C3 1 660 310 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <R R1 1 850 350 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Idc I1 1 -110 220 -77 -26 0 3 "3 mA" 1>
  <MOS_SPICE X1 1 -110 300 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=4u W=20u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Vdc V6 1 240 450 18 -26 0 1 "2 V" 1>
  <Sub SUB1 1 440 300 -26 98 0 0 "OutputBufferMkVI.sch" 0>
</Components>
<Wires>
  <360 90 360 110 "" 0 0 0 "">
  <440 90 440 220 "" 0 0 0 "">
  <40 310 40 330 "" 0 0 0 "">
  <360 90 440 90 "" 0 0 0 "">
  <850 310 850 320 "" 0 0 0 "">
  <850 380 850 400 "" 0 0 0 "">
  <520 310 630 310 "output_dc" 570 280 11 "">
  <240 310 360 310 "" 0 0 0 "">
  <40 310 160 310 "input" 160 280 33 "">
  <220 310 240 310 "" 0 0 0 "">
  <240 310 240 330 "" 0 0 0 "">
  <240 390 240 420 "" 0 0 0 "">
  <690 310 850 310 "output" 860 280 97 "">
  <-110 260 -110 270 "" 0 0 0 "">
  <-60 300 -60 320 "" 0 0 0 "">
  <-90 300 -60 300 "" 0 0 0 "">
  <-110 330 -110 420 "" 0 0 0 "">
  <-150 300 -140 300 "" 0 0 0 "">
  <-150 260 -150 300 "" 0 0 0 "">
  <-110 250 -110 260 "" 0 0 0 "">
  <-150 260 -110 260 "" 0 0 0 "">
  <-110 260 360 260 "" 0 0 0 "">
  <-110 90 -110 190 "" 0 0 0 "">
  <-110 90 360 90 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 840 660 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
  <Tab 990 145 452 88 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(input)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output_dc)" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 1180 660 240 160 3 #c0c0c0 1 00 1 0 5e-09 2e-08 1 -0.12 0.1 0.12 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text -70 230 12 #000000 0 "0.8V">
</Paintings>
