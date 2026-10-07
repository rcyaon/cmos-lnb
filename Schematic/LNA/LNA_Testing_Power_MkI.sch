<Qucs Schematic 26.1.1>
<Properties>
  <View=-5949,-1223,14078,6477,0.67292,3560,531>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_Power_MkI.dat>
  <DataDisplay=LNA_Testing_Power_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_Power_MkI.m>
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
  <SpiceInclude SpiceInclude1 1 -616 -397 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 -640 -221 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -640 -131 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -640 -41 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -640 49 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpicePar SpicePar1 1 -436 153 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <Sub SUB1 1 390 -110 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <Vdc V1 1 40 -110 18 -26 0 1 "1.2 V" 1>
  <GND * 1 40 -80 0 0 0 0>
  <Vdc V2 1 40 -240 18 -26 0 1 "3.3 V" 1>
  <IProbe Pr1 1 220 -300 -26 16 0 0>
  <GND * 1 40 -210 0 0 0 0>
  <C C1 1 240 -110 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 150 -10 0 0 0 0>
  <C C2 1 530 -110 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 700 -100 0 0 0 0>
  <R R1 1 620 -110 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Pac P1 1 150 -40 18 -26 0 1 "1" 1 "50 Ohm" 1 "-20 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <.TR TR1 1 -656 143 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <NutmegEq NutmegEq1 1 -390 310 -31 16 0 0 "ALL" 1 "pow=I(V2) * -3.3" 1 "avg_pow=mean(pow)" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FS" 1>
</Components>
<Wires>
  <40 -160 40 -140 "" 0 0 0 "">
  <40 -300 40 -270 "" 0 0 0 "">
  <250 -300 390 -300 "" 0 0 0 "">
  <390 -300 390 -200 "" 0 0 0 "">
  <210 -110 150 -110 "input" 200 -140 39 "">
  <150 -110 150 -70 "" 0 0 0 "">
  <270 -110 310 -110 "" 0 0 0 "">
  <190 -300 40 -300 "" 0 0 0 "">
  <310 -160 40 -160 "" 0 0 0 "">
  <470 -110 500 -110 "" 0 0 0 "">
  <560 -110 590 -110 "output" 610 -140 17 "">
  <650 -110 700 -110 "" 0 0 0 "">
  <700 -110 700 -100 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -82 599 702 449 3 #c0c0c0 1 00 1 0 2e-09 2e-08 1 0.00980008 0.0005 0.0145 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.pow" #0000ff 0 3 0 0 0>
  </Rect>
  <Tab 680 430 300 200 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.avg_pow" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
