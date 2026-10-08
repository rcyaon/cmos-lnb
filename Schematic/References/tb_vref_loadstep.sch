<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,-360,530,980,1,0,0>
  <Grid=10,10,1>
  <DataSet=tb_vref_loadstep.dat>
  <DataDisplay=tb_vref_loadstep.dpl>
  <OpenDisplay=0>
  <Script=tb_vref_loadstep.m>
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
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 40 0 0 "\n* 10 uA load step on every tap (on at 2 us, off at 6 us), repeated with\n* 0 / 1 pF / 10 pF / 100 pF of extra load capacitance on each tap\nforeach cl 1f 1p 10p 100p\n  alter cl07 = $cl\n  alter cl20 = $cl\n  alter cl30 = $cl\n  tran 2n 10u\n  linearize v(o07) v(o20) v(o30)\nend\n* linearize puts each run in its own plot: tran2, tran4, tran6, tran8\nsetplot tran2\nlet a07 = v(o07)\nlet a20 = v(o20)\nlet a30 = v(o30)\nlet b07 = tran4.v(o07)\nlet b20 = tran4.v(o20)\nlet b30 = tran4.v(o30)\nlet c07 = tran6.v(o07)\nlet c20 = tran6.v(o20)\nlet c30 = tran6.v(o30)\nlet d07 = tran8.v(o07)\nlet d20 = tran8.v(o20)\nlet d30 = tran8.v(o30)\nwrite tb_vref_loadstep.raw a07 a20 a30 b07 b20 b30 c07 c20 c30 d07 d20 d30\n" 1 "a07;a20;a30;b07;b20;b30;c07;c20;c30;d07;d20;d30" 0 "" 0>
  <S4Q_I I07 1 -560 330 18 -26 0 1 "pulse(0 10u 2u 10n 10n 4u 20u)" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -560 380 0 0 0 0>
  <S4Q_I I20 1 -380 330 18 -26 0 1 "pulse(0 10u 2u 10n 10n 4u 20u)" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -380 380 0 0 0 0>
  <S4Q_I I30 1 -200 330 18 -26 0 1 "pulse(0 10u 2u 10n 10n 4u 20u)" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -200 380 0 0 0 0>
  <C CL07 1 -20 330 17 -26 0 1 "1f" 1 "" 0 "neutral" 0>
  <GND * 1 -20 380 0 0 0 0>
  <C CL20 1 120 330 17 -26 0 1 "1f" 1 "" 0 "neutral" 0>
  <GND * 1 120 380 0 0 0 0>
  <C CL30 1 260 330 17 -26 0 1 "1f" 1 "" 0 "neutral" 0>
  <GND * 1 260 380 0 0 0 0>
</Components>
<Wires>
  <-560 30 -560 50 "" 0 0 0 "">
  <-560 -30 -560 -30 "vdd" -550 -50 0 "">
  <-400 -30 -400 -30 "vdd" -390 -50 0 "">
  <-400 -10 -400 -10 "vdd" -390 -30 0 "">
  <-400 10 -400 10 "s1" -390 -10 0 "">
  <-100 -30 -100 -30 "pg" -90 -50 0 "">
  <-100 -10 -100 -10 "ng" -90 -30 0 "">
  <-100 10 -100 10 "ns" -90 -10 0 "">
  <-100 30 -100 30 "s1" -90 10 0 "">
  <30 -20 30 -20 "vdd" 40 -40 0 "">
  <30 0 30 0 "pg" 40 -20 0 "">
  <330 -20 330 -20 "o07" 340 -40 0 "">
  <330 0 330 0 "o20" 340 -20 0 "">
  <330 20 330 20 "o30" 340 0 0 "">
  <-560 360 -560 380 "" 0 0 0 "">
  <-560 300 -560 300 "o07" -550 270 0 "">
  <-380 360 -380 380 "" 0 0 0 "">
  <-380 300 -380 300 "o20" -370 270 0 "">
  <-200 360 -200 380 "" 0 0 0 "">
  <-200 300 -200 300 "o30" -190 270 0 "">
  <-20 360 -20 380 "" 0 0 0 "">
  <-20 300 -20 300 "o07" -10 270 0 "">
  <120 360 120 380 "" 0 0 0 "">
  <120 300 120 300 "o20" 130 270 0 "">
  <260 360 260 380 "" 0 0 0 "">
  <260 300 260 300 "o30" 270 270 0 "">
</Wires>
<Diagrams>
  <Rect 480 250 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "time (s)" "o20: 0 / 1p / 10p / 100p (V)" "">
	<"ngspice/tran.v(a20)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(b20)" #ff0000 1 3 0 0 0>
	<"ngspice/tran.v(c20)" #ff00ff 1 3 0 0 0>
	<"ngspice/tran.v(d20)" #00aa00 1 3 0 0 0>
  </Rect>
  <Rect 480 720 620 380 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "time (s)" "o30: 0 / 1p / 10p / 100p (V)" "">
	<"ngspice/tran.v(a30)" #0000ff 1 3 0 0 0>
	<"ngspice/tran.v(b30)" #ff0000 1 3 0 0 0>
	<"ngspice/tran.v(c30)" #ff00ff 1 3 0 0 0>
	<"ngspice/tran.v(d30)" #00aa00 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
