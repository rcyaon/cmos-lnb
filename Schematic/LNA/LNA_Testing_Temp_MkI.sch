<Qucs Schematic 26.1.1>
<Properties>
  <View=-1070,-488,1483,869,1.18238,1031,124>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_Temp_MkI.dat>
  <DataDisplay=LNA_Testing_Temp_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_Temp_MkI.m>
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
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1>
  <NutmegEq NutmegEq3 1 354 153 -31 16 0 0 "ALL" 1 "delta=(s_1_1 * s_2_2) - (s_1_2 * s_2_1)" 1 "rollett=(1 - (abs(s_1_1) ^ 2) - (abs(s_2_2) ^ 2) + (abs(delta) ^ 2))  / max((2 * abs(s_1_2 * s_2_1)), 0.000000001)" 1 "mu=(1 - (abs(s_1_1) ^ 2))  / ( abs((s_2_2 - (delta * conj(s_1_1)))) + abs(s_1_2 * s_2_1) )" 1 "min_rollett=minimum(rollett)" 1>
  <.SP SP1 1 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "3 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.SW SW1 1 -520 140 0 50 0 0 "SP1" 1 "lin" 1 "Temp" 1 "-25 C" 1 "125 C" 1 "100" 1>
  <NutmegEq NutmegEq2 1 64 163 -31 16 0 0 "ALL" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1 "max_gain=vecmax(s21_db)" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FF" 1>
  <Sub SUB1 1 360 -120 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <Pac P1 1 150 -70 -106 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 150 -40 0 0 0 0>
  <Vdc V1 1 120 -170 -26 -56 1 0 "1.2 V" 1>
  <GND * 1 60 -140 0 0 0 0>
  <C C1 1 220 -120 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 190 -270 0 0 0 0>
  <Idc I1 1 460 -220 18 -26 1 3 "20 uA" 1>
  <Pac P2 1 570 -70 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 570 -40 0 0 0 0>
  <C C2 1 500 -120 -26 17 1 2 "10 pF" 1 "" 0 "neutral" 0>
  <Vdc V2 1 240 -290 -26 18 0 0 "3.3 V" 1>
</Components>
<Wires>
  <150 -170 280 -170 "" 0 0 0 "">
  <250 -120 280 -120 "" 0 0 0 "">
  <150 -120 150 -100 "" 0 0 0 "">
  <60 -170 90 -170 "" 0 0 0 "">
  <60 -170 60 -140 "" 0 0 0 "">
  <150 -120 190 -120 "" 0 0 0 "">
  <190 -290 210 -290 "" 0 0 0 "">
  <190 -290 190 -270 "" 0 0 0 "">
  <270 -290 360 -290 "" 0 0 0 "">
  <360 -290 460 -290 "" 0 0 0 "">
  <360 -290 360 -210 "" 0 0 0 "">
  <460 -290 460 -250 "" 0 0 0 "">
  <440 -170 460 -170 "" 0 0 0 "">
  <460 -190 460 -170 "" 0 0 0 "">
  <570 -120 570 -100 "" 0 0 0 "">
  <530 -120 570 -120 "" 0 0 0 "">
  <440 -120 470 -120 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 360 824 772 464 3 #c0c0c0 1 00 1 2 0.2 4 1 -20 5 40 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.max_gain" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect -490 828 772 468 3 #c0c0c0 1 00 1 0 0.2 4 1 1000 1000 6326.68 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.min_rollett" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
