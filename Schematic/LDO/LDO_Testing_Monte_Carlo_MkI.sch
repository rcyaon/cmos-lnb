<Qucs Schematic 26.1.1>
<Properties>
  <View=-10662,-595,4553,947,0.693433,6887,0>
  <Grid=10,10,1>
  <DataSet=LDO_Testing_Monte_Carlo_MkI.dat>
  <DataDisplay=LDO_Testing_Monte_Carlo_MkI.dpl>
  <OpenDisplay=0>
  <Script=LDO_Testing_Monte_Carlo_MkI.m>
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
  <Sub SUB1 1 230 290 -26 78 0 0 "Schematic/LDO/ReferenceMkI.sch" 0>
  <Idc I1 1 -40 270 -77 -26 0 3 "10 uA" 1>
  <GND * 1 -150 300 0 0 0 0>
  <Vdc V1 1 -150 270 -84 -26 1 1 "3.3 V" 1>
  <Vdc V2 1 60 260 -26 18 0 0 "1.2 V" 1>
  <GND * 1 10 280 0 0 0 0>
  <.DC DC1 1 -260 10 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpicePar SpicePar1 1 240 20 -29 16 0 0 "sw_stat_global=1" 1 "sw_stat_mismatch=1" 1>
  <SpiceLib SpiceLib5 1 -244 -454 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "Typical" 1>
  <.CUSTOMSIM CUSTOM1 1 530 -390 0 31 0 0 "let idx = 0\n\nset appendwrite\n\nset wr_vecnames\nset wr_singlescale \n\nrm /foss/designs/LNA/MkIII/Schematic/LDO/mc_data.csv\n\nwhile idx <= 3000\n  \n  reset\n  \n  op\n  let out_1v7 = v(out1v7)\n  let out_2v5 = v(out2v5)\n  write mc_out.raw out_1v7 out_2v5\n  wrdata /foss/designs/LNA/MkIII/Schematic/LDO/mc_data.csv out_1v7 out_2v5\n  unset wr_vecnames\n  reset\n  \n  let idx = idx + 1\nend\n\nunset appendwrite\n\n" 1 "" 0 "mc_out.raw" 0>
</Components>
<Wires>
  <310 330 380 330 "Out1V7" 380 370 47 "">
  <310 260 380 260 "Out2V5" 380 170 44 "">
  <90 260 150 260 "" 0 0 0 "">
  <-40 300 -40 330 "" 0 0 0 "">
  <-40 190 -40 240 "" 0 0 0 "">
  <230 190 230 210 "" 0 0 0 "">
  <-150 190 -40 190 "" 0 0 0 "">
  <-150 190 -150 240 "" 0 0 0 "">
  <-40 330 150 330 "" 0 0 0 "">
  <-40 190 230 190 "" 0 0 0 "">
  <10 260 30 260 "" 0 0 0 "">
  <10 260 10 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 310 -440 20 #ff0000 10 "You need to update the file path in this \nNutmeg block to get the CSV to export!">
</Paintings>
