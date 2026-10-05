<Qucs Schematic 26.1.1>
<Properties>
  <View=-57,589,965,1160,1.54258,0,0>
  <Grid=10,10,1>
  <DataSet=OutputBufferMkVI.dat>
  <DataDisplay=OutputBufferMkVI.dpl>
  <OpenDisplay=0>
  <Script=OutputBufferMkVI.m>
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
  <.PortSym 80 10 2 180 Output>
  <.PortSym -80 -40 4 0 TBias>
</Symbol>
<Components>
  <Port VDD 1 470 730 -72 -23 0 3 "1" 1 "analog" 0>
  <Port Input 1 210 790 -23 12 0 0 "3" 1 "analog" 0>
  <Port Output 1 620 970 4 -50 0 2 "2" 1 "analog" 0>
  <GND * 1 470 1070 0 0 0 0>
  <BJT_SPICE Q1 1 470 790 -26 34 0 0 "4" 1 "npn" 1 "X" 1 "NPN_10P00X10P00 m=1" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 520 810 0 0 0 0>
  <Port TBias 1 340 940 12 4 0 1 "4" 1 "analog" 0>
  <R R2 0 340 890 -111 -26 0 3 "5 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 390 1050 0 0 0 0>
  <R_SPICE R3 1 470 1020 15 -26 0 1 "ppolyf_u_1k r_width=2u r_length=2u" 0 "" 0 "" 0 "" 0 "" 0 "3" 1 "X" 1>
</Components>
<Wires>
  <470 730 470 760 "" 0 0 0 "">
  <470 820 470 970 "" 0 0 0 "">
  <470 1050 470 1070 "" 0 0 0 "">
  <500 790 520 790 "" 0 0 0 "">
  <520 790 520 810 "" 0 0 0 "">
  <470 970 620 970 "" 0 0 0 "">
  <470 970 470 990 "" 0 0 0 "">
  <340 790 440 790 "" 0 0 0 "">
  <340 790 340 860 "" 0 0 0 "">
  <340 920 340 940 "" 0 0 0 "">
  <210 790 340 790 "" 0 0 0 "">
  <390 1020 440 1020 "" 0 0 0 "">
  <390 1020 390 1050 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
