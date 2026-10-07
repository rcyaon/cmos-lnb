<Qucs Schematic 26.1.1>
<Properties>
  <View=-2937,-1477,1866,1176,0.711729,1488,685>
  <Grid=10,10,1>
  <DataSet=GainStage_Testing_Monte_Carlo_MkI.dat>
  <DataDisplay=GainStage_Testing_Monte_Carlo_MkI.dpl>
  <OpenDisplay=0>
  <Script=GainStage_Testing_Monte_Carlo_MkI.m>
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
  <SpiceInclude SpiceInclude1 1 -220 -540 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <SpiceLib SpiceLib1 1 -244 -364 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <SpiceLib SpiceLib2 1 -244 -274 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -244 -184 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -244 -94 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <GND * 1 -290 300 0 0 0 0>
  <Vdc V1 1 -290 270 -84 -26 1 1 "3.3 V" 1>
  <.DC DC1 1 -260 10 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpicePar SpicePar1 1 240 20 -29 16 0 0 "sw_stat_global=1" 1 "sw_stat_mismatch=1" 1>
  <SpiceLib SpiceLib5 1 -244 -454 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "Typical" 1>
  <Sub SUB1 1 200 320 -26 215 0 0 "./Schematic/Gain Stage/GainStageMkII.sch" 0>
  <MOS_SPICE X1 1 -140 300 0 34 1 2 "X" 1 "4" 1 "pmos" 1 "pfet_03v3 L=0.5u W=0.3u nf=1 ad='int((nf+1)/2) * W/nf * 0.18u' as='int((nf+2)/2) * W/nf * 0.18u' pd='2*int((nf+1)/2) * (W/nf + 0.18u)' ps='2*int((nf+2)/2) * (W/nf + 0.18u)' nrd='0.18u / W' nrs='0.18u / W' sa=0 sb=0 sd=0" 0 "" 0 "" 0 "" 0 "" 0>
  <Idc I1 1 -140 470 -77 -26 0 3 "10 uA" 1>
  <GND * 1 -140 500 0 0 0 0>
  <Vdc V2 1 330 450 18 -26 0 1 "1.7 V" 1>
  <GND * 1 0 450 0 0 0 0>
  <GND * 1 330 480 0 0 0 0>
  <Vdc V3 1 0 420 18 -26 0 1 "1.7 V" 1>
  <Vdc V4 1 360 300 -26 -56 0 2 "2.5 V" 1>
  <GND * 1 410 320 0 0 0 0>
  <.CUSTOMSIM CUSTOM1 1 530 -350 0 31 0 0 "let idx = 0\n\nset appendwrite\n\nset wr_vecnames\nset wr_singlescale \n\nwhile idx <= 3000\n  \n  reset\n  \n  op\n  let out = v(output)\n  wrdata '/foss/designs/LNA/MkIII/Schematic/Gain Stage/mc_data.csv' out\n  unset wr_vecnames\n  reset\n  \n  let idx = idx + 1\nend\n\nunset appendwrite\n\n" 1 "" 0 "" 0>
</Components>
<Wires>
  <-290 190 -290 240 "" 0 0 0 "">
  <-290 190 -140 190 "" 0 0 0 "">
  <200 190 200 260 "" 0 0 0 "">
  <-140 330 -140 350 "" 0 0 0 "">
  <-110 300 -90 300 "" 0 0 0 "">
  <-90 300 -90 350 "" 0 0 0 "">
  <-140 350 -90 350 "" 0 0 0 "">
  <-140 270 -140 260 "" 0 0 0 "">
  <-140 260 -170 260 "" 0 0 0 "">
  <-140 260 -140 190 "" 0 0 0 "">
  <-170 300 -170 260 "" 0 0 0 "">
  <-170 300 -160 300 "" 0 0 0 "">
  <120 300 -90 300 "" 0 0 0 "">
  <200 190 -140 190 "" 0 0 0 "">
  <120 350 0 350 "" 0 0 0 "">
  <-140 440 -140 350 "" 0 0 0 "">
  <280 400 330 400 "" 0 0 0 "">
  <330 400 330 420 "" 0 0 0 "">
  <0 390 0 350 "" 0 0 0 "">
  <330 300 280 300 "" 0 0 0 "">
  <390 300 410 300 "" 0 0 0 "">
  <410 300 410 320 "" 0 0 0 "">
  <280 350 350 350 "output" 360 370 50 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 310 -440 20 #ff0000 10 "You need to update the file path in this \nNutmeg block to get the CSV to export!">
  <Text 140 440 12 #000000 0 "Gain Stage">
</Paintings>
