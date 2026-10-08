<Qucs Schematic 26.1.1>
<Properties>
  <View=-1598,-608,2734,1814,0.644477,372,124>
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
  <NutmegEq NutmegEq1 1 90 150 -31 16 0 0 "FFT1" 1 "max_out=vecmax(mag(v(output)))" 1 "max_in=vecmax(mag(v(input)))" 1 "gain=max_out/max_in" 1>
  <SpicePar SpicePar1 1 -156 163 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1 "p_val=-60" 1>
  <.CUSTOMSIM CUSTOM1 1 -470 160 0 31 0 0 "let start_p = -60\nlet stop_p = 0\nlet step_p = 5\nlet p_cur = start_p\n\nlet gain_array = vector(7)\n\nlet idx = 0\n\nset appendwrite\n\nwhile p_cur <= stop_p\n  \n  alterparam P_val = $&p_cur\n  reset\n  \n  tran 5e-11 1e-06 0\n  set specwindow=hanning\n  linearize v(input) v(output) \n  fft v(input) v(output) \n  let max_out = vecmax(mag(v(output)))\n  let max_in = vecmax(mag(v(input)))\n  let gain = 20 * log10( max_out/max_in )\n  let power_in = p_cur\n  let power_out = p_cur + gain\n  write compression.raw power_in power_out gain\n  reset\n\n  *write compression.raw v(output)[1] v(input)[1] gain\n  \n  let p_cur = p_cur + step_p\n  let idx = idx + 1\nend\n\nunset appendwrite\n\n" 1 "" 0 "compression.raw" 0>
  <SpiceLib SpiceLib5 1 -640 -311 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "Typical" 1>
  <Sub SUB1 1 530 -100 -26 88 0 0 "Schematic/LNA/LNAMkII.sch" 0>
  <GND * 1 320 -20 0 0 0 0>
  <Vdc V1 1 300 -150 -26 -56 1 0 "1.2 V" 1>
  <GND * 1 240 -120 0 0 0 0>
  <C C1 1 390 -100 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <GND * 1 360 -250 0 0 0 0>
  <Idc I1 1 630 -200 18 -26 1 3 "20 uA" 1>
  <C C2 1 670 -100 -26 17 1 2 "10 pF" 1 "" 0 "neutral" 0>
  <Vdc V2 1 410 -270 -26 18 0 0 "3.3 V" 1>
  <R R1 1 770 -100 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 850 -80 0 0 0 0>
  <Pac P2 1 320 -50 -106 -26 1 1 "1" 1 "50 Ohm" 1 "{p_val}" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
</Components>
<Wires>
  <330 -150 450 -150 "" 0 0 0 "">
  <420 -100 450 -100 "" 0 0 0 "">
  <320 -100 320 -80 "input" 350 -140 6 "">
  <240 -150 270 -150 "" 0 0 0 "">
  <240 -150 240 -120 "" 0 0 0 "">
  <320 -100 360 -100 "" 0 0 0 "">
  <360 -270 380 -270 "" 0 0 0 "">
  <360 -270 360 -250 "" 0 0 0 "">
  <440 -270 530 -270 "" 0 0 0 "">
  <530 -270 630 -270 "" 0 0 0 "">
  <530 -270 530 -190 "" 0 0 0 "">
  <630 -270 630 -230 "" 0 0 0 "">
  <610 -150 630 -150 "" 0 0 0 "">
  <630 -170 630 -150 "" 0 0 0 "">
  <700 -100 740 -100 "output" 770 -170 28 "">
  <610 -100 640 -100 "" 0 0 0 "">
  <800 -100 850 -100 "" 0 0 0 "">
  <850 -100 850 -80 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 151 875 951 549 3 #c0c0c0 1 00 1 1 0.5 4 1 -12.3498 5 15 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.gain@ac.power_out" #ff00ff 0 3 0 0 0>
	  <Mkr -39.2831 53 -334 3 0 0>
	  <Mkr -19.9536 433 -326 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
