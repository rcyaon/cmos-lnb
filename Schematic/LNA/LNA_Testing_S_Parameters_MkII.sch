<Qucs Schematic 26.1.1>
<Properties>
  <View=-1587,-451,2953,2087,0.347124,0,0>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_S_Parameters_MkII.dat>
  <DataDisplay=LNA_Testing_S_Parameters_MkII.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_S_Parameters_MkII.m>
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
  <Vdc V2 1 -26 -97 18 -26 0 1 "1.2 V" 1>
  <GND * 1 254 -217 0 0 0 0>
  <GND * 1 -26 -67 0 0 0 0>
  <Pac P1 1 234 -27 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <C C1 1 304 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C2 1 604 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <Pac P2 1 684 -27 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 234 3 0 0 0 0>
  <GND * 1 684 3 0 0 0 0>
  <.SP SP1 1 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <NutmegEq NutmegEq3 1 514 153 -31 16 0 0 "ALL" 1 "delta=(s_1_1 * s_2_2) - (s_1_2 * s_2_1)" 1 "rollett=(1 - (abs(s_1_1) ^ 2) - (abs(s_2_2) ^ 2) + (abs(delta) ^ 2))  / max((2 * abs(s_1_2 * s_2_1)), 0.000000001)" 1 "mu=(1 - (abs(s_1_1) ^ 2))  / ( abs((s_2_2 - (delta * conj(s_1_1)))) + abs(s_1_2 * s_2_1) )" 1>
  <R R1 1 754 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 814 -87 0 0 0 0>
  <R R2 1 134 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 64 -77 0 0 0 0>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <Vdc V1 1 254 -247 18 -26 0 1 "3.3 V" 1>
  <Sub SUB1 1 454 -97 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <NutmegEq NutmegEq2 1 64 163 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1 "nf_db=10 * log( cy_2_2 / ( boltz * 10 * (y_2_1 ^ 2) ))" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FF" 1>
</Components>
<Wires>
  <-26 -147 -26 -127 "" 0 0 0 "">
  <254 -297 454 -297 "" 0 0 0 "">
  <254 -297 254 -277 "" 0 0 0 "">
  <454 -297 454 -187 "" 0 0 0 "">
  <234 -97 274 -97 "" 0 0 0 "">
  <234 -97 234 -57 "" 0 0 0 "">
  <334 -97 374 -97 "" 0 0 0 "">
  <534 -97 574 -97 "" 0 0 0 "">
  <634 -97 684 -97 "" 0 0 0 "">
  <684 -97 684 -57 "" 0 0 0 "">
  <784 -97 814 -97 "" 0 0 0 "">
  <814 -97 814 -87 "" 0 0 0 "">
  <684 -97 724 -97 "" 0 0 0 "">
  <-26 -147 374 -147 "" 0 0 0 "">
  <164 -97 234 -97 "" 0 0 0 "">
  <64 -97 104 -97 "" 0 0 0 "">
  <64 -97 64 -77 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect -260 785 585 365 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -21.713 5 1.96421 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.05342e+08 189 -347 3 0 0>
	  <Mkr 1.7092e+09 35 -64 3 0 0>
	  <Mkr 2.01065e+09 325 -199 3 0 0>
  </Rect>
  <Rect 489 792 580 362 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -40 20 40 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s21_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.05342e+08 144 -192 3 0 0>
	  <Mkr 1.7092e+09 229 -339 3 0 0>
	  <Mkr 2.01065e+09 347 -277 3 0 0>
  </Rect>
  <Rect -253 1237 588 367 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -8.67355 2 0.778861 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s22_db" #0000ff 0 3 0 0 0>
	  <Mkr 9.30462e+08 133 -336 3 0 0>
	  <Mkr 1.7092e+09 273 -253 3 0 0>
	  <Mkr 2.01065e+09 417 -176 3 0 0>
  </Rect>
  <Rect 1449 778 580 368 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -6.36762 20 168.531 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.nf" #0000ff 0 3 0 0 0>
	<"ngspice/ac.nf_db" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 490 2046 585 376 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 0.8 0.2 2.62688 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.mu" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect -260 2041 578 361 3 #c0c0c0 1 00 1 0 5e+08 5e+09 0 -10000 10000 100000 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.rollett" #0000ff 1 3 0 0 0>
	  <Mkr 4.78291e+08 155 -303 3 0 0>
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
