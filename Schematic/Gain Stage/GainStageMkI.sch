<Qucs Schematic 26.1.1>
<Properties>
  <View=-1345,-428,2118,1388,0.806311,448,0>
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
  <GND * 1 160 290 0 0 0 0>
  <GND * 1 160 130 0 0 0 0>
  <Port VDD 1 150 -260 4 -50 0 2 "1" 1 "analog" 0>
  <Port Input 1 -20 250 -23 12 0 0 "3" 1 "analog" 0>
  <Port Output 1 200 50 4 12 1 2 "4" 1 "analog" 0>
  <Port CBias 1 -20 90 -23 12 0 0 "5" 1 "analog" 0>
  <Port Com 1 -290 -50 -23 -50 1 0 "2" 1 "analog" 0>
  <Port TBias 1 -50 -50 4 -50 0 2 "6" 1 "analog" 0>
  <Sub SUB1 1 -170 -100 -26 78 0 0 "./Schematic/Error Amplifier/ErrorAmplifierPMOSMkI.sch" 0>
  <MOS_SPICE X13 1 100 90 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=5.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X16 1 100 250 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=5.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X15 1 100 -100 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=10.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -100 460 0 0 0 0>
  <C C1 1 -30 380 -26 17 0 0 "10 pF" 1 "" 0 "neutral" 0>
  <R R1 1 -30 460 -26 15 0 0 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <100 280 100 380 "" 0 0 0 "">
  <120 250 160 250 "" 0 0 0 "">
  <160 250 160 290 "" 0 0 0 "">
  <120 90 160 90 "" 0 0 0 "">
  <160 90 160 130 "" 0 0 0 "">
  <-330 50 100 50 "" 0 0 0 "">
  <100 120 100 220 "" 0 0 0 "">
  <-20 250 70 250 "" 0 0 0 "">
  <-20 90 70 90 "" 0 0 0 "">
  <-290 -50 -250 -50 "" 0 0 0 "">
  <100 -260 150 -260 "" 0 0 0 "">
  <100 -150 100 -130 "" 0 0 0 "">
  <100 -150 140 -150 "" 0 0 0 "">
  <140 -150 140 -100 "" 0 0 0 "">
  <120 -100 140 -100 "" 0 0 0 "">
  <100 -260 100 -150 "" 0 0 0 "">
  <-90 -100 70 -100 "" 0 0 0 "">
  <-170 -260 -170 -150 "" 0 0 0 "">
  <-170 -260 100 -260 "" 0 0 0 "">
  <-90 -50 -50 -50 "" 0 0 0 "">
  <-330 -100 -250 -100 "" 0 0 0 "">
  <100 50 100 60 "" 0 0 0 "">
  <100 -70 100 50 "" 0 0 0 "">
  <100 50 200 50 "" 0 0 0 "">
  <-330 -100 -330 50 "" 0 0 0 "">
  <0 460 100 460 "" 0 0 0 "">
  <0 380 100 380 "" 0 0 0 "">
  <100 380 100 460 "" 0 0 0 "">
  <-100 380 -100 460 "" 0 0 0 "">
  <-100 380 -60 380 "" 0 0 0 "">
  <-100 460 -60 460 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
