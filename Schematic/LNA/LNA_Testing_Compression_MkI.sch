<Qucs Schematic 26.1.1>
<Properties>
  <View=-742,-480,1194,995,0.814233,0,77>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_Compression_MkI.dat>
  <DataDisplay=LNA_Testing_Compression_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_Compression_MkI.m>
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
  <.FFT FFT1 1 -646 153 0 50 0 0 "10GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <SpiceLib SpiceLib1 1 -640 -221 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -640 -131 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -640 -41 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -640 49 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <Vdc V2 1 -26 -97 18 -26 0 1 "1.2 V" 1>
  <GND * 1 254 -217 0 0 0 0>
  <GND * 1 -26 -67 0 0 0 0>
  <C C1 1 304 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C2 1 604 -97 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 234 43 0 0 0 0>
  <GND * 1 814 -87 0 0 0 0>
  <R R2 1 134 -97 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 64 -77 0 0 0 0>
  <Vdc V1 1 254 -247 18 -26 0 1 "3.3 V" 1>
  <Sub SUB1 1 454 -97 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <R R1 1 754 -97 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <NutmegEq NutmegEq1 1 90 150 -31 16 0 0 "FFT1" 1 "max_out=vecmax(mag(v(output)))" 1 "max_in=vecmax(mag(v(input)))" 1 "gain=max_out/max_in" 1>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1 "p_val=-60" 1>
  <Pac P1 1 234 13 18 -26 0 1 "1" 1 "50 Ohm" 1 "{p_val}" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <.CUSTOMSIM CUSTOM1 1 -470 160 0 31 0 0 "let start_p = -60\nlet stop_p = 0\nlet step_p = 5\nlet p_cur = start_p\n\nlet gain_array = vector(7)\n\nlet idx = 0\n\nset appendwrite\n\nwhile p_cur <= stop_p\n  \n  alterparam P_val = $&p_cur\n  reset\n  \n  tran 5e-11 1e-06 0\n  set specwindow=hanning\n  linearize v(input) v(output) \n  fft v(input) v(output) \n  let max_out = vecmax(mag(v(output)))\n  let max_in = vecmax(mag(v(input)))\n  let gain = 20 * log10( max_out/max_in )\n  let power_in = p_cur\n  let power_out = p_cur + gain\n  write compression.raw power_in power_out gain\n  reset\n\n  *write compression.raw v(output)[1] v(input)[1] gain\n  \n  let p_cur = p_cur + step_p\n  let idx = idx + 1\nend\n\nunset appendwrite\n\n" 1 "" 0 "compression.raw" 0>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "Typical" 1>
</Components>
<Wires>
  <-26 -147 -26 -127 "" 0 0 0 "">
  <254 -297 454 -297 "" 0 0 0 "">
  <254 -297 254 -277 "" 0 0 0 "">
  <454 -297 454 -187 "" 0 0 0 "">
  <234 -97 274 -97 "" 0 0 0 "">
  <234 -97 234 -17 "input" 150 -130 12 "">
  <334 -97 374 -97 "" 0 0 0 "">
  <534 -97 574 -97 "" 0 0 0 "">
  <784 -97 814 -97 "" 0 0 0 "">
  <814 -97 814 -87 "" 0 0 0 "">
  <634 -97 724 -97 "output" 710 -130 48 "">
  <-26 -147 374 -147 "" 0 0 0 "">
  <164 -97 234 -97 "" 0 0 0 "">
  <64 -97 104 -97 "" 0 0 0 "">
  <64 -97 64 -77 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 151 875 951 549 3 #c0c0c0 1 00 1 1 0.5 4 1 -12.3498 5 15 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.gain@ac.power_out" #ff00ff 0 3 0 0 0>
	  <Mkr -37.9467 53 -334 3 0 0>
	  <Mkr -18.8636 433 -326 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
