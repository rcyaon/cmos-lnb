<Qucs Schematic 26.1.1>
<Properties>
  <View=-97,97,578,474,2.33481,0,0>
  <Grid=10,10,1>
  <DataSet=ImpedanceMatchingMkII.dat>
  <DataDisplay=ImpedanceMatchingMkII.dpl>
  <OpenDisplay=0>
  <Script=ImpedanceMatchingMkII.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID 30 4 SUB>
  <.PortSym -110 -30 1 0 LowImpedance>
  <.PortSym 30 -30 2 180 HighImpedance>
  <Line -110 -30 10 0 #000080 2 1>
  <Line 20 -30 10 0 #000080 2 1>
  <Line -100 -40 120 0 #000080 2 1>
  <Line 20 -40 0 80 #000080 2 1>
  <Line -100 40 120 0 #000080 2 1>
  <Line -100 -40 0 80 #000080 2 1>
  <Text -90 -30 12 #000000 0 "LowZ">
  <Text -20 -30 12 #000000 0 "HiZ">
  <.PortSym -40 50 3 90 Bias>
  <Line -40 40 0 10 #000080 2 1>
  <Text -60 20 12 #000000 0 "Bias">
</Symbol>
<Components>
  <Port LowImpedance 1 -30 240 -23 -50 1 0 "1" 1 "analog" 0>
  <Port HighImpedance 1 410 240 4 -50 0 2 "2" 1 "analog" 0>
  <C_SPICE C1 1 120 240 -26 -74 0 2 "cap_mim_2f0fF c_width=15u c_length=22u" 0 "" 0 "" 0 "" 0 "" 0 "2" 1 "X" 1>
  <INDQ LQ1 1 210 330 17 -26 0 1 "15 nH" 1 "0.7" 1 "100 MHz" 0 "Linear" 0 "26.85" 0>
  <Port Bias 1 210 380 12 4 0 1 "3" 1 "analog" 0>
</Components>
<Wires>
  <-30 240 90 240 "" 0 0 0 "">
  <150 240 210 240 "" 0 0 0 "">
  <210 240 210 300 "" 0 0 0 "">
  <210 360 210 380 "" 0 0 0 "">
  <210 240 410 240 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
