<Qucs Schematic 26.1.1>
<Properties>
  <View=563,42,3062,1439,1.1174,152,422>
  <Grid=10,10,1>
  <DataSet=OutputBufferMkIV.dat>
  <DataDisplay=OutputBufferMkIV.dpl>
  <OpenDisplay=0>
  <Script=OutputBufferMkIV.m>
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
  <.PortSym -80 10 3 0 Input>
  <.PortSym -80 -40 6 0 TBias>
  <.PortSym 80 10 4 180 Output>
  <Line 0 -70 0 -10 #000080 2 1>
  <Line -70 10 -10 0 #000080 2 1>
  <Line 70 60 10 0 #000080 2 1>
  <Line -80 -40 10 0 #000080 2 1>
  <Line 70 10 10 0 #000080 2 1>
  <Line -70 -70 140 0 #000080 2 1>
  <Line 70 -70 0 160 #000080 2 1>
  <Line -70 -70 0 160 #000080 2 1>
  <Text -20 -70 12 #000000 0 "VDD">
  <Text -60 0 12 #000000 0 "Input">
  <Text 10 0 12 #000000 0 "Output">
  <Text 30 50 12 #000000 0 "Com">
  <Text -60 -50 12 #000000 0 "TBias">
  <Line -70 90 140 0 #000080 2 1>
</Symbol>
<Components>
  <Port VDD 1 860 620 -72 -23 0 3 "1" 1 "analog" 0>
  <Port Input 1 740 670 -23 12 0 0 "3" 1 "analog" 0>
  <Port TBias 1 740 910 -23 12 0 0 "6" 1 "analog" 0>
  <Port Output 1 960 780 4 12 1 2 "4" 1 "analog" 0>
  <GND * 1 920 950 0 0 0 0>
  <GND * 1 860 1030 0 0 0 0>
  <MOS_SPICE X22 1 860 910 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=100.00u nf=10 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 920 710 0 0 0 0>
  <MOS_SPICE X21 1 860 670 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=100.00u nf=10 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 1 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <880 670 920 670 "" 0 0 0 "">
  <860 780 960 780 "" 0 0 0 "">
  <880 910 920 910 "" 0 0 0 "">
  <920 910 920 950 "" 0 0 0 "">
  <860 780 860 880 "" 0 0 0 "">
  <860 940 860 1030 "" 0 0 0 "">
  <740 910 830 910 "" 0 0 0 "">
  <740 670 830 670 "" 0 0 0 "">
  <860 620 860 640 "" 0 0 0 "">
  <860 700 860 780 "" 0 0 0 "">
  <920 670 920 710 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
