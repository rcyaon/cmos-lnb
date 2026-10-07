<Qucs Schematic 26.1.1>
<Properties>
  <View=-1587,-423,3392,2028,0.614951,446,0>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_Supply_MkI.dat>
  <DataDisplay=LNA_Testing_Supply_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_Supply_MkI.m>
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
  <Vdc V2 1 -26 -97 18 -26 0 1 "1.2 V" 1>
  <GND * 1 254 -217 0 0 0 0>
  <GND * 1 -26 -67 0 0 0 0>
  <Pac P1 1 234 -27 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <C C1 1 304 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C2 1 604 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <Pac P2 1 684 -27 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 MHz" 0 "26.85" 0 "true" 0 "false" 0>
  <GND * 1 234 3 0 0 0 0>
  <GND * 1 684 3 0 0 0 0>
  <R R1 1 754 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 814 -87 0 0 0 0>
  <R R2 1 134 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 64 -77 0 0 0 0>
  <Vdc V1 1 254 -247 18 -26 0 1 "3.3 V" 1>
  <Sub SUB1 1 454 -97 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1>
  <NutmegEq NutmegEq2 1 64 163 -31 16 0 0 "ALL" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1 "max_gain=vecmax(s21_db)" 1>
  <NutmegEq NutmegEq3 1 354 153 -31 16 0 0 "ALL" 1 "delta=(s_1_1 * s_2_2) - (s_1_2 * s_2_1)" 1 "rollett=(1 - (abs(s_1_1) ^ 2) - (abs(s_2_2) ^ 2) + (abs(delta) ^ 2))  / max((2 * abs(s_1_2 * s_2_1)), 0.000000001)" 1 "mu=(1 - (abs(s_1_1) ^ 2))  / ( abs((s_2_2 - (delta * conj(s_1_1)))) + abs(s_1_2 * s_2_1) )" 1 "min_rollett=minimum(rollett)" 1>
  <.SP SP1 1 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "3 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <.SW SW1 1 -520 140 0 50 0 0 "SP1" 1 "lin" 1 "V1" 1 "0 V" 1 "4 V" 1 "100" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "Typical" 1>
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
  <Rect 360 824 772 464 3 #c0c0c0 1 00 0 2 0.2 4 0 -20 5 40 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.max_gain" #0000ff 1 3 0 0 0>
	  <Mkr 3.31313 556 -158 3 0 0>
	  <Mkr 2.90909 122 -319 3 0 0>
  </Rect>
  <Rect -490 828 772 468 3 #c0c0c0 1 00 1 0 0.2 4 1 1000 1000 6326.68 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.min_rollett" #0000ff 1 3 0 0 0>
	  <Mkr 3.31313 375 -387 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
