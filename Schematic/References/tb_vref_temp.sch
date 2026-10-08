<Qucs Schematic 26.1.1>
<Properties>
  <View=-2721,-1560,2795,720,1.9221,4156,2518>
  <Grid=10,10,1>
  <DataSet=tb_vref_temp.dat>
  <DataDisplay=tb_vref_temp.dpl>
  <OpenDisplay=0>
  <Script=tb_vref_temp.m>
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
  <S4Q_V V1 1 -560 0 18 -26 0 1 "5" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -560 50 0 0 0 0>
  <Sub Xbias 1 -250 0 -40 60 0 0 "beta_mult.sch" 0>
  <Sub Xref 1 180 0 -40 60 0 0 "vref.sch" 0>
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 31 0 0 "\ndc temp -25 125 1\n* deviation of each tap from its own 27 C value (index 52), in %\nlet d07 = 100*(v(o07)/v(o07)[52]-1)\nlet d20 = 100*(v(o20)/v(o20)[52]-1)\nlet d30 = 100*(v(o30)/v(o30)[52]-1)\nlet idd = -i(v1)*1e6\nwrite tb_vref_temp.raw d07 d20 d30 v(o07) v(o20) v(o30) idd\n" 1 "d07;d20;d30;v(o07);v(o20);v(o30);idd" 0 "" 0>
</Components>
<Wires>
  <-560 30 -560 50 "" 0 0 0 "">
  <-560 -30 -560 -30 "vdd" -550 -50 0 "">
  <-400 -30 -400 -30 "vdd" -390 -50 0 "">
  <-100 -30 -100 -30 "pg" -90 -50 0 "">
  <-100 -10 -100 -10 "ng" -90 -30 0 "">
  <-100 10 -100 10 "ns" -90 -10 0 "">
  <-400 -10 -400 -10 "vdd" -390 -30 0 "">
  <-100 30 -100 30 "s1" -90 10 0 "">
  <-400 10 -400 10 "s1" -390 -10 0 "">
  <30 -20 30 -20 "vdd" 40 -40 0 "">
  <30 0 30 0 "pg" 40 -20 0 "">
  <330 -20 330 -20 "o07" 340 -40 0 "">
  <330 0 330 0 "o20" 340 -20 0 "">
  <330 20 330 20 "o30" 340 0 0 "">
</Wires>
<Diagrams>
  <Rect 480 250 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "temperature (C)" "tap voltage (V)" "">
	<"ngspice/v(o07)" #0000ff 1 3 0 0 0>
	<"ngspice/v(o20)" #ff0000 1 3 0 0 0>
	<"ngspice/v(o30)" #ff00ff 1 3 0 0 0>
  </Rect>
  <Rect 480 720 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "temperature (C)" "drift from 27 C (%)" "">
	<"ngspice/d07" #0000ff 1 3 0 0 0>
	<"ngspice/d20" #ff0000 1 3 0 0 0>
	<"ngspice/d30" #ff00ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
