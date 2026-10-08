<Qucs Schematic 26.1.1>
<Properties>
  <View=-13517,-1126,5063,2443,0.67275,8415,445>
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
  <Vdc V2 1 -26 -97 18 -26 0 1 "1.2 V" 1>
  <GND * 1 254 -217 0 0 0 0>
  <GND * 1 -26 -67 0 0 0 0>
  <C C1 1 304 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C2 1 604 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 234 3 0 0 0 0>
  <.SP SP1 0 -356 143 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <GND * 1 814 -87 0 0 0 0>
  <R R2 1 134 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 64 -77 0 0 0 0>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <Vdc V1 1 254 -247 18 -26 0 1 "3.3 V" 1>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "ff" 1>
  <Sub SUB1 1 454 -97 -26 88 0 0 "Schematic/LNB/LNBMkII.sch" 0>
  <R R1 1 754 -97 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Pac P1 1 234 -27 18 -26 0 1 "1" 1 "50 Ohm" 1 "-40 dBm" 0 "1.7  GHz" 0 "26.85" 0 "true" 0 "false" 0>
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
  <784 -97 814 -97 "" 0 0 0 "">
  <814 -97 814 -87 "" 0 0 0 "">
  <634 -97 724 -97 "output" 710 -130 47 "">
  <-26 -147 374 -147 "" 0 0 0 "">
  <164 -97 234 -97 "" 0 0 0 "">
  <64 -97 104 -97 "" 0 0 0 "">
  <64 -97 64 -77 "" 0 0 0 "">
  <234 -97 234 -97 "input" 270 -130 0 "">
</Wires>
<Diagrams>
  <Rect 420 573 547 433 3 #c0c0c0 1 00 0 0 1e+09 3e+09 1 -0.0333724 0.05 0.367097 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/ac.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 1600 410 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(input)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(output)" #ff0000 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
