<Qucs Schematic 26.1.1>
<Properties>
  <View=0,-29,1576,781,1.21,96,0>
  <Grid=10,10,1>
  <DataSet=ErrorAmplifierNMOSMkI.dat>
  <DataDisplay=ErrorAmplifierNMOSMkI.dpl>
  <OpenDisplay=0>
  <Script=ErrorAmplifierNMOSMkI.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -40 74 SUB>
  <.PortSym -80 50 2 0 Com>
  <.PortSym 80 50 6 180 TBias>
  <.PortSym -80 0 1 0 Input>
  <.PortSym 80 0 3 180 Output>
  <.PortSym 0 -50 4 270 VDD>
  <Line -80 50 10 0 #000080 2 1>
  <Line 70 50 10 0 #000080 2 1>
  <Line -80 0 10 0 #000080 2 1>
  <Line 70 0 10 0 #000080 2 1>
  <Line -70 -40 140 0 #000080 2 1>
  <Line 70 -40 0 110 #000080 2 1>
  <Line -70 70 140 0 #000080 2 1>
  <Line -70 -40 0 110 #000080 2 1>
  <Line 0 -40 0 -10 #000080 2 1>
  <Text -60 -10 12 #000000 0 "Input">
  <Text 10 -10 12 #000000 0 "Output">
  <Text -60 40 12 #000000 0 "Com">
  <Text -18 -39 12 #000000 0 "VDD">
  <Text 20 40 12 #000000 0 "TBias">
</Symbol>
<Components>
  <Port Com 1 310 360 -23 -50 1 0 "2" 1 "analog" 0>
  <Port TBias 1 310 530 -23 12 0 0 "6" 1 "analog" 0>
  <Port Input 1 700 360 4 -50 0 2 "1" 1 "analog" 0>
  <Port Output 1 310 270 -23 -50 1 0 "3" 1 "analog" 0>
  <Port VDD 1 410 120 -73 -23 0 3 "4" 1 "analog" 0>
  <GND * 1 500 640 0 0 1 2>
  <GND * 1 500 390 0 0 0 0>
  <GND * 1 550 560 0 0 0 0>
  <MOS_SPICE X1 1 590 210 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=4u W=10u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X2 1 410 210 0 34 1 2 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=4u W=10u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X3 1 410 360 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=4u W=10u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X4 1 500 530 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=4u W=10u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X5 1 590 360 0 34 1 2 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=4u W=10u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <590 160 590 180 "" 0 0 0 "">
  <410 160 410 180 "" 0 0 0 "">
  <440 210 540 210 "" 0 0 0 "">
  <370 160 410 160 "" 0 0 0 "">
  <370 160 370 210 "" 0 0 0 "">
  <370 210 390 210 "" 0 0 0 "">
  <610 210 630 210 "" 0 0 0 "">
  <630 160 630 210 "" 0 0 0 "">
  <590 160 630 160 "" 0 0 0 "">
  <590 240 590 260 "" 0 0 0 "">
  <540 210 560 210 "" 0 0 0 "">
  <540 210 540 260 "" 0 0 0 "">
  <590 260 590 330 "" 0 0 0 "">
  <540 260 590 260 "" 0 0 0 "">
  <410 480 500 480 "" 0 0 0 "">
  <500 480 590 480 "" 0 0 0 "">
  <590 390 590 480 "" 0 0 0 "">
  <500 480 500 500 "" 0 0 0 "">
  <550 530 550 560 "" 0 0 0 "">
  <520 530 550 530 "" 0 0 0 "">
  <500 560 500 640 "" 0 0 0 "">
  <430 360 500 360 "" 0 0 0 "">
  <410 160 590 160 "" 0 0 0 "">
  <310 530 470 530 "" 0 0 0 "">
  <500 360 500 390 "" 0 0 0 "">
  <500 360 570 360 "" 0 0 0 "">
  <410 120 410 160 "" 0 0 0 "">
  <620 360 700 360 "" 0 0 0 "">
  <410 390 410 480 "" 0 0 0 "">
  <310 360 380 360 "" 0 0 0 "">
  <310 270 410 270 "" 0 0 0 "">
  <410 240 410 270 "" 0 0 0 "">
  <410 270 410 330 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
