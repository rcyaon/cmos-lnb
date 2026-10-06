<Qucs Schematic 26.1.1>
<Properties>
  <View=-1682,-908,2315,861,0.513074,193,0>
  <Grid=10,10,1>
  <DataSet=InductorMkI.dat>
  <DataDisplay=InductorMkI.dpl>
  <OpenDisplay=0>
  <Script=PassiveTest.m>
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
  <GND * 1 -110 300 0 0 0 0>
  <SpiceInclude SpiceInclude1 1 -520 -580 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 240 300 0 0 0 0>
  <Pac P1 1 240 250 18 -26 0 1 "2" 1 "50 Ohm" 1 "-50 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <Pac P2 1 -110 250 18 -26 0 1 "1" 1 "50 Ohm" 1 "-50 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <SpiceLib SpiceLib1 1 -544 -404 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <NutmegEq NutmegEq2 1 -530 -20 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
  <SpiceLib SpiceLib2 1 -544 -494 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpiceLib SpiceLib3 1 -544 -314 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib4 1 -544 -224 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib5 1 -544 -134 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <GND * 1 70 340 0 0 0 0>
  <NutmegEq NutmegEq4 1 -350 70 -31 16 0 0 "ALL" 1 "inductance=z_2_1 / (2 * pi * frequency)" 1>
  <NutmegEq NutmegEq3 1 -350 -20 -31 16 0 0 "ALL" 1 "capacitance=1 / (2 * pi * frequency * z_2_1)" 1>
  <GND * 1 130 340 0 0 0 0>
  <SPfile X2 1 70 260 -60 -26 0 1 "spiral_inductor_series.s2p" 0 "rectangular" 0 "linear" 0 "open" 0 "2" 0>
  <.SP SP1 1 -750 -30 0 50 0 0 "lin" 1 "1 MHz" 1 "3 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <-110 280 -110 300 "" 0 0 0 "">
  <-110 200 -110 220 "" 0 0 0 "">
  <240 280 240 300 "" 0 0 0 "">
  <240 200 240 220 "" 0 0 0 "">
  <70 200 240 200 "" 0 0 0 "">
  <70 200 70 230 "" 0 0 0 "">
  <70 290 70 340 "" 0 0 0 "">
  <100 260 130 260 "" 0 0 0 "">
  <130 260 130 340 "" 0 0 0 "">
  <70 200 -110 200 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 70 -301 541 349 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -83.8379 20 7.62163 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 70 101 544 291 3 #c0c0c0 1 00 0 0 5e+08 3e+09 1 -37.2968 100 410.264 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.z_2_1" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 720 101 544 291 3 #c0c0c0 1 00 0 0 5e+08 3e+09 0 -1e-07 5e-08 1e-07 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.inductance" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
