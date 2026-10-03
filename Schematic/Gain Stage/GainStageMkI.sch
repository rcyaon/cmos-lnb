<Qucs Schematic 26.1.1>
<Properties>
  <View=-522,-220,3952,2280,0.624406,0,40>
  <Grid=10,10,1>
  <DataSet=GainStageMkI.dat>
  <DataDisplay=GainStageMkI.dpl>
  <OpenDisplay=0>
  <Script=AmpCore.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 30 -106 SUB>
  <.PortSym 0 -60 1 270 VDD>
  <.PortSym 80 80 2 180 Com>
  <.PortSym -80 30 3 0 Input>
  <.PortSym 80 30 4 180 Output>
  <Line -70 -50 140 0 #000080 2 1>
  <Line 70 -50 0 160 #000080 2 1>
  <Line -70 110 140 0 #000080 2 1>
  <Line -70 -50 0 160 #000080 2 1>
  <Text -20 -50 12 #000000 0 "VDD">
  <Text -60 20 12 #000000 0 "Input">
  <Text 10 20 12 #000000 0 "Output">
  <Text 30 70 12 #000000 0 "Com">
  <Line 0 -60 0 10 #000080 2 1>
  <Line 70 30 10 0 #000080 2 1>
  <Line -80 -20 10 0 #000080 2 1>
  <Line -80 30 10 0 #000080 2 1>
  <.PortSym 80 -20 5 180 CBias>
  <Line 70 -20 10 0 #000080 2 1>
  <Text 20 -30 12 #000000 0 "CBias">
  <.PortSym -80 -20 6 0 TBias>
  <Line 70 80 10 0 #000080 2 1>
  <Text -60 -30 12 #000000 0 "TBias">
</Symbol>
<Components>
  <GND * 1 600 820 0 0 0 0>
  <GND * 1 660 740 0 0 0 0>
  <GND * 1 660 580 0 0 0 0>
  <Port VDD 1 650 190 4 -50 0 2 "1" 1 "analog" 0>
  <Port Input 1 480 700 -23 12 0 0 "3" 1 "analog" 0>
  <Port Output 1 700 500 4 12 1 2 "4" 1 "analog" 0>
  <SpiceInclude SpiceInclude1 0 930 190 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 0 910 280 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <Port CBias 1 480 540 -23 12 0 0 "5" 1 "analog" 0>
  <Port Com 1 210 400 -23 -50 1 0 "2" 1 "analog" 0>
  <Port TBias 1 450 400 4 -50 0 2 "6" 1 "analog" 0>
  <MOS_SPICE X15 1 600 350 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=10.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X13 1 600 540 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X14 1 600 700 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <Sub SUB1 1 330 350 -26 78 0 0 "./Schematic/Error Amplifier/ErrorAmplifierPMOSMkI.sch" 0>
</Components>
<Wires>
  <600 730 600 820 "" 0 0 0 "">
  <620 700 660 700 "" 0 0 0 "">
  <660 700 660 740 "" 0 0 0 "">
  <620 540 660 540 "" 0 0 0 "">
  <660 540 660 580 "" 0 0 0 "">
  <170 500 600 500 "" 0 0 0 "">
  <600 570 600 670 "" 0 0 0 "">
  <480 700 570 700 "" 0 0 0 "">
  <480 540 570 540 "" 0 0 0 "">
  <210 400 250 400 "" 0 0 0 "">
  <600 190 650 190 "" 0 0 0 "">
  <600 300 600 320 "" 0 0 0 "">
  <600 300 640 300 "" 0 0 0 "">
  <640 300 640 350 "" 0 0 0 "">
  <620 350 640 350 "" 0 0 0 "">
  <600 190 600 300 "" 0 0 0 "">
  <410 350 570 350 "" 0 0 0 "">
  <330 300 330 190 "" 0 0 0 "">
  <330 190 600 190 "" 0 0 0 "">
  <410 400 450 400 "" 0 0 0 "">
  <250 350 170 350 "" 0 0 0 "">
  <600 500 600 510 "" 0 0 0 "">
  <600 500 600 380 "" 0 0 0 "">
  <600 500 700 500 "" 0 0 0 "">
  <170 350 170 500 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
