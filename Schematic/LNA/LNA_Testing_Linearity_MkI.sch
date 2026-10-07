<Qucs Schematic 26.1.1>
<Properties>
  <View=-5949,-2036,14078,7529,0.556132,2956,883>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_Linearity_MkI.dat>
  <DataDisplay=LNA_Testing_Linearity_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_Linearity_MkI.m>
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
  <GND * 1 504 -217 0 0 0 0>
  <GND * 1 -26 -67 0 0 0 0>
  <C C1 1 554 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C2 1 854 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 484 43 0 0 0 0>
  <GND * 1 1064 -87 0 0 0 0>
  <R R2 1 134 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 64 -77 0 0 0 0>
  <Vdc V1 1 504 -247 18 -26 0 1 "3.3 V" 1>
  <Sub SUB1 1 704 -97 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <R R1 1 1004 -97 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1 "p_val=-60" 1>
  <GND * 1 344 43 0 0 0 0>
  <.FFT FFT1 0 -646 153 0 50 0 0 "10GHz" 1 "0.2MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <Pac P1 1 484 13 18 -26 0 1 "1" 1 "100 Ohm" 1 "{p_val}" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Pac P2 1 344 13 18 -26 0 1 "2" 1 "100 Ohm" 1 "{p_val}" 0 "1.75 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FF" 1>
  <.CUSTOMSIM CUSTOM1 1 -470 160 0 31 0 0 "set appendwrite\n  \nalterparam P_val = -30\nreset\ntran 5e-11 1e-06 0\nset specwindow=hanning\nlinearize v(input) v(output) \nfft v(input) v(output) \nlet out_p1 = v(output)\nlet out_p1_db = (log10(out_p1) * 20) - (10 * log10(50)) + 30\nlet in_p1 = v(input)\nlet in_p1_db = (log10(in_p1) * 20) - (10 * log10(50)) + 30\n\n\nwrite linearity_p1.raw in_p1 out_p1\n\n\nalterparam P_val = -8\nreset\ntran 5e-11 1e-06 0\nset specwindow=none\nlinearize v(input) v(output) \nfft v(input) v(output) \nlet out_p2 = v(output)\nlet out_p2_db = (log10(out_p2) * 20) - (10 * log10(50)) + 30\nlet in_p2 = v(input)\nlet in_p2_db = (log10(in_p2) * 20) - (10 * log10(50)) + 30\n\n\nwrite linearity_p2.raw in_p2 out_p2\nreset\n\nunset appendwrite\n\n" 1 "" 0 "linearity_p1.raw;linearity_p2.raw" 0>
</Components>
<Wires>
  <-26 -147 -26 -127 "" 0 0 0 "">
  <504 -297 704 -297 "" 0 0 0 "">
  <504 -297 504 -277 "" 0 0 0 "">
  <704 -297 704 -187 "" 0 0 0 "">
  <484 -97 524 -97 "" 0 0 0 "">
  <484 -97 484 -17 "input" 560 -30 12 "">
  <584 -97 624 -97 "" 0 0 0 "">
  <784 -97 824 -97 "" 0 0 0 "">
  <1034 -97 1064 -97 "" 0 0 0 "">
  <1064 -97 1064 -87 "" 0 0 0 "">
  <884 -97 974 -97 "output" 960 -150 48 "">
  <-26 -147 624 -147 "" 0 0 0 "">
  <64 -97 104 -97 "" 0 0 0 "">
  <64 -97 64 -77 "" 0 0 0 "">
  <164 -97 344 -97 "" 0 0 0 "">
  <344 -97 344 -17 "" 0 0 0 "">
  <344 -97 484 -97 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1040 1077 696 419 3 #c0c0c0 1 00 0 0 5e+08 5e+09 1 -0.005 0.005 0.04 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.out_p1" #ff0000 0 3 0 0 0>
	  <Mkr 1.69992e+09 307 -353 3 1 0>
	  <Mkr 1.74991e+09 304 -298 3 1 0>
	  <Mkr 1.79991e+09 351 -149 3 1 0>
	  <Mkr 1.64992e+09 350 -209 3 1 0>
  </Rect>
  <Rect 1040 566 700 416 3 #c0c0c0 1 00 0 0 5e+08 3e+09 1 -0.00567761 0.01 0.0624558 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.out_p2" #ff0000 0 3 0 0 0>
	  <Mkr 1.69992e+09 447 -341 3 1 0>
	  <Mkr 1.74991e+09 448 -279 3 1 0>
	  <Mkr 1.79991e+09 90 -222 3 1 0>
	  <Mkr 1.64992e+09 95 -156 3 1 0>
  </Rect>
  <Rect 210 1077 696 419 3 #c0c0c0 1 00 0 0 5e+08 5e+09 1 -0.000750717 0.002 0.00825788 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.in_p1" #0000ff 0 3 0 0 0>
	  <Mkr 1.74991e+09 304 -333 3 1 0>
  </Rect>
  <Rect 210 566 700 416 3 #c0c0c0 1 00 0 0 5e+08 5e+09 1 -0.00235958 0.005 0.0259685 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.in_p2" #0000ff 0 3 0 0 0>
	  <Mkr 1.74991e+09 325 -349 3 1 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 540 1170 16 #000000 0 "V_{RMS} = V * (sqrt(2)/2)\nP_{dBm} = 20log(V_{rms}) + 30 - 10 log(50 Ohm)\n">
  <Text 1010 1170 16 #000000 0 "OIP3_{low} = (2P_{low} + P_{high} - IM3_{low}) / 2\nOIP3_{high} = (P_{low} + 2P_{high} - IM3_{high}) / 2\n\nOIP3 = (OIP3_{low} + OIP3_{high}) / 2">
</Paintings>
