<Qucs Schematic 26.1.1>
<Properties>
  <View=-1396,-223,1181,888,1.08334,594,33>
  <Grid=10,10,1>
  <DataSet=tb_vref_load.dat>
  <DataDisplay=tb_vref_load.dpl>
  <OpenDisplay=0>
  <Script=tb_vref_load.m>
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
  <S4Q_V Vctl 1 -560 300 18 -26 0 1 "0" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -560 350 0 0 0 0>
  <Sub Xbias 1 -250 0 -40 60 0 0 "beta_mult.sch" 0>
  <Sub Xref 1 180 0 -40 60 0 0 "vref.sch" 0>
  <SPICE_dev l07 1 -540 460 -26 -60 0 0 "2" 0 "B" 0 "" 0 "I=v(ctl)*1u" 1>
  <GND * 1 -500 460 0 0 0 0>
  <GND * 1 -490 550 0 0 0 0>
  <SPICE_dev l30 1 -520 650 -26 -60 0 0 "2" 0 "B" 0 "" 0 "I=v(ctl)*1u" 1>
  <GND * 1 -480 650 0 0 0 0>
  <.CUSTOMSIM CUSTOM1 1 -260 330 0 31 0 0 "\ndc vctl 0 20 0.1\n* tap droop, mV\nlet d07 = (v(o07)-v(o07)[0])*1000\nlet d20 = (v(o20)-v(o20)[0])*1000\nlet d30 = (v(o30)-v(o30)[0])*1000\nwrite tb_vref_load.raw v(o07) v(o20) v(o30) d07 d20 d30\n" 1 "v(o07);v(o20);v(o30);d07;d20;d30" 0 "" 0>
  <SPICE_dev l20 1 -530 550 -26 -60 0 0 "2" 0 "B" 0 "" 0 "I=v(ctl)*1u" 1>
</Components>
<Wires>
  <-560 30 -560 50 "" 0 0 0 "">
  <-560 330 -560 350 "" 0 0 0 "">
  <-560 -30 -560 -30 "vdd" -550 -50 0 "">
  <-560 270 -560 270 "ctl" -550 250 0 "">
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
  <-580 460 -580 460 "o07" -570 440 0 "">
  <-560 650 -560 650 "o30" -550 630 0 "">
  <-570 550 -570 550 "o20" -560 530 0 "">
</Wires>
<Diagrams>
  <Rect 480 250 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "load per tap (uA)" "tap voltage (V)" "">
	<"ngspice/v(o07)" #0000ff 1 3 0 0 0>
	<"ngspice/v(o20)" #ff0000 1 3 0 0 0>
	<"ngspice/v(o30)" #ff00ff 1 3 0 0 0>
  </Rect>
  <Rect 480 720 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "load per tap (uA)" "droop (mV)" "">
	<"ngspice/d07" #0000ff 1 3 0 0 0>
	<"ngspice/d20" #ff0000 1 3 0 0 0>
	<"ngspice/d30" #ff00ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
