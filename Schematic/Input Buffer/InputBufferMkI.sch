<Qucs Schematic 26.1.1>
<Properties>
  <View=-688,-439,3400,1746,1.21,368,215>
  <Grid=10,10,1>
  <DataSet=InputBufferMkI.dat>
  <DataDisplay=InputBufferMkI.dpl>
  <OpenDisplay=0>
  <Script=InputBufferMkI.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 94 SUB>
  <.PortSym 0 -90 1 270 VDD>
  <.PortSym -80 0 2 0 Input>
  <.PortSym 80 -50 3 180 Bias>
  <.PortSym 80 50 4 180 Com>
  <.PortSym -80 -50 5 0 TBias>
  <Line 0 -90 0 10 #000080 2 1>
  <Line 70 0 10 0 #000080 2 1>
  <Line 80 -50 -10 0 #000080 2 1>
  <Line 70 50 10 0 #000080 2 1>
  <Line -80 -50 10 0 #000080 2 1>
  <Line -70 -80 140 0 #000080 2 1>
  <Line 70 -80 0 160 #000080 2 1>
  <Line -70 80 140 0 #000080 2 1>
  <Line -70 -80 0 160 #000080 2 1>
  <.PortSym 80 0 6 180 Output>
  <Line -80 0 10 0 #000080 2 1>
  <Text -60 -60 12 #000000 0 "TBias">
  <Text -60 -10 12 #000000 0 "Input">
  <Text 10 -10 12 #000000 0 "Output">
  <Text 30 40 12 #000000 0 "Com">
  <Text 30 -60 12 #000000 0 "Bias">
  <Text -20 -80 12 #000000 0 "VDD">
</Symbol>
<Components>
  <GND * 1 120 120 0 0 0 0>
  <GND * 1 80 290 0 0 0 0>
  <Sub SUB1 1 -70 -70 -26 78 0 0 "./Schematic/Error Amplifier/ErrorAmplifierPMOSMkII.sch" 0>
  <MOS_SPICE X1 1 80 -70 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_03v3 L=0.28u W=20.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X2 1 80 100 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_03v3 L=0.28u W=20.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Port VDD 1 -70 -190 -72 -23 0 3 "1" 1 "analog" 0>
  <R_SPICE R2 1 80 260 15 -26 0 1 "ppolyf_s r_width=1u r_length=9u" 0 "" 0 "" 0 "" 0 "" 0 "3" 1 "X" 1>
  <GND * 1 40 280 0 0 0 0>
  <Port Input 1 -270 180 -23 12 0 0 "2" 1 "analog" 0>
  <Port Bias 1 -270 100 -23 12 0 0 "3" 1 "analog" 0>
  <Port Com 1 -270 -20 -23 12 0 0 "4" 1 "analog" 0>
  <Port TBias 1 150 -20 4 -50 0 2 "5" 1 "analog" 0>
  <Port Output 1 150 60 4 -50 0 2 "6" 1 "analog" 0>
</Components>
<Wires>
  <80 -150 130 -150 "" 0 0 0 "">
  <100 100 120 100 "" 0 0 0 "">
  <120 100 120 120 "" 0 0 0 "">
  <80 -40 80 60 "" 0 0 0 "">
  <100 -70 130 -70 "" 0 0 0 "">
  <-70 -150 80 -150 "" 0 0 0 "">
  <10 -70 50 -70 "" 0 0 0 "">
  <-200 -70 -150 -70 "" 0 0 0 "">
  <-200 -70 -200 60 "" 0 0 0 "">
  <80 60 80 70 "" 0 0 0 "">
  <-200 60 80 60 "" 0 0 0 "">
  <80 130 80 180 "" 0 0 0 "">
  <-70 -150 -70 -190 "" 0 0 0 "">
  <10 -20 150 -20 "" 0 0 0 "">
  <-150 -20 -270 -20 "" 0 0 0 "">
  <50 100 -270 100 "" 0 0 0 "">
  <80 180 80 230 "" 0 0 0 "">
  <80 180 -270 180 "" 0 0 0 "">
  <50 260 40 260 "" 0 0 0 "">
  <40 260 40 280 "" 0 0 0 "">
  <80 -150 80 -100 "" 0 0 0 "">
  <130 -150 130 -70 "" 0 0 0 "">
  <-70 -150 -70 -120 "" 0 0 0 "">
  <80 60 150 60 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text -260 -140 12 #000000 0 "pMOS Error Amplifier">
</Paintings>
