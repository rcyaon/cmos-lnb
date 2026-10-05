<Qucs Schematic 26.1.1>
<Properties>
  <View=0,-300,1576,581,1,0,0>
  <Grid=10,10,1>
  <DataSet=ErrorAmplifier_Testing_MkI.dat>
  <DataDisplay=ErrorAmplifier_Testing_MkI.dpl>
  <OpenDisplay=0>
  <Script=ErrorAmplifier_Testing_MkI.m>
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
  <.DC DC1 1 180 480 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 240 -80 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 216 96 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 216 6 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpiceLib SpiceLib3 1 216 186 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib4 1 216 276 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib5 1 216 366 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <Sub SUB1 1 1280 410 -26 78 0 0 "Schematic/Error Amplifier/ErrorAmplifierPMOSMkI.sch" 0>
  <Vdc V1 1 900 530 18 -26 0 1 "5V" 1>
  <GND * 1 900 580 0 0 0 0>
  <Vdc V2 1 1090 530 18 -26 0 1 "1.2V" 1>
  <GND * 1 1090 580 0 0 0 0>
  <GND * 1 1500 650 0 0 1 2>
  <Idc I1 1 1500 600 13 -26 1 3 "10 uA" 1>
  <MOS_SPICE X1 1 1500 460 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.5u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Vdc V3 1 990 530 18 -26 0 1 "1.2V" 1>
  <GND * 1 990 580 0 0 0 0>
  <.SW SW1 1 360 480 0 50 0 0 "DC1" 1 "lin" 1 "V3" 1 "0 V" 1 "5V" 1 "20" 1>
  <SpicePar SpicePar1 1 360 -200 -29 16 0 0 "sw_stat_global=1" 1 "sw_stat_mismatch=1" 1>
</Components>
<Wires>
  <900 560 900 580 "" 0 0 0 "">
  <1090 560 1090 580 "" 0 0 0 "">
  <1500 490 1500 510 "" 0 0 0 "">
  <1450 460 1470 460 "" 0 0 0 "">
  <1500 630 1500 650 "" 0 0 0 "">
  <1450 460 1450 510 "" 0 0 0 "">
  <1500 510 1500 570 "" 0 0 0 "">
  <1450 510 1500 510 "" 0 0 0 "">
  <1500 310 1500 430 "" 0 0 0 "">
  <1520 460 1540 460 "" 0 0 0 "">
  <1500 310 1540 310 "" 0 0 0 "">
  <1540 310 1540 460 "" 0 0 0 "">
  <1280 310 1500 310 "" 0 0 0 "">
  <1280 310 1280 360 "" 0 0 0 "">
  <900 310 900 500 "" 0 0 0 "">
  <1090 460 1090 500 "" 0 0 0 "">
  <1090 460 1200 460 "" 0 0 0 "">
  <1360 460 1450 460 "" 0 0 0 "">
  <990 410 1200 410 "" 0 0 0 "">
  <900 310 1280 310 "" 0 0 0 "">
  <990 410 990 500 "" 0 0 0 "">
  <990 560 990 580 "" 0 0 0 "">
  <1360 410 1360 410 "output" 1390 380 0 "">
</Wires>
<Diagrams>
  <Rect 910 200 240 160 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/sw1.v(output)" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
