# CMOS Gain Stage

*Most Up-To-Date Schematic: Schematic/Gain Stage/GainStageMkII.sch*


## Monte Carlo Mismatch Test Bench

*Most Up-To-Date Schematic: Schematic/Gain Stage/GainStageMkII.sch*

A 3000 run Monte Carlo simulation was performed using the typical transistor corner in order to assess drift in the output due to transistor mismatch.  The results showed a 2 standard deviation drift of around ±100 mV.  This deviation is relatively high due to the small size of the transistors being used in the feedback network.  The transistors need to be small in order for them to limit their frequency response.  Although this amount of drift is not ideal, the only parameter that will be affected is the nominal inversion state of the next stage.  Despite the deviation, either way, the channel will be strongly inverted, so it is acceptable.

### 2.5 V Reference

![Monte Carlo](/Images/MC_out_TT.png)
