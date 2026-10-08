# Biasing Reference Supply

*Most Up-To-Date Schematic: Schematic/LDO/Reference.sch*

This characterization assumes an ideally stable 1.2V supply because the performance of the GF180MCU harness band gap reference design remains unclear.  In actuality, many of these performance metrics may be limited by the stability of the band gap reference.  Testing was performed with the reference supply unloaded because the biased transistor gates provide nearly no additional loading to the reference.

## Rise Time Test Bench

*Most Up-To-Date Schematic: Schematic/LDO/LDO_Testing_Rise_Time_MkI.sch*

The voltage reference takes at most 500 nS to stabilize, reaching the desired steady output voltage.

### Typical 
![Rise Time](/Images/Reference_Rise_Time_TT.png)

### Slow-Slow Corner

![Rise Time](/Images/Reference_Rise_Time_TT.png)

### Fast-Fast Corner

![Rise Time](/Images/Reference_Rise_Time_TT.png)

### Slow-Fast Corner

![Rise Time](/Images/Reference_Rise_Time_TT.png)

### Fast-Slow Corner

![Rise Time](/Images/Reference_Rise_Time_TT.png)



## Supply Voltage Test Bench

*Most Up-To-Date Schematic: Schematic/LDO/LDO_Testing_Supply_MkI.sch*

The bias supply reference remains functional and stable between 3V and 4V.

### Typical 
![Supply](/Images/Reference_Supply_TT.png)

### Slow-Slow Corner

![Supply](/Images/Reference_Supply_SS.png)

### Fast-Fast Corner

![Supply](/Images/Reference_Supply_FF.png)

### Slow-Fast Corner

![Supply](/Images/Reference_Supply_SF.png)

### Fast-Slow Corner

![Supply](/Images/Reference_Supply_FS.png)



## Temperature Sweep Test Bench

*Most Up-To-Date Schematic: Schematic/LDO/LDO_Testing_Temp_MkI.sch*

Temperature was swept over the automotive span of -25 C to 125 C.  The LDO remained stable over the entire temperature span.

### Typical 
| 1.7 V | 2.5 V |
|---------------------|---------------------|
|![Temperature](/Images/Reference_Temp_1v7_TT.png)|![Temperature](/Images/Reference_Temp_2v5_TT.png)|


### Slow-Slow Corner
| 1.7 V | 2.5 V |
|---------------------|---------------------|
|![Temperature](/Images/Reference_Temp_1v7_SS.png)|![Temperature](/Images/Reference_Temp_2v5_SS.png)|


### Fast-Fast Corner
| 1.7 V | 2.5 V |
|---------------------|---------------------|
|![Temperature](/Images/Reference_Temp_1v7_FF.png)|![Temperature](/Images/Reference_Temp_2v5_FF.png)|


### Slow-Fast Corner
| 1.7 V | 2.5 V |
|---------------------|---------------------|
|![Temperature](/Images/Reference_Temp_1v7_SF.png)|![Temperature](/Images/Reference_Temp_2v5_SF.png)|


### Fast-Slow Corner
| 1.7 V | 2.5 V |
|---------------------|---------------------|
|![Temperature](/Images/Reference_Temp_1v7_FS.png)|![Temperature](/Images/Reference_Temp_2v5_FS.png)|



## Monte Carlo Mismatch Test Bench

*Most Up-To-Date Schematic: Schematic/LDO/LDO_Monte_Carlo_MkI.sch*

A 3000 run Monte Carlo simulation was performed using the typical transistor corner in order to assess drift in the output due to transistor mismatch.  The results showed a 2 standard deviation drift of around ±10 mV.  This is more than enough for the bias supply.  This uses the worst-case die-to-die variance model.  It is likely matching would be better on transistors near each other on the same die.

### 1.7 V Reference

![Monte Carlo](/Images/MC_out_1v7_TT.png)

### 2.5 V Reference

![Monte Carlo](/Images/MC_out_2v5_TT.png)
