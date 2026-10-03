<Qucs Schematic 26.1.1>
<Properties>
  <View=-2060,-550,2429,699,0.705186,974,0>
  <Grid=10,10,1>
  <DataSet=OutputBuffer_Transient_Testing.dat>
  <DataDisplay=OutputBuffer_Transient_Testing.dpl>
  <OpenDisplay=0>
  <Script=OutputBuffer_Transient_Testing.m>
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
  <GND * 1 80 720 0 0 0 0>
  <.TR TR1 1 440 -170 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 440 -30 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 790 -160 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 770 -70 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <.FFT FFT1 1 580 -170 0 50 0 0 "3GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <GND * 1 770 560 0 0 0 0>
  <C C3 1 580 470 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 -310 190 0 0 0 0>
  <Vdc V7 1 -310 160 18 -26 0 1 "5 V" 1>
  <GND * 1 -130 710 0 0 0 0>
  <GND * 1 -80 610 0 0 0 0>
  <Vac V5 1 80 600 18 -26 0 1 "10 mV" 1 "1.7 GHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <NutmegEq NutmegEq1 1 410 820 -31 16 0 0 "ALL" 1 "in=v(input) - v(input_dc)" 1>
  <Idc I2 1 -130 510 -77 -26 0 3 "1 mA" 1>
  <GND * 1 450 590 0 0 0 0>
  <GND * 1 390 670 0 0 0 0>
  <MOS_SPICE X3 1 -130 590 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Vdc V8 1 80 680 18 -26 0 1 "2.5 V" 1>
  <R R3 1 130 550 -26 -53 0 2 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <MOS_SPICE X5 1 390 310 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=2.0u nf=2 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X4 1 390 550 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=2.00u nf=2 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 270 380 0 0 0 0>
  <Vdc V9 1 270 350 18 -26 0 1 "1 V" 1>
  <R R1 1 770 510 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <80 550 80 570 "" 0 0 0 "">
  <770 470 770 480 "" 0 0 0 "">
  <770 540 770 560 "" 0 0 0 "">
  <610 470 770 470 "output" 780 390 97 "">
  <-130 550 -130 560 "" 0 0 0 "">
  <-80 590 -80 610 "" 0 0 0 "">
  <-110 590 -80 590 "" 0 0 0 "">
  <-130 620 -130 710 "" 0 0 0 "">
  <-170 590 -160 590 "" 0 0 0 "">
  <-170 550 -170 590 "" 0 0 0 "">
  <-130 540 -130 550 "" 0 0 0 "">
  <-170 550 -130 550 "" 0 0 0 "">
  <-310 90 -130 90 "" 0 0 0 "">
  <-310 90 -310 130 "" 0 0 0 "">
  <-130 90 390 90 "" 0 0 0 "">
  <80 550 100 550 "" 0 0 0 "">
  <80 630 80 650 "" 0 0 0 "">
  <80 710 80 720 "" 0 0 0 "">
  <390 470 550 470 "output_dc" 590 220 106 "">
  <410 550 450 550 "" 0 0 0 "">
  <450 550 450 590 "" 0 0 0 "">
  <390 580 390 670 "" 0 0 0 "">
  <390 340 390 470 "" 0 0 0 "">
  <-130 90 -130 480 "" 0 0 0 "">
  <390 90 390 250 "" 0 0 0 "">
  <390 470 390 520 "" 0 0 0 "">
  <410 310 450 310 "" 0 0 0 "">
  <450 250 450 310 "" 0 0 0 "">
  <390 250 390 280 "" 0 0 0 "">
  <390 250 450 250 "" 0 0 0 "">
  <360 550 160 550 "input" 80 410 187 "">
  <360 310 270 310 "" 0 0 0 "">
  <270 310 270 320 "" 0 0 0 "">
  <80 630 80 630 "input_dc" -30 640 0 "">
</Wires>
<Diagrams>
  <Rect -240 -60 240 160 3 #c0c0c0 1 00 1 0 5e-09 2e-08 1 -0.30024 2 3.30043 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
	<"ngspice/tran.in" #ff00ff 0 3 0 0 0>
  </Rect>
  <Tab 990 145 452 88 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(input)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output)" #0000ff 0 3 1 0 0>
	<"ngspice/v(output_dc)" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 100 -60 240 160 3 #c0c0c0 1 00 1 0 5e-09 2e-08 1 -0.12 0.1 0.12 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(output)" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
