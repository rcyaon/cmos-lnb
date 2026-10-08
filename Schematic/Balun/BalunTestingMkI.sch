<Qucs Schematic 26.1.1>
<Properties>
  <View=-903,-59,2771,1179,0.826446,946,0>
  <Grid=10,10,1>
  <DataSet=BalunTestingMkI.dat>
  <DataDisplay=BalunTestingMkI.dpl>
  <OpenDisplay=0>
  <Script=BalunTestingMkI.m>
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
  <.TR TR1 1 124 593 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <SpiceInclude SpiceInclude1 1 174 53 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <.FFT FFT1 1 264 593 0 50 0 0 "10GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <SpiceLib SpiceLib1 1 150 229 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 150 319 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 150 409 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 150 499 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <.SP SP1 0 434 593 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "yes" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SpicePar SpicePar1 1 634 613 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1 "fnoicor=1" 1>
  <SpiceLib SpiceLib5 1 150 139 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "ff" 1>
  <Vac V4 1 830 420 -105 -26 0 3 "100 mV" 1 "1.7 GHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 830 450 0 0 0 0>
  <Sub SUB1 1 1250 350 -26 138 0 0 "Schematic/Balun/BalunMkIII.sch" 0>
  <BiasT X1 1 930 320 -26 34 0 0 "1 uH" 0 "1 uF" 0>
  <GND * 1 930 450 0 0 0 0>
  <Vdc V6 1 830 210 18 -26 0 1 "3.3 V" 1>
  <GND * 1 830 240 0 0 0 0>
  <DCBlock C1 1 1400 270 -26 21 0 0 "1 uF" 0>
  <DCBlock C2 1 1400 390 -26 21 0 0 "1 uF" 0>
  <GND * 1 1570 290 0 0 0 0>
  <GND * 1 1570 410 0 0 0 0>
  <R R1 1 1500 270 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 1500 390 -26 15 0 0 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V5 1 930 420 18 -26 0 1 "1.5 V" 1>
  <MOS_SPICE X2 1 1080 440 0 34 1 2 "X" 1 "4" 1 "nmos" 1 "nfet_03v3 L=0.28u W=5.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 1080 560 0 0 0 0>
  <GND * 1 1040 470 0 0 0 0>
  <Idc I1 1 1080 220 -77 -26 0 3 "200 uA" 1>
  <GND * 1 1790 500 0 0 0 0>
  <Idc I2 1 1790 450 -77 -26 0 3 "10 uA" 1>
  <MOS_SPICE X3 1 1790 310 0 34 1 2 "X" 1 "4" 1 "pmos" 1 "pfet_03v3 L=0.5u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <830 320 830 390 "" 0 0 0 "">
  <960 320 1180 320 "" 0 0 0 "">
  <830 320 900 320 "input" 900 290 30 "">
  <930 350 930 390 "" 0 0 0 "">
  <830 150 830 180 "" 0 0 0 "">
  <1430 270 1470 270 "pos" 1480 240 19 "">
  <1430 390 1470 390 "neg" 1480 360 20 "">
  <1570 390 1570 410 "" 0 0 0 "">
  <1530 390 1570 390 "" 0 0 0 "">
  <1570 270 1570 290 "" 0 0 0 "">
  <1530 270 1570 270 "" 0 0 0 "">
  <1350 270 1370 270 "" 0 0 0 "">
  <1320 320 1350 320 "" 0 0 0 "">
  <1350 270 1350 320 "" 0 0 0 "">
  <1320 360 1350 360 "" 0 0 0 "">
  <1350 390 1370 390 "" 0 0 0 "">
  <1350 360 1350 390 "" 0 0 0 "">
  <1080 150 1250 150 "" 0 0 0 "">
  <1110 440 1130 440 "" 0 0 0 "">
  <1130 440 1180 440 "" 0 0 0 "">
  <1130 390 1130 440 "" 0 0 0 "">
  <1080 390 1130 390 "" 0 0 0 "">
  <1080 390 1080 410 "" 0 0 0 "">
  <1080 250 1080 390 "" 0 0 0 "">
  <1080 150 1080 190 "" 0 0 0 "">
  <830 150 1080 150 "" 0 0 0 "">
  <1080 470 1080 560 "" 0 0 0 "">
  <1040 440 1060 440 "" 0 0 0 "">
  <1040 440 1040 470 "" 0 0 0 "">
  <1790 340 1790 360 "" 0 0 0 "">
  <1820 310 1840 310 "" 0 0 0 "">
  <1790 480 1790 500 "" 0 0 0 "">
  <1840 310 1840 360 "" 0 0 0 "">
  <1790 360 1790 420 "" 0 0 0 "">
  <1790 360 1840 360 "" 0 0 0 "">
  <1790 160 1790 280 "" 0 0 0 "">
  <1750 310 1770 310 "" 0 0 0 "">
  <1750 160 1790 160 "" 0 0 0 "">
  <1750 160 1750 310 "" 0 0 0 "">
  <1320 440 1710 440 "" 0 0 0 "">
  <1710 440 1710 570 "" 0 0 0 "">
  <1710 570 1840 570 "" 0 0 0 "">
  <1840 570 1840 360 "" 0 0 0 "">
  <1250 160 1250 270 "" 0 0 0 "">
  <1750 160 1250 160 "" 0 0 0 "">
  <1250 160 1250 150 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 870 880 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(input)" #0000ff 1 3 0 0 0>
  </Rect>
  <Rect 1270 880 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(neg)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(pos)" #ff0000 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
