<Qucs Schematic 26.1.1>
<Properties>
  <View=-618,-183,1689,1107,1.21,881,248>
  <Grid=10,10,1>
  <DataSet=Reference_Testing_MkII.dat>
  <DataDisplay=Reference_Testing_MkII.dpl>
  <OpenDisplay=0>
  <Script=Reference_Testing_MkII.m>
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
  <Sub SUB1 1 420 310 -26 58 0 0 "/foss/designs/LNA/MkIII/Schematic/References/beta_mult.sch" 0>
  <Sub SUB2 1 790 280 -26 48 0 0 "/foss/designs/LNA/MkIII/Schematic/References/vref.sch" 0>
  <Vdc V1 1 160 280 18 -26 0 1 "5 V" 1>
  <GND * 1 160 330 0 0 0 0>
  <.TR TR1 1 530 80 0 50 0 0 "lin" 1 "0" 1 "1 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpiceInclude SpiceInclude1 1 1150 100 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 1126 276 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 1126 186 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "ss" 1>
</Components>
<Wires>
  <570 280 640 280 "" 0 0 0 "">
  <640 260 570 260 "" 0 0 0 "">
  <570 240 570 260 "" 0 0 0 "">
  <270 280 250 280 "" 0 0 0 "">
  <250 280 250 240 "" 0 0 0 "">
  <250 240 570 240 "" 0 0 0 "">
  <250 280 250 300 "" 0 0 0 "">
  <250 300 270 300 "" 0 0 0 "">
  <270 320 250 320 "" 0 0 0 "">
  <250 320 250 420 "" 0 0 0 "">
  <250 420 590 420 "" 0 0 0 "">
  <590 420 590 340 "" 0 0 0 "">
  <590 340 570 340 "" 0 0 0 "">
  <250 240 160 240 "" 0 0 0 "">
  <160 240 160 250 "" 0 0 0 "">
  <160 310 160 330 "" 0 0 0 "">
  <940 300 940 300 "v3" 970 270 0 "">
</Wires>
<Diagrams>
  <Rect 690 540 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(v3)" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
