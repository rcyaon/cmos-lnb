<Qucs Schematic 26.1.1>
<Properties>
  <View=-3483,-1117,3759,2931,0.466507,762,379>
  <Grid=10,10,1>
  <DataSet=LNA_Testing_MkI.dat>
  <DataDisplay=LNA_Testing_MkI.dpl>
  <OpenDisplay=0>
  <Script=LNA_Testing_MkI.m>
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
  <.TR TR1 0 -1230 350 0 50 0 0 "lin" 1 "0" 1 "0.02 us" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 -1230 490 0 31 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <SpiceInclude SpiceInclude1 1 -1180 -190 -37 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice" 1 "" 0 "" 0 "" 0 "" 0>
  <.FFT FFT1 0 -1090 350 0 50 0 0 "10GHz" 1 "1MHz" 1 "hanning" 1 "2" 0 "0" 0 "yes" 0>
  <SpiceLib SpiceLib1 1 -1204 -14 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "bjt_typical" 1>
  <NutmegEq NutmegEq1 1 -250 370 -31 16 0 0 "TR1" 1 "HiZ_in_ac=v(HiZ_input_dc) - abs(mean(v(HiZ_input_dc)))" 1 "S1_ac=v(lna_stage_1_dc) - abs(mean(v(lna_stage_1_dc)))" 1 "S2_ac=v(lna_stage_2_dc) - abs(mean(v(lna_stage_2_dc)))" 1 "HiZ_out_ac=v(lna_output_dc) - abs(mean(v(lna_output_dc)))" 1>
  <NutmegEq NutmegEq2 1 -450 370 -31 16 0 0 "SP1" 1 "s11_db=dB(s_1_1)" 1 "s21_db=dB(s_2_1)" 1 "s12_db=dB(s_1_2)" 1 "s22_db=dB(s_2_2)" 1>
  <SpiceLib SpiceLib2 1 -1204 76 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "cap_mim" 1>
  <SpiceLib SpiceLib3 1 -1204 166 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "mimcap_typical" 1>
  <SpiceLib SpiceLib4 1 -1204 256 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "res_typical" 1>
  <.SP SP1 1 -920 350 0 50 0 0 "lin" 1 "1 MHz" 1 "5 GHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <SpicePar SpicePar1 1 -720 370 -29 16 0 0 "sw_stat_global=0" 1 "sw_stat_mismatch=0" 1>
  <SpiceLib SpiceLib5 1 -1204 -104 -14 16 0 0 "/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice" 1 "typical" 1>
</Components>
<Wires>
</Wires>
<Diagrams>
  <Tab -1230 677 1712 117 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(input)" #0000ff 0 3 0 0 0>
	<"ngspice/v(hiz_input_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(lna_stage_1_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(lna_stage_2_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(lna_output_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(g_cell_t_bias)" #0000ff 0 3 1 0 0>
	<"ngspice/v(amp_bias_dc)" #0000ff 0 3 0 0 0>
	<"ngspice/v(vref_2v0)" #0000ff 0 3 1 0 0>
	<"ngspice/v(vref_3v5)" #0000ff 0 3 1 0 0>
  </Tab>
</Diagrams>
<Paintings>
</Paintings>
