<Qucs Schematic 26.1.1>
<Properties>
  <View=276,-464,1512,275,1.27508,0,61>
  <Grid=10,10,1>
  <DataSet=ImpedanceMatching_Testing_MkI.dat>
  <DataDisplay=ImpedanceMatching_Testing_MkI.dpl>
  <OpenDisplay=0>
  <Script=ImpedanceMatching_Testing_MkI.m>
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
  <NutmegEq NutmegEq1 1 550 170 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
  <.SP SP1 1 360 140 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 330 400 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 330 430 0 0 0 0>
  <GND * 1 710 430 0 0 0 0>
  <Pac P2 1 710 400 18 -26 0 1 "2" 1 "500 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Sub SUB1 1 560 370 -26 48 0 0 "./Schematic/Impedance Matching/ImpedanceMatchingMkII.sch" 0>
  <SpiceInclude SpiceInclude1 1 400 -410 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 376 -234 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 376 -144 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 376 -54 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 376 36 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpiceLib SpiceLib5 1 376 -324 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
</Components>
<Wires>
  <710 340 710 370 "" 0 0 0 "">
  <330 340 450 340 "" 0 0 0 "">
  <330 340 330 370 "" 0 0 0 "">
  <590 340 710 340 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 920 510 551 410 3 #c0c0c0 1 00 1 0 1e+09 5e+09 1 0.295271 0.2 1 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
