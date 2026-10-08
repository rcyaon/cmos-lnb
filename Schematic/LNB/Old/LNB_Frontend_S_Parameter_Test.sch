<Qucs Schematic 26.1.1>
<Properties>
  <View=-783,-500,3393,1732,1.18446,1389,822>
  <Grid=10,10,1>
  <DataSet=LNB_Frontend_S_Parameter_Test.dat>
  <DataDisplay=LNB_Frontend_S_Parameter_Test.dpl>
  <OpenDisplay=0>
  <Script=LNB_Frontend_S_Parameter_Test.m>
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
  <Sub SUB1 1 640 370 -26 78 0 0 "./Schematic/LNB/LNB_Frontend.sch" 0>
  <Pac P1 1 520 420 -106 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 520 450 0 0 0 0>
  <GND * 1 760 450 0 0 0 0>
  <Pac P2 1 760 420 18 -26 0 1 "2" 1 "10000 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Vdc V3 1 440 260 18 -26 0 1 "3.5 V" 1>
  <Vdc V2 1 350 260 18 -26 0 1 "5 V" 1>
  <Vdc V1 1 250 260 18 -26 0 1 "2 V" 1>
  <GND * 1 440 290 0 0 0 0>
  <GND * 1 350 290 0 0 0 0>
  <GND * 1 250 290 0 0 0 0>
  <SpiceInclude SpiceInclude1 1 1060 -150 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 1036 26 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 1036 -64 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpiceLib SpiceLib3 1 1036 116 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib4 1 1036 206 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib5 1 1036 296 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpicePar SpicePar1 1 1230 410 -29 16 0 0 "sw_stat_global=1" 1 "sw_stat_mismatch=1" 1>
  <.SP SP1 1 1030 390 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <NutmegEq NutmegEq1 1 1450 400 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
</Components>
<Wires>
  <520 370 560 370 "" 0 0 0 "">
  <520 370 520 390 "" 0 0 0 "">
  <720 370 760 370 "" 0 0 0 "">
  <760 370 760 390 "" 0 0 0 "">
  <440 210 440 230 "" 0 0 0 "">
  <590 210 590 290 "" 0 0 0 "">
  <440 210 590 210 "" 0 0 0 "">
  <640 190 640 290 "" 0 0 0 "">
  <350 190 640 190 "" 0 0 0 "">
  <350 190 350 230 "" 0 0 0 "">
  <690 170 690 290 "" 0 0 0 "">
  <250 170 690 170 "" 0 0 0 "">
  <250 170 250 230 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 300 854 544 274 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -1.93536 5 21.2889 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s12_db" #ff0000 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff00ff 0 3 0 0 0>
	<"ngspice/ac.s22_db" #00ff00 0 3 0 0 0>
  </Rect>
  <Rect 1000 854 544 274 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -500 100 100 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
