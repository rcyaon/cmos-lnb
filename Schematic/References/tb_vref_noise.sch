<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,-360,530,980,1,0,0>
  <Grid=10,10,1>
  <DataSet=tb_vref_noise.dat>
  <DataDisplay=tb_vref_noise.dpl>
  <OpenDisplay=0>
  <Script=tb_vref_noise.m>
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
  <S4Q_V V1 1 -560 0 18 -26 0 1 "dc 5 ac 0" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -560 50 0 0 0 0>
  <Sub Xbias 1 -250 0 -40 60 0 0 "beta_mult.sch" 0>
  <Sub Xref 1 180 0 -40 60 0 0 "vref.sch" 0>
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 40 0 0 "\n* output noise density at each tap, nV/rtHz, and 1 Hz - 100 MHz total, uVrms\nnoise v(o07) v1 dec 20 1 100meg\nnoise v(o20) v1 dec 20 1 100meg\nnoise v(o30) v1 dec 20 1 100meg\nsetplot noise1\nlet n07 = onoise_spectrum*1e9\nlet n20 = noise3.onoise_spectrum*1e9\nlet n30 = noise5.onoise_spectrum*1e9\nlet tot07 = noise2.onoise_total*1e6\nlet tot20 = noise4.onoise_total*1e6\nlet tot30 = noise6.onoise_total*1e6\nprint tot07 tot20 tot30\nwrite tb_vref_noise.raw n07 n20 n30\n" 1 "n07;n20;n30" 0 "" 0>
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
</Wires>
<Diagrams>
  <Rect 480 450 700 480 3 #c0c0c0 1 10 1 0 1 1 1 0 1 1 1 -1 0.5 1 315 0 225 1 0 0 "frequency (Hz)" "output noise (nV/rtHz)" "">
	<"ngspice/ac.n07" #0000ff 1 3 0 0 0>
	<"ngspice/ac.n20" #ff0000 1 3 0 0 0>
	<"ngspice/ac.n30" #ff00ff 1 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
