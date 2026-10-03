<Qucs Schematic 26.1.1>
<Properties>
  <View=-1506,-307,1428,725,1.08498,732,0>
  <Grid=10,10,1>
  <DataSet=Reference_Testing.dat>
  <DataDisplay=Reference_Testing.dpl>
  <OpenDisplay=0>
  <Script=Reference_Testing.m>
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
  <GND * 1 -640 50 0 0 0 0>
  <Sub Xbias 1 -250 0 -40 60 0 0 "beta_mult.sch" 0>
  <Sub Xref 1 180 0 -40 60 0 0 "vref.sch" 0>
  <Vdc V2 1 -640 0 18 -26 0 1 "5 V" 1>
  <.TR TR1 1 -660 270 0 50 0 0 "lin" 1 "0" 1 "1 ms" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <-100 -30 -30 -30 "" 0 0 0 "">
  <-30 -30 -30 0 "" 0 0 0 "">
  <-30 0 30 0 "" 0 0 0 "">
  <-400 -60 -400 -30 "" 0 0 0 "">
  <-400 -60 30 -60 "" 0 0 0 "">
  <30 -60 30 -20 "" 0 0 0 "">
  <-640 -30 -400 -30 "" 0 0 0 "">
  <-640 30 -640 50 "" 0 0 0 "">
  <-400 10 -400 90 "" 0 0 0 "">
  <-400 90 -100 90 "" 0 0 0 "">
  <-100 30 -100 90 "" 0 0 0 "">
  <330 -20 330 -20 "o07" 340 -40 0 "">
  <330 0 330 0 "o20" 340 -20 0 "">
  <330 20 330 20 "o30" 340 0 0 "">
</Wires>
<Diagrams>
  <Rect -300 629 773 499 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tran.v(o20)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(o30)" #ff0000 1 3 0 0 0>
	<"ngspice/tran.v(o07)" #ff00ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
