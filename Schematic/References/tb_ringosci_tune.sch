<Qucs Schematic 26.1.1>
<Properties>
  <View=-720,-360,260,980,1,0,0>
  <Grid=10,10,1>
  <DataSet=tb_ringosci_tune.dat>
  <DataDisplay=tb_ringosci_tune.dpl>
  <OpenDisplay=0>
  <Script=tb_ringosci_tune.m>
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
  <S4Q_V V1 1 -460 0 18 -26 0 1 "pwl(0 0 1n vsup)" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 -460 50 0 0 0 0>
  <S4Q_I I1 1 -460 250 18 -26 0 1 "80u" 1 "" 0 "" 0 "" 0 "" 0>
  <Sub X1 1 -150 0 -40 60 0 0 "ringosci.sch" 0>
  <C C1 1 60 60 17 -26 0 1 "50f" 1 "" 0 "neutral" 0>
  <GND * 1 60 110 0 0 0 0>
  <.CUSTOMSIM CUSTOM1 1 -580 600 0 40 0 0 "\n* LO frequency and average supply current against control current\nlet npts = 10\nlet k = 0\nset curplot = new\nset scratch = $curplot\nsetplot $scratch\nlet ictl = unitvec(npts)\nlet fosc = unitvec(npts)\nlet idd = unitvec(npts)\nforeach ic 20u 40u 60u 80u 100u 120u 140u 160u 180u 200u\n  alter i1 = $ic\n  tran 2p 60n 0 2p\n  meas tran t1 WHEN v(lo)=2.5 RISE=5\n  meas tran t2 WHEN v(lo)=2.5 RISE=15\n  meas tran iavg AVG i(v1) from=10n to=60n\n  set dt = $curplot\n  setplot $scratch\n  let ictl[k] = $ic*1e6\n  let fosc[k] = 10/({$dt}.t2-{$dt}.t1)/1e9\n  let idd[k] = -{$dt}.iavg*1e3\n  destroy $dt\n  let k = k + 1\nend\nsetplot $scratch\nsetscale ictl\nwrite tb_ringosci_tune.raw fosc idd\n" 1 "fosc;idd" 0 "" 0>
  <SpicePar SpicePar1 1 -480 -160 -28 16 0 0 "vsup=5" 1>
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
</Diagrams>
<Paintings>
  <Text -460 -150 10 #000000 0 "ictl = 80 uA (stands in for the iDAC); 50 fF on lo stands in for the mixer LO input">
</Paintings>
