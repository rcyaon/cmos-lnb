<Qucs Schematic 26.1.1>
<Properties>
  <View=-10662,-427,4553,1216,0.839055,8475,360>
  <Grid=10,10,1>
  <DataSet=LDO_Testing_MkII.dat>
  <DataDisplay=LDO_Testing_MkII.dpl>
  <OpenDisplay=0>
  <Script=LDO_Testing_MkII.m>
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
  <SpiceInclude SpiceInclude1 1 -220 -540 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 -244 -364 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -244 -274 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -244 -184 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -244 -94 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpicePar SpicePar1 1 240 20 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1>
  <Sub SUB1 1 110 280 -26 78 0 0 "Schematic/LDO/ReferenceMkI.sch" 0>
  <Idc I1 1 -160 260 -77 -26 0 3 "10 uA" 1>
  <GND * 1 -270 290 0 0 0 0>
  <Vdc V1 1 -270 260 -84 -26 1 1 "3.3 V" 1>
  <Vdc V2 1 -60 250 -26 18 0 0 "1.2 V" 1>
  <GND * 1 -110 270 0 0 0 0>
  <.TR TR1 1 -270 0 0 50 0 0 "lin" 1 "0" 1 "1 u" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "no" 0 "0" 0>
  <SpiceLib SpiceLib5 1 -244 -454 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FS" 1>
</Components>
<Wires>
  <190 320 260 320 "Out1V7" 260 360 47 "">
  <190 250 260 250 "Out2V5" 260 160 44 "">
  <-30 250 30 250 "" 0 0 0 "">
  <-160 290 -160 320 "" 0 0 0 "">
  <-160 180 -160 230 "" 0 0 0 "">
  <110 180 110 200 "" 0 0 0 "">
  <-160 180 -270 180 "" 0 0 0 "">
  <-270 180 -270 230 "" 0 0 0 "">
  <30 320 -160 320 "" 0 0 0 "">
  <110 180 -160 180 "" 0 0 0 "">
  <-90 250 -110 250 "" 0 0 0 "">
  <-110 250 -110 270 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -315 986 819 546 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(out1v7)" #0000ff 1 3 0 0 0>
	  <Mkr 5.00139e-07 469 -300 3 0 0>
	<"ngspice/tran.v(out2v5)" #ff0000 1 3 0 0 0>
	  <Mkr 5.00139e-07 479 -439 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
