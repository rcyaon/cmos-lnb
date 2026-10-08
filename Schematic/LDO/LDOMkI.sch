<Qucs Schematic 26.1.1>
<Properties>
  <View=-58,-60,839,442,1.756,0,0>
  <Grid=10,10,1>
  <DataSet=LDOMkI.dat>
  <DataDisplay=LDOMkI.dpl>
  <OpenDisplay=0>
  <Script=LdoMkI.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 74 SUB>
  <.PortSym 0 -60 1 270 VDD>
  <.PortSym -90 -10 2 0 BandGap>
  <.PortSym -90 40 3 0 Input>
  <.PortSym 90 40 4 180 Output>
  <.PortSym 90 -10 5 180 TBias>
  <Line 80 -10 10 0 #000080 2 1>
  <Line 90 40 -10 0 #000080 2 1>
  <Line -90 40 10 0 #000080 2 1>
  <Line -90 -10 10 0 #000080 2 1>
  <Line -80 -50 160 0 #000080 2 1>
  <Line 80 -50 0 120 #000080 2 1>
  <Line -80 70 160 0 #000080 2 1>
  <Line -80 -50 0 120 #000080 2 1>
  <Line 0 -50 0 -10 #000080 2 1>
  <Text -70 30 12 #000000 0 "Input">
  <Text 20 30 12 #000000 0 "Output">
  <Text -70 -20 12 #000000 0 "BandGap">
  <Text -18 -49 12 #000000 0 "VDD">
  <Text 30 -20 12 #000000 0 "TBias">
</Symbol>
<Components>
  <Port VDD 1 280 70 -72 -23 0 3 "1" 1 "analog" 0>
  <Port BandGap 1 150 220 -23 12 0 0 "2" 1 "analog" 0>
  <Port Input 1 150 170 -23 -50 1 0 "3" 1 "analog" 0>
  <Port Output 1 590 220 4 -50 0 2 "4" 1 "analog" 0>
  <Port TBias 1 380 220 4 12 1 2 "5" 1 "analog" 0>
  <Sub SUB1 1 280 170 -26 78 0 0 "./Schematic/Error Amplifier/ErrorAmplifierNMOSMkI.sch" 0>
  <MOS_SPICE X1 1 510 170 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=10u W=80u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <280 70 280 100 "" 0 0 0 "">
  <150 220 200 220 "" 0 0 0 "">
  <150 170 200 170 "" 0 0 0 "">
  <360 170 480 170 "" 0 0 0 "">
  <280 100 510 100 "" 0 0 0 "">
  <510 100 510 140 "" 0 0 0 "">
  <280 100 280 120 "" 0 0 0 "">
  <530 170 550 170 "" 0 0 0 "">
  <510 100 550 100 "" 0 0 0 "">
  <550 100 550 170 "" 0 0 0 "">
  <510 220 590 220 "" 0 0 0 "">
  <360 220 380 220 "" 0 0 0 "">
  <510 200 510 220 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 290 110 12 #000000 0 "nMOS Error Amplifier">
</Paintings>
