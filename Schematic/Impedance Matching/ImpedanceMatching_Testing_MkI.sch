<Qucs Schematic 26.1.1>
<Properties>
  <View=-2837,-2467,9337,4217,0.491599,1109,985>
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
  <NutmegEq NutmegEq1 1 -300 80 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
  <.SP SP1 1 -490 50 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 -520 310 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 -520 340 0 0 0 0>
  <GND * 1 -140 340 0 0 0 0>
  <Pac P2 1 -140 310 18 -26 0 1 "2" 1 "500 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Sub SUB1 1 -290 280 -26 48 0 0 "./Schematic/Impedance Matching/ImpedanceMatchingMkII.sch" 0>
  <SpiceInclude SpiceInclude1 1 -480 -540 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 -504 -364 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -504 -274 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -504 -184 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -504 -94 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpiceLib SpiceLib5 1 -504 -454 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpicePar SpicePar1 1 -120 80 -29 16 0 0 "sw_stat_global=1" 1 "sw_stat_mismatch=1" 1 "cap_mc_skew=3" 1>
</Components>
<Wires>
  <-140 250 -140 280 "" 0 0 0 "">
  <-520 250 -400 250 "" 0 0 0 "">
  <-520 250 -520 280 "" 0 0 0 "">
  <-260 250 -140 250 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 120 259 764 471 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -50 20 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 2.01065e+09 329 -180 3 0 0>
	  <Mkr 9.05342e+08 210 -449 3 0 0>
	  <Mkr 1.7092e+09 286 -113 3 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
	  <Mkr 1.7092e+09 400 -429 3 0 0>
	  <Mkr 9.05342e+08 230 -52 3 0 0>
	  <Mkr 2.01065e+09 569 -401 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
