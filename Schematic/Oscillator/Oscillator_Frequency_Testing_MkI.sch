<Qucs Schematic 26.1.1>
<Properties>
  <View=-2289,-391,5070,1147,0.760892,1635,169>
  <Grid=10,10,1>
  <DataSet=Oscillator_Frequency_Testing_MkI.dat>
  <DataDisplay=Oscillator_Frequency_Testing_MkI.dpl>
  <OpenDisplay=0>
  <Script=Oscillator_Frequency_Testing_MkI.m>
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
  <GND * 1 -100 170 0 0 0 0>
  <.DC DC1 0 230 820 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 850 370 0 0 0 0>
  <R R1 1 850 320 15 -26 0 1 "10000 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 690 380 15 -26 0 1 "10000 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 690 430 0 0 0 0>
  <C C4 1 570 330 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <C C3 1 660 280 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <.TR TR1 0 230 680 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "20000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vdc V1 1 -100 140 18 -26 0 1 "3.3 V" 1>
  <.FFT FFT1 1 370 670 0 50 0 0 "10GHz" 1 "1 MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <MOS_SPICE X1 1 210 460 0 34 1 2 "X" 1 "4" 1 "nmos" 1 "nfet_03v3 L=0.28u W=2.50u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 210 580 0 0 0 0>
  <GND * 1 170 480 0 0 0 0>
  <Idc I1 1 210 350 18 -26 1 3 "2000 uA" 1>
  <Sub SUB1 1 440 300 -26 108 0 0 "RingOscillatorMkII.sch" 0>
  <SpiceInclude SpiceInclude1 1 1184 523 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 1160 699 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 1160 789 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 1160 879 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 1160 969 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <SpiceLib SpiceLib5 1 1160 609 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "FS" 1>
  <.SW SW1 0 230 910 0 50 0 0 "FFT1" 1 "lin" 1 "I1" 1 "20 uA" 1 "2000 uA" 1 "2" 1>
  <NutmegEq NutmegEq1 0 590 840 -31 16 0 0 "FFT1" 1 "pos_dBm=dB(( v(pos) / sqrt(2) ) / 0.2236)" 1 "neg_dBm=dB(( v(pos) / sqrt(2) ) / 0.2236)" 1 "freq_center=frequency - 2.416e9" 1 "v_mag=mag(v(pos_dc))" 1 "max_v=vecmax(v_mag)" 1 "freq_max=xvalue(v_mag, max_v)." 1>
</Components>
<Wires>
  <-100 90 -100 110 "" 0 0 0 "">
  <440 90 440 220 "" 0 0 0 "">
  <850 280 850 290 "" 0 0 0 "">
  <850 350 850 370 "" 0 0 0 "">
  <520 280 630 280 "pos_dc" 570 250 20 "">
  <690 280 850 280 "pos" 820 250 101 "">
  <600 330 690 330 "neg" 690 300 62 "">
  <690 330 690 350 "" 0 0 0 "">
  <690 410 690 430 "" 0 0 0 "">
  <520 330 540 330 "neg_dc" 560 300 12 "">
  <-100 90 210 90 "" 0 0 0 "">
  <210 490 210 580 "" 0 0 0 "">
  <240 460 250 460 "" 0 0 0 "">
  <250 420 250 460 "" 0 0 0 "">
  <210 420 210 430 "" 0 0 0 "">
  <210 420 250 420 "" 0 0 0 "">
  <210 380 210 420 "" 0 0 0 "">
  <250 460 440 460 "" 0 0 0 "">
  <440 400 440 460 "" 0 0 0 "">
  <170 460 190 460 "" 0 0 0 "">
  <170 460 170 480 "" 0 0 0 "">
  <210 90 210 320 "" 0 0 0 "">
  <210 90 440 90 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 1110 410 708 385 3 #c0c0c0 1 00 1 0 5e+07 5e+08 1 -80 20 20 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.v(pos_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/ac.v(neg_dc)" #ff0000 0 3 0 0 0>
	  <Mkr 1.15694e+09 142 -351 3 0 0>
  </Rect>
  <Tab 530 135 452 88 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 10001 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(pos_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(neg_dc)" #0000ff 0 3 0 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
