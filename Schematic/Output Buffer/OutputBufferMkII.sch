<Qucs Schematic 26.1.1>
<Properties>
  <View=-166,-32,1527,978,0.931073,0,59>
  <Grid=10,10,1>
  <DataSet=OutputBufferMkII.dat>
  <DataDisplay=OutputBufferMkII.dpl>
  <OpenDisplay=0>
  <Script=OutputBufferMkII.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 0 134 SUB>
  <.PortSym 0 -80 1 270 VDD>
  <.PortSym -80 10 3 0 Input>
  <.PortSym 80 60 2 180 Com>
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
  <Port VDD 1 970 140 -72 -23 0 3 "1" 1 "analog" 0>
  <Port Input 1 850 400 -23 12 0 0 "3" 1 "analog" 0>
  <Port Com 1 390 510 -23 -50 1 0 "2" 1 "analog" 0>
  <Port TBias 1 850 250 -23 12 0 0 "6" 1 "analog" 0>
  <Port Output 1 1070 510 4 12 1 2 "4" 1 "analog" 0>
  <GND * 1 1030 420 0 0 0 0>
  <GND * 1 1030 610 0 0 0 0>
  <GND * 1 970 710 0 0 0 0>
  <MOS_SPICE X9 1 970 250 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=10.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X6 1 970 400 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X8 1 970 590 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <990 400 1030 400 "" 0 0 0 "">
  <850 400 940 400 "" 0 0 0 "">
  <970 140 970 200 "" 0 0 0 "">
  <970 280 970 330 "" 0 0 0 "">
  <390 510 430 510 "" 0 0 0 "">
  <1030 400 1030 420 "" 0 0 0 "">
  <990 590 1030 590 "" 0 0 0 "">
  <1030 590 1030 610 "" 0 0 0 "">
  <970 510 1070 510 "" 0 0 0 "">
  <970 430 970 510 "" 0 0 0 "">
  <970 510 970 560 "" 0 0 0 "">
  <970 620 970 710 "" 0 0 0 "">
  <900 590 940 590 "" 0 0 0 "">
  <900 330 900 590 "" 0 0 0 "">
  <970 330 970 370 "" 0 0 0 "">
  <900 330 970 330 "" 0 0 0 "">
  <850 250 940 250 "" 0 0 0 "">
  <990 250 1030 250 "" 0 0 0 "">
  <1030 250 1030 200 "" 0 0 0 "">
  <970 200 970 220 "" 0 0 0 "">
  <1030 200 970 200 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
