# Low Noise Amplifier

![LNA Block Diagram](/Images/LNA_Diagram.png)

*Most Up-To-Date Schematic: Schematic/LNA/LNAMkII.sch*



## S Parameter Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_S_Parameters_MkII.sch*

This testing was performed using the QUCS-S S paramter simulation utility.  It shows the linear response of the amplifier at all corners.

### Typical

| Parameter | Simulation |
|-----------|------------|
|S11|![S11](/Images/LNA_S11_dB_TT.png)|
|S12|![S12](/Images/LNA_S12_dB_TT.png)|
|S21|![S21](/Images/LNA_S21_dB_TT.png)|
|S22|![S22](/Images/LNA_S22_dB_TT.png)|
|Rollett Stability Factor|![Rollett](/Images/LNA_Rollett_TT.png)|
|Mu Stability Factor|![Mu](/Images/LNA_Mu_TT.png)|
|Noise Figure|![Noise Figure](/Images/LNA_Noise_Figure_TT.png)|


### Slow-Slow Corner

| Parameter | Simulation |
|-----------|------------|
|S11|![S11](/Images/LNA_S11_dB_SS.png)|
|S12|![S12](/Images/LNA_S12_dB_SS.png)|
|S21|![S21](/Images/LNA_S21_dB_SS.png)|
|S22|![S22](/Images/LNA_S22_dB_SS.png)|
|Rollett Stability Factor|![Rollett](/Images/LNA_Rollett_SS.png)|
|Mu Stability Factor|![Mu](/Images/LNA_Mu_SS.png)|
|Noise Figure|![Noise Figure](/Images/LNA_Noise_Figure_SS.png)|


### Fast-Fast Corner


| Parameter | Simulation |
|-----------|------------|
|S11|![S11](/Images/LNA_S11_dB_FF.png)|
|S12|![S12](/Images/LNA_S12_dB_FF.png)|
|S21|![S21](/Images/LNA_S21_dB_FF.png)|
|S22|![S22](/Images/LNA_S22_dB_FF.png)|
|Rollett Stability Factor|![Rollett](/Images/LNA_Rollett_FF.png)|
|Mu Stability Factor|![Mu](/Images/LNA_Mu_FF.png)|
|Noise Figure|![Noise Figure](/Images/LNA_Noise_Figure_FF.png)|


### Slow-Fast Corner

| Parameter | Simulation |
|-----------|------------|
|S11|![S11](/Images/LNA_S11_dB_SF.png)|
|S12|![S12](/Images/LNA_S12_dB_SF.png)|
|S21|![S21](/Images/LNA_S21_dB_SF.png)|
|S22|![S22](/Images/LNA_S22_dB_SF.png)|
|Rollett Stability Factor|![Rollett](/Images/LNA_Rollett_SF.png)|
|Mu Stability Factor|![Mu](/Images/LNA_Mu_SF.png)|
|Noise Figure|![Noise Figure](/Images/LNA_Noise_Figure_SF.png)|


### Fast-Slow Corner


| Parameter | Simulation |
|-----------|------------|
|S11|![S11](/Images/LNA_S11_dB_FS.png)|
|S12|![S12](/Images/LNA_S12_dB_FS.png)|
|S21|![S21](/Images/LNA_S21_dB_FS.png)|
|S22|![S22](/Images/LNA_S22_dB_FS.png)|
|Rollett Stability Factor|![Rollett](/Images/LNA_Rollett_FS.png)|
|Mu Stability Factor|![Mu](/Images/LNA_Mu_FS.png)|
|Noise Figure|![Noise Figure](/Images/LNA_Noise_Figure_FS.png)|




## Compression Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Compression_MkI.sch*

Gain compression testing was performed using a sweep of transient simulations, measuring the LNAs response to a tone at 1.7 GHz.  This gives the most accurate compression results.  Compression is clearly a weak spot for this design, sometimes compressing at output powers as low as -19 dBm.  This is one of the effects of degenerating the cascode drains in the middle gain stages to flatten the frequency response of the amplifier.  The degeneration limits the output power.

### Typical 
![Compression](/Images/LNA_Compression_TT.png)

|Parameter|Value|
|---------|-----|
| OP1dB   | -19.3 dBm |

### Slow-Slow Corner

![Compression](/Images/LNA_Compression_SS.png)

|Parameter|Value|
|---------|-----|
| OP1dB   | -16.4 dBm |

### Fast-Fast Corner

![Compression](/Images/LNA_Compression_FF.png)

|Parameter|Value|
|---------|-----|
| OP1dB   | -17.4 dBm |

### Slow-Fast Corner

![Compression](/Images/LNA_Compression_SF.png)

|Parameter|Value|
|---------|-----|
| OP1dB   | -17.4 dBm |

### Fast-Slow Corner

![Compression](/Images/LNA_Compression_FS.png)

|Parameter|Value|
|---------|-----|
| OP1dB   | -18.9 dBm |


## Linearity Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Linearity_MkI.sch*

Linearity of the amplifier was assessed using a standard two tone test characterizing third order intermodulation products at ~1.7 GHz.  The test was performed at two different power input levels, -20 dBm and -30 dBm.  Interestingly, higher input power seemed to improve linearity slightly.  Both of these power levels are significantly far away from the compression point of the amplifier, so there were not concerns of beginning to compress any stages of the amplifier.

The "CalculateOIP3.py" file was used to calculate the amplifier OIP3 from the extracted linearity. 

### Typical 
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Linearity](/Images/LNA_Linearity_TT.png)|![Linearity](/Images/LNA_Linearity_TT_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -18.8 dBm |
|P<sub>high</sub>| -19.5 dBm |
|IM3<sub>low</sub>| -39.2 dBm |
|IM3<sub>high</sub>| -39.1 dBm |
|OIP3| -9.2 dBm |

#### High Power (-20 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -14.9 dBm |
|P<sub>high</sub>| -15.5 dBm |
|IM3<sub>low</sub>| -30.0 dBm |
|IM3<sub>high</sub>| -30.6 dBm |
|OIP3| -7.7 dBm |

### Slow-Slow Corner
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Linearity](/Images/LNA_Linearity_SS.png)|![Linearity](/Images/LNA_Linearity_SS_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -19.2 dBm |
|P<sub>high</sub>| -20.0 dBm |
|IM3<sub>low</sub>| -40.8 dBm |
|IM3<sub>high</sub>| -40.5 dBm |
|OIP3| -9.1 dBm |

#### High Power (-20 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -15.1 dBm |
|P<sub>high</sub>| -15.9 dBm |
|IM3<sub>low</sub>| -30.3 dBm |
|IM3<sub>high</sub>| -30.5 dBm |
|OIP3| -8.0 dBm |

### Fast-Fast Corner
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Linearity](/Images/LNA_Linearity_FF.png)|![Linearity](/Images/LNA_Linearity_FF_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -20.4 dBm |
|P<sub>high</sub>| -20.8 dBm |
|IM3<sub>low</sub>| -44.1 dBm |
|IM3<sub>high</sub>| -43.6 dBm |
|OIP3| -9.0 dBm |

#### High Power (-20 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -15.7 dBm |
|P<sub>high</sub>| -16.3 dBm |
|IM3<sub>low</sub>| -32.2 dBm |
|IM3<sub>high</sub>| -32.2 dBm |
|OIP3| -7.9 dBm |

### Slow-Fast Corner
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Linearity](/Images/LNA_Linearity_SF.png)|![Linearity](/Images/LNA_Linearity_SF_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -17.5 dBm |
|P<sub>high</sub>| -18.4 dBm |
|IM3<sub>low</sub>| -36.1 dBm |
|IM3<sub>high</sub>| -36.0 dBm |
|OIP3| -8.9 dBm |

#### High Power (-20 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -14.0 dBm |
|P<sub>high</sub>| -14.5 dBm |
|IM3<sub>low</sub>| -28.9 dBm |
|IM3<sub>high</sub>| -29.1 dBm |
|OIP3| -6.8 dBm |

### Fast-Slow Corner
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Linearity](/Images/LNA_Linearity_FS.png)|![Linearity](/Images/LNA_Linearity_FS_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -21.7 dBm |
|P<sub>high</sub>| -22.1 dBm |
|IM3<sub>low</sub>| -48.8 dBm |
|IM3<sub>high</sub>| -48.0 dBm |
|OIP3| -8.6 dBm |

#### High Power (-20 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -16.3 dBm |
|P<sub>high</sub>| -16.9 dBm |
|IM3<sub>low</sub>| -34.6 dBm |
|IM3<sub>high</sub>| -33.9 dBm |
|OIP3| -7.8 dBm |


## DC Power Consumption Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Power_MkI.sch*

The average and peak DC power consumption of the LNA was characterized when saturated with a 1.7GHz tone.

### Typical 
![Power Consumption](/Images/LNA_Power_TT.png)

|Parameter|Value|
|---------|-----|
| Average DC Power Consumption   | 31 mW |
| Peak DC Power Consumption   | 44 mW |


### Slow-Slow Corner

![Power Consumption](/Images/LNA_Power_SS.png)

|Parameter|Value|
|---------|-----|
| Average DC Power Consumption   | 25 mW |
| Peak DC Power Consumption   | 40 mW |

### Fast-Fast Corner

![Power Consumption](/Images/LNA_Power_FF.png)

|Parameter|Value|
|---------|-----|
| Average DC Power Consumption   | 37 mW |
| Peak DC Power Consumption   | 47 mW |

### Slow-Fast Corner

![Power Consumption](/Images/LNA_Power_SF.png)

|Parameter|Value|
|---------|-----|
| Average DC Power Consumption   | 27 mW |
| Peak DC Power Consumption   | 44 mW |

### Fast-Slow Corner

![Power Consumption](/Images/LNA_Power_FS.png)

|Parameter|Value|
|---------|-----|
| Average DC Power Consumption   | 34 mW |
| Peak DC Power Consumption   | 42 mW |


## Supply Sweep Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Power_MkI.sch*
The LNA voltage supply was sweeped between 2 and 4 volts.  As expected, the gain was positively corellated with operating voltage.  The thin oxide on the transistors will break down above 3.3V, but it is good to see the stability margins on the LNA at slightly higher voltage.  The amplifier remained stable across the entire voltage sweep at all corners, which was good.


### Typical 
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Supply_Gain_TT.png)|![Supply](/Images/LNA_Supply_Stab_TT.png)|

### Slow-Slow Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Supply_Gain_SS.png)|![Supply](/Images/LNA_Supply_Stab_SS.png)|

### Fast-Fast Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Supply_Gain_FF.png)|![Supply](/Images/LNA_Supply_Stab_FF.png)|

### Slow-Fast Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Supply_Gain_SF.png)|![Supply](/Images/LNA_Supply_Stab_SF.png)|

### Fast-Slow Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Supply_Gain_FS.png)|![Supply](/Images/LNA_Supply_Stab_FS.png)|



## Temperature Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Temp_MkI.sch*

Temperature was sweeped between between -25C and 125C, the automotive component temperature range.  The gain of the LNA fell off somewhat significantly after 80C, although it never stopped providing gain.  This was to be expected because this LNA does not have any temperature compensation (nor does it really have a way to implement that architecturally).  More importantly, the amplifier remained stable across the entire temperature sweep at all corners.

### Typical 
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Temp_Gain_TT.png)|![Supply](/Images/LNA_Temp_Stab_TT.png)|

### Slow-Slow Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Temp_Gain_SS.png)|![Supply](/Images/LNA_Temp_Stab_SS.png)|

### Fast-Fast Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Temp_Gain_FF.png)|![Supply](/Images/LNA_Temp_Stab_FF.png)|

### Slow-Fast Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Temp_Gain_SF.png)|![Supply](/Images/LNA_Temp_Stab_SF.png)|

### Fast-Slow Corner
| Maximum Gain (dB) | Minimum Rollett Stability Factor |
|---------------------|---------------------|
|![Supply](/Images/LNA_Temp_Gain_FS.png)|![Supply](/Images/LNA_Temp_Stab_FS.png)|
