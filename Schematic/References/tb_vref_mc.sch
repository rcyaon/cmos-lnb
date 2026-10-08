<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,-360,530,980,1,0,0>
  <Grid=10,10,1>
  <DataSet=tb_vref_mc.dat>
  <DataDisplay=tb_vref_mc.dpl>
  <OpenDisplay=0>
  <Script=tb_vref_mc.m>
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
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 40 0 0 "\n* Monte Carlo, one operating point per sample.  sw_stat_mismatch=1 gives\n* device mismatch; for die-to-die spread also set sw_stat_global=1 and\n* use the statistical section in gf180mcu_models.spice.\nlet mc_runs = 500\nlet run = 0\nset curplot = new\nset scratch = $curplot\nsetplot $scratch\nlet o07 = unitvec(mc_runs)\nlet o20 = unitvec(mc_runs)\nlet o30 = unitvec(mc_runs)\nlet idd = unitvec(mc_runs)\ndowhile run < mc_runs\n  reset\n  op\n  set run = $&run\n  set dt = $curplot\n  setplot $scratch\n  let o07[run] = {$dt}.v(o07)\n  let o20[run] = {$dt}.v(o20)\n  let o30[run] = {$dt}.v(o30)\n  let idd[run] = -{$dt}.i(v1)*1e6\n  destroy $dt\n  let run = run + 1\nend\nsetplot $scratch\nwrite tb_vref_mc.raw o07 o20 o30 idd\n" 1 "o07;o20;o30;idd" 0 "" 0>
  <SpicePar SpicePar1 1 -580 -160 -28 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=1" 1>
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
</Diagrams>
<Paintings>
</Paintings>
