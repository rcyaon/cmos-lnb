<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,-360,260,980,1,0,0>
  <Grid=10,10,1>
  <DataSet=tb_ringosci_disable.dat>
  <DataDisplay=tb_ringosci_disable.dpl>
  <OpenDisplay=0>
  <Script=tb_ringosci_disable.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <S4Q_V V1 1 -460 0 18 -26 0 1 "pwl(0 0 1n 5)" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -460 50 0 0 0 0>
  <S4Q_I I1 1 -460 250 18 -26 0 1 "pulse(80u 0 20n 0.1n 0.1n 20n 100n)" 1 "" 0 "" 0 "" 0 "" 0>
  <Sub X1 1 -150 0 -40 60 0 0 "ringosci.sch" 0>
  <C C1 1 60 60 17 -26 0 1 "50f" 1 "" 0 "neutral" 0>
  <GND * 1 60 110 0 0 0 0>
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 40 0 0 "\n* control current on (80 uA) 0-20 ns, off 20-40 ns, back on at 40 ns\ntran 2p 60n 0 2p\nlet idd = -i(v1)*1e3\nmeas tran idd_on AVG idd from=10n to=20n\nmeas tran idd_off AVG idd from=35n to=40n\nmeas tran t_restart WHEN v(lo)=2.5 RISE=1 TD=40n\nwrite tb_ringosci_disable.raw v(lo) v(vdd) idd v(ictl)\n" 1 "v(lo);v(vdd);idd;v(ictl)" 0 "" 0>
</Components>
<Wires>
  <-460 30 -460 50 "" 0 0 0 "">
  <60 90 60 110 "" 0 0 0 "">
  <-460 -30 -460 -30 "vdd" -450 -50 0 "">
  <-460 220 -460 220 "vdd" -450 200 0 "">
  <-460 280 -460 280 "ictl" -450 260 0 "">
  <-300 -40 -300 -40 "vdd" -290 -60 0 "">
  <-300 -20 -300 -20 "ictl" -290 -40 0 "">
  <0 -30 0 -30 "lo" 10 -50 0 "">
  <60 30 60 30 "lo" 70 10 0 "">
</Wires>
<Diagrams>
  <Rect 480 250 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "time (s)" "LO, ictl (V)" "">
	<"ngspice/tran.v(lo)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(ictl)" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 480 720 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "time (s)" "supply current (mA)" "">
	<"ngspice/tran.idd" #0000ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text -460 -150 10 #000000 0 "ictl = 80 uA (stands in for the iDAC); 50 fF on lo stands in for the mixer LO input">
</Paintings>
