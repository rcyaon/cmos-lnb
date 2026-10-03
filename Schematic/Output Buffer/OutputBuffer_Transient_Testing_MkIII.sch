<Qucs Schematic 26.1.1>
<Properties>
  <View=-1601,-602,3032,401,1.4641,1968,329>
  <Grid=10,10,1>
  <DataSet=OutputBuffer_Transient_Testing_MkIII.dat>
  <DataDisplay=OutputBuffer_Transient_Testing_MkIII.dpl>
  <OpenDisplay=0>
  <Script=OutputBuffer_Transient_Testing_MkIII.m>
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
  <GND * 1 40 340 0 0 0 0>
  <Vac V1 1 40 220 18 -26 0 1 "10 mV" 1 "1.7 GHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <Vdc V2 1 40 300 18 -26 0 1 "2.5 V" 1>
  <R R1 1 90 170 -26 -53 0 2 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 170 -30 0 0 0 0>
  <Vdc V3 1 170 -60 18 -26 0 1 "5 V" 1>
  <R R2 1 330 80 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 600 260 0 0 0 0>
  <C C1 1 410 170 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <R R3 1 600 210 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 290 320 0 0 0 0>
  <.TR TR1 1 450 -220 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpiceInclude SpiceInclude1 1 830 -170 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 810 -80 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpiceLib SpiceLib2 1 810 20 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <BJT_SPICE Q1 1 260 200 -26 34 0 0 "4" 1 "npn" 1 "X" 1 "NPN_10P00X10P00 " 1 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <40 170 40 190 "" 0 0 0 "">
  <40 170 60 170 "input" 80 140 6 "">
  <40 250 40 270 "" 0 0 0 "">
  <40 330 40 340 "" 0 0 0 "">
  <330 -110 330 50 "" 0 0 0 "">
  <170 -110 170 -90 "" 0 0 0 "">
  <170 -110 330 -110 "" 0 0 0 "">
  <600 170 600 180 "" 0 0 0 "">
  <600 240 600 260 "" 0 0 0 "">
  <440 170 600 170 "output" 610 140 144 "">
  <330 110 330 170 "" 0 0 0 "">
  <330 170 380 170 "" 0 0 0 "">
  <340 300 340 320 "" 0 0 0 "">
  <260 230 260 300 "" 0 0 0 "">
  <340 300 260 300 "" 0 0 0 "">
  <330 170 260 170 "" 0 0 0 "">
  <230 200 120 200 "" 0 0 0 "">
  <120 200 120 170 "" 0 0 0 "">
  <290 320 340 320 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -300 -220 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
