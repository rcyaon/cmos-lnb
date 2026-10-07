# Biasing Reference Supply

*Most Up-To-Date Schematic: Schematic/LDO/Reference.sch*



## Rise Time Test Bench

*Most Up-To-Date Schematic: Schematic/LDO/LDO_Testing_Rise_Time_MkI.sch*

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

A 3000 run Monte Carlo simulation was performed using the typical transistor corner in order to assess drift in the output due to transistor mismatch.  The results showed a 2 standard deviation drift of around ±10 mV.  This is more than enough for the bias supply.

### 1.7 V Reference

![Monte Carlo](/Images/MC_out_1v7_TT.png)

### 2.5 V Reference

![Monte Carlo](/Images/MC_out_2v5_TT.png)
