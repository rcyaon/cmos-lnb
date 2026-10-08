<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,260,871,1149,2.56947,1483,334>
  <Grid=10,10,1>
  <DataSet=RingInverterMkI.dat>
  <DataDisplay=RingInverterMkI.dpl>
  <OpenDisplay=0>
  <Script=RingInverterMkI.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 30 -116 SUB>
  <.PortSym 0 -80 1 270 VDD>
  <.PortSym 80 10 3 180 Output>
  <.PortSym -80 10 2 0 Input>
  <Line 0 -70 0 -10 #000080 2 1>
  <Line -70 10 -10 0 #000080 2 1>
  <Line 70 10 10 0 #000080 2 1>
  <Line -70 -70 140 0 #000080 2 1>
  <Line 70 -70 0 160 #000080 2 1>
  <Line -70 -70 0 160 #000080 2 1>
  <Text -20 -70 12 #000000 0 "VDD">
  <Text -60 0 12 #000000 0 "Input">
  <Text 10 0 12 #000000 0 "Output">
  <Line -70 90 140 0 #000080 2 1>
</Symbol>
<Components>
  <Port VDD 1 120 480 -72 -23 0 3 "1" 1 "analog" 0>
  <GND * 1 120 850 0 0 0 0>
  <Port Input 1 -20 650 -23 12 0 0 "2" 1 "analog" 0>
  <Port Output 1 340 650 4 12 1 2 "3" 1 "analog" 0>
  <GND * 1 240 790 0 0 0 0>
  <C C1 1 240 730 17 -26 0 1 "0.08 pF" 1 "" 0 "neutral" 0>
  <MOS_SPICE X29 1 120 730 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_03v3 L=0.28u W=2.50u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X28 1 120 570 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_03v3 L=0.28u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <120 760 120 790 "" 0 0 0 "">
  <120 790 120 850 "" 0 0 0 "">
  <120 790 160 790 "" 0 0 0 "">
  <160 730 160 790 "" 0 0 0 "">
  <140 730 160 730 "" 0 0 0 "">
  <120 650 120 700 "" 0 0 0 "">
  <120 510 120 540 "" 0 0 0 "">
  <140 570 160 570 "" 0 0 0 "">
  <160 510 160 570 "" 0 0 0 "">
  <120 480 120 510 "" 0 0 0 "">
  <120 510 160 510 "" 0 0 0 "">
  <50 570 90 570 "" 0 0 0 "">
  <50 570 50 650 "" 0 0 0 "">
  <50 730 90 730 "" 0 0 0 "">
  <120 600 120 650 "" 0 0 0 "">
  <120 650 240 650 "" 0 0 0 "">
  <50 650 50 730 "" 0 0 0 "">
  <-20 650 50 650 "" 0 0 0 "">
  <240 650 340 650 "" 0 0 0 "">
  <240 650 240 700 "" 0 0 0 "">
  <240 760 240 790 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
