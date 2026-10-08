<Qucs Schematic 26.1.1>
<Properties>
  <View=-5226,-604,8857,2858,0.890896,3218,953>
  <Grid=10,10,1>
  <DataSet=LNB_Testing_Transient_MkI.dat>
  <DataDisplay=LNB_Testing_Transient_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNB_Testing_Transient_MkI.m>
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
  <.TR TR1 1 -666 143 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpiceInclude SpiceInclude1 1 -616 -397 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <.FFT FFT1 1 -526 143 0 50 0 0 "10GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <SpiceLib SpiceLib1 1 -640 -221 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -640 -131 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -640 -41 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -640 49 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <.SP SP1 0 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "ff" 1>
  <GND * 1 220 0 0 0 0 0>
  <Vdc V3 1 170 -130 -26 -56 1 0 "1.2 V" 1>
  <GND * 1 110 -100 0 0 0 0>
  <C C3 1 290 -80 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 260 -230 0 0 0 0>
  <C C4 1 880 -80 -26 17 1 2 "10 pF" 1 "" 0 "neutral" 0>
  <Vdc V4 1 310 -250 -26 18 0 0 "3.3 V" 1>
  <Pac P2 1 220 -30 -106 -26 1 1 "1" 1 "50 Ohm" 1 "-30 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Idc I2 1 670 -180 18 -26 1 3 "150 uA" 1>
  <Sub SUB2 1 430 -80 -26 138 0 0 "Schematic/LNB/LNBMkII.sch" 0>
  <R R1 1 940 -30 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 940 0 0 0 0 0>
  <Idc I3 1 820 -180 18 -26 1 3 "20 uA" 1>
  <Idc I1 1 530 -180 18 -26 1 3 "2000 uA" 1>
  <NutmegEq NutmegEq1 1 860 350 -31 16 0 0 "FFT1" 1 "p_in_db=dB(v(input)) - (10 * log10(50)) + 27" 1 "p_out_db=dB(v(output)) - (10 * log10(50)) + 27" 1>
</Components>
<Wires>
  <200 -130 350 -130 "" 0 0 0 "">
  <320 -80 350 -80 "" 0 0 0 "">
  <220 -80 220 -60 "input" 160 -100 6 "">
  <110 -130 140 -130 "" 0 0 0 "">
  <110 -130 110 -100 "" 0 0 0 "">
  <220 -80 260 -80 "" 0 0 0 "">
  <260 -250 280 -250 "" 0 0 0 "">
  <260 -250 260 -230 "" 0 0 0 "">
  <340 -250 430 -250 "" 0 0 0 "">
  <430 -250 530 -250 "" 0 0 0 "">
  <430 -250 430 -170 "" 0 0 0 "">
  <530 -250 530 -210 "" 0 0 0 "">
  <510 -130 530 -130 "" 0 0 0 "">
  <530 -150 530 -130 "" 0 0 0 "">
  <910 -80 940 -80 "output" 950 -110 25 "">
  <510 -80 850 -80 "" 0 0 0 "">
  <670 -250 670 -210 "" 0 0 0 "">
  <670 -150 670 -30 "" 0 0 0 "">
  <940 -80 940 -60 "" 0 0 0 "">
  <820 20 820 -150 "" 0 0 0 "">
  <820 -210 820 -250 "" 0 0 0 "">
  <530 -250 670 -250 "" 0 0 0 "">
  <510 -30 670 -30 "" 0 0 0 "">
  <510 20 820 20 "" 0 0 0 "">
  <670 -250 820 -250 "" 0 0 0 "">
  <350 20 350 20 "LO" 290 40 0 "">
</Wires>
<Diagrams>
  <Rect 130 543 547 433 3 #c0c0c0 1 00 0 0 1e+09 3e+09 1 -0.0333724 0.05 0.367097 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/ac.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 820 270 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect -1270 1163 956 607 3 #c0c0c0 1 00 0 0 5e+08 5e+09 0 -60 10 0 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.p_in_db" #0000ff 1 3 0 0 0>
	  <Mkr 1.69992e+09 393 -463 3 0 0>
	  <Mkr 1.69892e+09 382 -207 3 0 0>
	<"ngspice/ac.p_out_db" #ff0000 1 3 0 0 0>
	  <Mkr 3.40983e+08 49 -588 3 0 0>
	  <Mkr 1.35893e+09 244 -573 3 0 0>
	  <Mkr 3.05885e+09 702 -421 3 0 0>
	  <Mkr 2.71786e+09 630 -495 3 0 0>
  </Rect>
  <Rect 1060 800 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(lo)" #0000ff 1 3 0 0 0>
	  <Mkr 1.35893e+09 93 -178 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
