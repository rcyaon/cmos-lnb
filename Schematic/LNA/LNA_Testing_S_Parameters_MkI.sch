<Qucs Schematic 26.1.1>
<Properties>
  <View=-2027,-451,2749,2220,0.855838,1102,326>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_S_Parameters_MkI.dat>
  <DataDisplay=LNA_Testing_S_Parameters_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_S_Parameters_MkI.m>
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
  <.TR TR1 0 -666 143 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpiceInclude SpiceInclude1 1 -616 -397 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <.FFT FFT1 0 -526 143 0 50 0 0 "10GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <SpiceLib SpiceLib1 1 -640 -221 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -640 -131 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -640 -41 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -640 49 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <.SP SP1 1 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <NutmegEq NutmegEq3 1 514 153 -31 16 0 0 "ALL" 1 "delta=(s_1_1 * s_2_2) - (s_1_2 * s_2_1)" 1 "rollett=(1 - (abs(s_1_1) ^ 2) - (abs(s_2_2) ^ 2) + (abs(delta) ^ 2))  / max((2 * abs(s_1_2 * s_2_1)), 0.000000001)" 1 "mu=(1 - (abs(s_1_1) ^ 2))  / ( abs((s_2_2 - (delta * conj(s_1_1)))) + abs(s_1_2 * s_2_1) )" 1>
  <NutmegEq NutmegEq2 1 64 163 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1 "nf_db=10 * log( cy_2_2 / ( boltz * 10 * (z_2_1 ^ 2) ))" 1>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <Sub SUB1 1 440 -130 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <Pac P1 1 230 -80 -106 -26 1 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 230 -50 0 0 0 0>
  <Vdc V3 1 200 -180 -26 -56 1 0 "1.2 V" 1>
  <GND * 1 140 -150 0 0 0 0>
  <C C3 1 300 -130 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 270 -280 0 0 0 0>
  <Idc I1 1 540 -230 18 -26 1 3 "20 uA" 1>
  <Pac P2 1 650 -80 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 650 -50 0 0 0 0>
  <C C4 1 580 -130 -26 17 1 2 "10 pF" 1 "" 0 "neutral" 0>
  <Vdc V4 1 320 -300 -26 18 0 0 "3.3 V" 1>
</Components>
<Wires>
  <230 -180 360 -180 "" 0 0 0 "">
  <330 -130 360 -130 "" 0 0 0 "">
  <230 -130 230 -110 "" 0 0 0 "">
  <140 -180 170 -180 "" 0 0 0 "">
  <140 -180 140 -150 "" 0 0 0 "">
  <230 -130 270 -130 "" 0 0 0 "">
  <270 -300 290 -300 "" 0 0 0 "">
  <270 -300 270 -280 "" 0 0 0 "">
  <350 -300 440 -300 "" 0 0 0 "">
  <440 -300 540 -300 "" 0 0 0 "">
  <440 -300 440 -220 "" 0 0 0 "">
  <540 -300 540 -260 "" 0 0 0 "">
  <520 -180 540 -180 "" 0 0 0 "">
  <540 -200 540 -180 "" 0 0 0 "">
  <650 -130 650 -110 "" 0 0 0 "">
  <610 -130 650 -130 "" 0 0 0 "">
  <520 -130 550 -130 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -250 785 585 365 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -18 2 2 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.05342e+08 189 -347 3 0 0>
  </Rect>
  <Rect 489 792 580 362 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -40 20 40 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.05342e+08 154 -102 3 0 0>
	  <Mkr 1.7092e+09 229 -339 3 0 0>
	  <Mkr 2.01065e+09 347 -277 3 0 0>
  </Rect>
  <Rect -253 1237 588 367 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -8 1 1 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.30462e+08 133 -336 3 0 0>
	  <Mkr 2.01065e+09 347 -286 3 0 0>
  </Rect>
  <Rect 479 2178 580 368 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 13.6949 10 92.1059 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -255 1700 591 361 3 #c0c0c0 1 00 0 0 5e+08 1e+09 0 -40 40 160 1 -1 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.rollett" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 480 1706 578 366 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 0.8 0.2 2.64716 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect -250 2151 578 361 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -77339.6 200000 851069 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.rollett" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 487 1237 588 367 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -8.7474 2 0.785543 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s12_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.30462e+08 133 -156 3 0 0>
	  <Mkr 1.7092e+09 253 -213 3 0 0>
	  <Mkr 2.01065e+09 347 -286 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
