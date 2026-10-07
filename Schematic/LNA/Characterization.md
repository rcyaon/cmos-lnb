# Low Noise Amplifier

![LNA Block Diagram](/Images/LNA_Diagram.png)

*Most Up-To-Date Schematic: Schematic/LNA/LNAMkII.sch*



## S Parameter Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_S_Parameters_MkII.sch*

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

### Typical 
![Compression](/Images/LNA_Compression_TT.png)


### Slow-Slow Corner

![Compression](/Images/LNA_Compression_SS.png)

### Fast-Fast Corner

![Compression](/Images/LNA_Compression_FF.png)

### Slow-Fast Corner

![Compression](/Images/LNA_Compression_SF.png)

### Fast-Slow Corner

![Compression](/Images/LNA_Compression_FS.png)




## Linearity Test Bench

*Most Up-To-Date Test Bench: Schematic/LNA/LNA_Testing_Linearity_MkI.sch*

### Typical 
| Low Power (-30 dBm) | High Power (-20dBm) |
|---------------------|---------------------|
|![Compression](/Images/LNA_Linearity_TT.png)|![Compression](/Images/LNA_Linearity_TT_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -18.8 dBm |
|P<sub>high</sub>| -19.5 dBm |
|IM3<sub>low</sub>| -39.2 dBm |
|IM3<sub>high</sub>| -39.1 dBm |
|OIP3| -9.2 dBm |

#### High Power (-30 dBm)
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
|![Compression](/Images/LNA_Linearity_SS.png)|![Compression](/Images/LNA_Linearity_SS_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -19.2 dBm |
|P<sub>high</sub>| -20.0 dBm |
|IM3<sub>low</sub>| -40.8 dBm |
|IM3<sub>high</sub>| -40.5 dBm |
|OIP3| -9.1 dBm |

#### High Power (-30 dBm)
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
|![Compression](/Images/LNA_Linearity_FF.png)|![Compression](/Images/LNA_Linearity_FF_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -20.4 dBm |
|P<sub>high</sub>| -20.8 dBm |
|IM3<sub>low</sub>| -44.1 dBm |
|IM3<sub>high</sub>| -43.6 dBm |
|OIP3| -9.0 dBm |

#### High Power (-30 dBm)
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
|![Compression](/Images/LNA_Linearity_SF.png)|![Compression](/Images/LNA_Linearity_SF_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -17.5 dBm |
|P<sub>high</sub>| -18.4 dBm |
|IM3<sub>low</sub>| -36.1 dBm |
|IM3<sub>high</sub>| -36.0 dBm |
|OIP3| -8.9 dBm |

#### High Power (-30 dBm)
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
|![Compression](/Images/LNA_Linearity_FS.png)|![Compression](/Images/LNA_Linearity_FS_HP.png)|

#### Low Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -21.7 dBm |
|P<sub>high</sub>| -22.1 dBm |
|IM3<sub>low</sub>| -48.8 dBm |
|IM3<sub>high</sub>| -48.0 dBm |
|OIP3| -8.6 dBm |

#### High Power (-30 dBm)
|Parameter|Value|
|---------|-----|
|P<sub>low</sub>| -16.3 dBm |
|P<sub>high</sub>| -16.9 dBm |
|IM3<sub>low</sub>| -34.6 dBm |
|IM3<sub>high</sub>| -33.9 dBm |
|OIP3| -7.8 dBm |


## DC Power Consumption Test Bench



## Supply Sweep Test Bench



## Temperature Test Bench

