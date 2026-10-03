<Qucs Schematic 26.1.1>
<Properties>
  <View=0,0,1576,881,1,0,0>
  <Grid=10,10,1>
  <DataSet=ErrorAmplifierMkI.dat>
  <DataDisplay=ErrorAmplifierMkI.dpl>
  <OpenDisplay=0>
  <Script=ErrorAmplifierMkI.m>
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
  <Port Com 1 270 380 -23 -50 1 0 "2" 1 "analog" 0>
  <GND * 1 570 560 0 0 0 0>
  <GND * 1 290 560 0 0 1 2>
  <GND * 1 500 640 0 0 0 0>
  <GND * 1 360 640 0 0 0 0>
  <Port TBias 1 340 210 -23 12 0 0 "6" 1 "analog" 0>
  <MOS_SPICE X1 1 360 520 0 34 1 2 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X2 1 360 380 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X3 1 500 380 0 34 1 2 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X4 1 430 210 -26 34 0 0 "X" 1 "4" 1 "pmos" 1 "pfet_06v0 L=0.6u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <MOS_SPICE X5 1 500 520 -26 34 0 0 "X" 1 "4" 1 "nmos" 1 "nfet_06v0 L=0.6u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Port Input 1 640 380 4 -50 0 2 "1" 1 "analog" 0>
  <Port Output 1 640 440 4 -50 0 2 "3" 1 "analog" 0>
  <Port VDD 1 430 130 -73 -23 0 3 "4" 1 "analog" 0>
</Components>
<Wires>
  <360 330 360 350 "" 0 0 0 "">
  <500 330 500 350 "" 0 0 0 "">
  <270 380 330 380 "" 0 0 0 "">
  <380 380 460 380 "" 0 0 0 "">
  <430 330 500 330 "" 0 0 0 "">
  <360 330 430 330 "" 0 0 0 "">
  <430 240 430 330 "" 0 0 0 "">
  <450 210 460 210 "" 0 0 0 "">
  <460 170 460 210 "" 0 0 0 "">
  <430 170 430 180 "" 0 0 0 "">
  <430 170 460 170 "" 0 0 0 "">
  <460 380 480 380 "" 0 0 0 "">
  <460 210 460 380 "" 0 0 0 "">
  <500 550 500 640 "" 0 0 0 "">
  <360 550 360 640 "" 0 0 0 "">
  <570 520 570 560 "" 0 0 0 "">
  <520 520 570 520 "" 0 0 0 "">
  <290 520 290 560 "" 0 0 0 "">
  <290 520 340 520 "" 0 0 0 "">
  <340 210 400 210 "" 0 0 0 "">
  <390 520 430 520 "" 0 0 0 "">
  <500 410 500 470 "" 0 0 0 "">
  <360 410 360 440 "" 0 0 0 "">
  <500 470 500 490 "" 0 0 0 "">
  <430 470 500 470 "" 0 0 0 "">
  <430 520 470 520 "" 0 0 0 "">
  <430 470 430 520 "" 0 0 0 "">
  <530 380 640 380 "" 0 0 0 "">
  <360 440 360 490 "" 0 0 0 "">
  <360 440 640 440 "" 0 0 0 "">
  <430 130 430 170 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
