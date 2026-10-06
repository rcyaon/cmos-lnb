<Qucs Schematic 26.1.1>
<Properties>
  <View=-743,-739,1355,674,0.751192,0,180>
  <Grid=10,10,1>
  <DataSet=PassiveTest.dat>
  <DataDisplay=PassiveTest.dpl>
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
  <GND * 1 -490 290 0 0 0 0>
  <SpiceInclude SpiceInclude1 1 -470 -590 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 290 290 0 0 0 0>
  <Pac P1 1 290 240 18 -26 0 1 "2" 1 "50 Ohm" 1 "-50 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <.SP SP1 1 -700 -40 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P2 1 -490 240 18 -26 0 1 "1" 1 "50 Ohm" 1 "-50 dBm" 0 "1.7 GHz" 0 "26.85" 0 "true" 0 "false" 0>
  <SpiceLib SpiceLib1 1 -494 -414 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <NutmegEq NutmegEq2 1 -480 -30 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
  <SpiceLib SpiceLib2 1 -494 -504 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
  <SpiceLib SpiceLib3 1 -494 -324 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib4 1 -494 -234 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib5 1 -494 -144 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <GND * 1 -290 330 0 0 0 0>
  <GND * 1 120 330 0 0 0 0>
  <R R4 0 -160 250 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C4 0 -20 250 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <GND * 1 -350 280 0 0 0 0>
  <GND * 1 -160 330 0 0 0 0>
  <GND * 1 -20 330 0 0 0 0>
  <NutmegEq NutmegEq4 1 -300 60 -31 16 0 0 "ALL" 1 "inductance=z_2_1 / (2 * pi * frequency)" 1>
  <NutmegEq NutmegEq3 1 -300 -30 -31 16 0 0 "ALL" 1 "capacitance=1 / (2 * pi * frequency * z_2_1)" 1>
  <C_SPICE C3 0 120 250 17 -26 0 1 "cap_mim_2f0fF c_width=15u c_length=22u" 0 "" 0 "" 0 "" 0 "" 0 "2" 1 "X" 1>
  <R_SPICE R3 1 -290 250 15 -26 0 1 "ppolyf_u_1k r_width=1u r_length=20u" 0 "" 0 "" 0 "" 0 "" 0 "3" 1 "X" 1>
</Components>
<Wires>
  <-490 270 -490 290 "" 0 0 0 "">
  <-490 190 -490 210 "" 0 0 0 "">
  <290 270 290 290 "" 0 0 0 "">
  <290 190 290 210 "" 0 0 0 "">
  <-290 280 -290 330 "" 0 0 0 "">
  <-290 190 -290 220 "" 0 0 0 "">
  <-490 190 -290 190 "" 0 0 0 "">
  <120 190 290 190 "" 0 0 0 "">
  <120 190 120 220 "" 0 0 0 "">
  <120 280 120 330 "" 0 0 0 "">
  <-160 190 -20 190 "" 0 0 0 "">
  <-350 250 -320 250 "" 0 0 0 "">
  <-350 250 -350 280 "" 0 0 0 "">
  <-160 190 -160 220 "" 0 0 0 "">
  <-290 190 -160 190 "" 0 0 0 "">
  <-160 280 -160 330 "" 0 0 0 "">
  <-20 190 -20 220 "" 0 0 0 "">
  <-20 190 120 190 "" 0 0 0 "">
  <-20 280 -20 330 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 120 -311 541 349 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -83.8379 20 7.62163 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.s11_db" #0000ff 0 3 0 0 0>
	<"ngspice/ac.s21_db" #ff0000 0 3 0 0 0>
  </Rect>
  <Rect 120 91 544 291 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 0 500 2000 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.z_2_1" #0000ff 1 3 0 0 0>
	  <Mkr 2.26185e+09 306 -317 3 0 0>
	<"ngspice/ac.capacitance" #ff0000 1 3 0 0 0>
  </Rect>
  <Rect 770 91 544 291 3 #c0c0c0 1 00 1 0 5e+08 5e+09 1 -100 200 1100 1 -1 0.5 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/ac.capacitance" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
