<Qucs Schematic 26.1.1>
<Properties>
  <View=-254,-26,2276,1040,1.21,594,133>
  <Grid=10,10,1>
  <DataSet=OutputBufferMkIII.dat>
  <DataDisplay=OutputBufferMkIII.dpl>
  <OpenDisplay=0>
  <Script=OutputBufferMkIII.m>
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
  <.PortSym 80 60 2 180 Com>
</Symbol>
<Components>
  <Port VDD 1 610 150 -72 -23 0 3 "1" 1 "analog" 0>
  <Port Input 1 410 410 -23 12 0 0 "3" 1 "analog" 0>
  <Port Output 1 800 550 4 12 1 2 "4" 1 "analog" 0>
  <GND * 1 610 740 0 0 0 0>
  <Port TBias 1 410 230 -23 12 0 0 "6" 1 "analog" 0>
  <GND * 1 670 640 0 0 0 0>
  <Port Com 1 410 620 -23 12 0 0 "2" 1 "analog" 0>
  <GND * 1 670 430 0 0 0 0>
  <MOS_SPICE X14 1 750 350 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=10.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X11 1 610 230 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=10.0u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X13 1 610 410 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X12 1 610 620 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=10.00u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <610 180 610 200 "" 0 0 0 "">
  <610 650 610 740 "" 0 0 0 "">
  <610 440 610 550 "" 0 0 0 "">
  <630 620 670 620 "" 0 0 0 "">
  <670 620 670 640 "" 0 0 0 "">
  <610 150 610 180 "" 0 0 0 "">
  <630 230 650 230 "" 0 0 0 "">
  <650 180 650 230 "" 0 0 0 "">
  <410 230 580 230 "" 0 0 0 "">
  <580 410 410 410 "" 0 0 0 "">
  <580 620 410 620 "" 0 0 0 "">
  <650 180 610 180 "" 0 0 0 "">
  <630 410 670 410 "" 0 0 0 "">
  <670 410 670 430 "" 0 0 0 "">
  <610 260 610 350 "" 0 0 0 "">
  <610 350 610 380 "" 0 0 0 "">
  <610 350 720 350 "" 0 0 0 "">
  <750 320 750 180 "" 0 0 0 "">
  <750 180 650 180 "" 0 0 0 "">
  <750 550 800 550 "" 0 0 0 "">
  <750 380 750 550 "" 0 0 0 "">
  <610 550 610 590 "" 0 0 0 "">
  <750 550 610 550 "" 0 0 0 "">
  <770 350 790 350 "" 0 0 0 "">
  <790 350 790 180 "" 0 0 0 "">
  <790 180 750 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
