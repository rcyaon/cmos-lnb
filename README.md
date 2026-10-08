# Open Source Inductorless 180nm BiCMOS L-Band LNA/LNB

This project is released under the MIT License. Copyright 2026 Charlie Sands & Lena Conde Araujo.

## Overview

This project intends to develop an integrated L-band block down converter including a low-noise amplifier, down converting mixer, and integrated local oscillator on the GF180MCU 180nm CMOS process node.  As a stepping stone towards this goal, we are targeting a tape-out of a noise amplifier through Wafer.Space on GF180MCU thanks to the Open Circuit Design Chipalooza Challenge.  This low-noise amplifier will validate many of the components which will be used on the down converter and allow for more detailed process characterization at microwave frequencies.

All components of the design target broadband operation between approximately 300 MHz and 2 GHz, will allow for down conversion of interesting signals in the UHF, L, and S band spectra. An integrated oscillator will provide a switchable L-band local oscillator signal to the mixer, allowing for standalone operation of the circuit as an integrated low-noise block (LNB) for applications such as reception of GOES weather satellite HRIT transmissions, GPS, and amateur radio (23 cm band).

Our goal is to develop this project using only open source tools, as such the tool chain used is:

- QUCS-S for schematic design and validation
- NGSpice for circuit simulation
- OpenEMS for full wave electromagnetic simulations
- KLayout for layout

A subset of the target performance metrics submitted in the proposal for our project is included in the table below.

| Parameter                           | Minimum   | Typical   | Maximum |
| ----------------------------------- | --------- | --------- | ------- |
| Frequency Range                     | 900 MHz   | 1.7 GHz   | 2 GHz   |
| Local Oscillator Frequency          | --        | 1.2 GHz   | --      | 
| Power Gain                          | 10 dB     | 18 dB     | 27 dB   |
| Noise Figure                        | 2.2 dB    | 3 dB      | 7 dB    |
| Input Return Loss w/ Package (S11)  | -15 dB    | -20 dB    | -25 dB  |
| Output Return Loss w/ Package (S22) | -10 dB    | -15 dB    | -20 dB  |
| IIP3                                | -12.5 dBm | -11.5 dBm | -10 dBm |
| DC Power Consumption                | 15 mW     | 35 mW     | 130 mW  |
| Voltage Supply                      | —         | 5 V       | —       |
| Temperature Stability               | -25 °C    | —         | 125 °C  |



## Low Noise Block Down Converter

### Architecture

![System Block Diagram](Images/LNB_Block_Diagram_2.png)

An overall block diagram of the proposed down converter is shown above.  The design of the system is separated into four major components: the front-end, the frequency converter, the local oscillator and supporting bias circuitry (not shown in the block diagram).  The front-end perform an impedance conversion from the 50Ω input impedance to a high characteristic impedance signal which then drives a series of three nMOS gain stages that follow. The frequency converter accepts a single ended, high impedance input signal from the front-end and a differential local oscillator.  It buffers out a 50Ω output signal that is approximately the linear multiplication of the two input signals.  This creates a lower frequency image of the RF input signal.  The integrated local oscillator provides a stable tone to the frequency converter.  It also allows for an external tone to be input into the device if higher stability is needed in a certain application.  The supporting bias circuitry biases the all of the components so that they operate correctly.

The following top-level schematic was created for the LNB:
![LNB](/Images/LNB.png)

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M2 | nfet | 5.00u | 0.28u | Thin (3v3) |
| C10 | cap_mim_2f0fF | 22u | 22u | - |
| M3 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M4 | nfet | 10u | 4u | Thick (6v0) |
| M5 | nfet | 10u | 4u | Thick (6v0) |
| M6 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M7 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M8 | nfet | 10u | 4u | Thick (6v0) |
| C11 | cap_mim_2f0fF | 22u | 22u | - |
| M9 | nfet | 2.50u | 0.28u | Thin (3v3) |

### Front-end

![Front-end Block Diagram](Images/LNB_Front_End_Block_Diagram_2.png)

The front-end provides impedance conversion from the 50Ω circuit input impedance to the high impedance needed to drive the low-noise amplifier gain stages as well as a series of three gain stages which increase the signal voltage to a level necessary to drive the frequency converter.  This block is the main source of gain, as well as noise in the system.

#### Input Buffer

![Impedance Matching Network Schematic](Images/Input_Buffer.png)

*Most Up-To-Date Schematic: Schematic/Input Buffer/InputBufferMkI.sch*

The input buffer is a common gate amplifier that provides a high quality impedance match between the source, and adds voltage gain to the system and the input of the LNA and performs an impedance conversion from the 50Ω input impedance of the circuit to the high impedance CMOS stages, where realizing voltage gain is easy.  The source loading resistor, in series with the input reactance of the common gate amplifier (proportional to 1/g<sub>m</sub>) is matched such that the input presents a nearly flat 50Ω impedance across the frequency band.  In reality, the match is fairly good.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M1 | pfet | 20.0u | 0.28u | Thin (3v3) |
| M2 | nfet | 20.00u | 0.28u | Thin (3v3) |
| R2 | ppolyf_s | 1u | 9u | - |


#### CMOS Gain Stage

![Gain Stage Schematic](Images/Gain_Stage.png)

*Most Up-To-Date Schematic: Schematic/Gain Stage/GainStageMkII.sch*

The CMOS gain stage increases the voltage level of the input signal.  A net power loss is incurred through the CMOS stages of the low noise block.  The power is "recovered" as the signal is buffered out by the output stage in the frequency converter.  The gain stage is a cascoded class A nMOS amplifier with active loading and an integrated common mode output controller.  Three identical gain stages are ganged together to provide the necessary voltage gain in the front-end.  There is a degeneration resistor placed between the active load and the cascode stages in order to flatten gain and increase stability.  The amount of resistance can be adjusted to reach a desired performance.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M15 | pfet | 20.0u | 0.28u | Thin (3v3) |
| M13 | nfet | 20.0u | 0.28u | Thin (3v3) |
| M16 | nfet | 20.0u | 0.28u | Thin (3v3) |
| R1 | ppolyf_s | 1u | 10u | - |

#### Error Amplifier

![pMOS Error Amplifier Schematic](Images/PMOS_Error_Amp.png)

*Most Up-To-Date Schematic: Schematic/Error Amplifier/ErrorAmplifierPMOSMkII.sch*

The common mode output control for both the gain stages and the input buffer is achieved with a pMOS operational transconductance amplifier acting as an error amplifier on the output DC level.  Very small transistors are intentionally used on this component in order to limit the frequency response and load capacitance of the error amplifier.  Small transistors suffer from poor matching between identical devices fortunately [Monte Carlo simulations](<Schematic/Gain Stage/Characterization.md>) showed DC output level errors from mismatch in the control amplifier did not have a significant effect on system performance.  Increasing the size of the devices resulted in poor performance or oscillations in the output due to capacitive loading and coupling through the amplifier.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M8 | pfet | 0.3u | 0.6u | Thin (3v3) |
| M11 | pfet | 0.3u | 0.6u | Thin (3v3) |
| M1 | nfet | 0.3u | 0.6u | Thin (3v3) |
| M13 | nfet | 0.3u | 0.6u | Thin (3v3) |
| M12 | pfet | 0.3u | 0.6u | Thin (3v3) |

### Frequency Converter

![Frequency Converter Block Diagram](Images/LNB_Frequency_Converter_Block_Diagram_2.png)

#### Active Balun

![Active Balun](Images/Active_Balun.png)

*Most Up-To-Date Schematic: Schematic/Balun/BalunMkIII.sch*

The active balun converts the amplified single ended signal from the front-end into a differential sign suitable for the differential Gilbert cell mixer.  It is made up of a resistively loaded differential pair with automatic bias input level control.  Resistive loading can realize less voltage gain and adds more noise than an actively loaded topology, but it was difficult to get the output level control using an active 

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| R1 | ppolyf_u_1k | 2u | 40u | - |
| R2 | ppolyf_u_1k | 2u | 40u | - |
| M4 | nfet | 5.00u | 0.28u | Thin (3v3) |
| M3 | nfet | 5.00u | 0.28u | Thin (3v3) |
| M5 | nfet | 5.00u | 0.28u | Thin (3v3) |

#### Gilbert Cell Mixer

![Mixer](Images/Mixer.png)

*Most Up-To-Date Schematic: Schematic/Mixer/MixerMkII.sch*

The mixer topology was selected to be a Gilbert cell due to the ease of implementation on chip and theoretically high performance.  In this case, the performance of the Gilbert cell is largely limited by a combination of less-than-ideal biasing and poor LO quality.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M15 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M31 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M32 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M33 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M34 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M35 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M36 | nfet | 5.00u | 0.6u | Thin (3v3) |
| M29 | pfet | 10.0u | 0.6u | Thin (3v3) |
| M30 | pfet | 10.0u | 0.6u | Thin (3v3) |

#### Bipolar Output Buffer

![Mixer](Images/Output_Buffer.png)

*Most Up-To-Date Schematic: Schematic/Output Buffer/OutputBufferMkVI.sch*

The lower output impedance of the NPN bipolar transistors included in the PDK makes it a good candidate to buffer out the amplified signal.  The buffer is a simple resistively loaded emitter follower stage, biased by the DC output of the CMOS stages.  Although the output is not efficient as it probably could be with more advanced topologies, this design is small, simple and does not risk adding feedback to the system that could cause oscillations.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| R3 | ppolyf_u_1k | 2u | 2u | - |
| Q1 | NPN_10P00X10P00 | - | - | - |

### Local Oscillator

#### Ring Oscillator

![Ring Oscillator](/Images/Oscillator.png)

*Most Up-To-Date Schematic: Schematic/Oscillator/OscillatorMkII.sch*

The local oscillator is a three-stage current-starved inverter ring with a two-inverter output buffer, built from thin oxide 3.3 V devices.  A control current into the VTune line controls the sets the frequency, so either one of the harness iDACs, or an analog pin can tune the LO after fabrication.  Pulling the control current stops the ring and parks the output at the supply, which is the disable for now.  There's is an additional port to couple the output of the LO out of the chip for analysis.  When the oscillator is off this doubles as an input for a tone of the user's choice, if greater stability is required.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M3 | pfet | 10.00u | 0.28u | Thin (3v3) |
| M4 | nfet | 2.50u | 0.28u | Thin (3v3) |

#### Current Limited Ring Stage

![Current Limited Stage](/Images/Ring_Inverter.png)

*Most Up-To-Date Schematic: Schematic/Oscillator/RingInverterMkII.sch*

This current limited ring stage is used to form the core oscillator in the design.  The current control allows the frequency to be adjusted from a few hundred MHz (low current) to nearly 1.5 GHz (high current).  The more current that is let pass though the inverter by the leading and trailing degeneration transistor the more current is able to drive the output capacitance of the device and the faster the oscillator moves. 

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M29 | nfet | 2.50u | 0.28u | Thin (3v3) |
| M28 | pfet | 5.00u | 0.28u | Thin (3v3) |
| M30 | pfet | 5.00u | 0.28u | Thin (3v3) |
| M31 | nfet | 2.50u | 0.28u | Thin (3v3) |
| C1 | cap_mim_2f0fF | 2u | 5u | - |


#### Capacitively Loaded Ring Stage

![C Loaded Stage](/Images/Ring_Inverter_No_I_Lim.png)

*Most Up-To-Date Schematic: Schematic/Oscillator/RingInverterMkI.sch*


This is a capacitively loaded buffer stage for the ring oscillator.  It ensures that the drive level is as high as it needs to be to control the Gilbert cell.  In the design two of these are ganged together in order to create a differential output to drive the LO input of the mixer.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M29 | nfet | 2.50u | 0.28u | Thin (3v3) |
| M28 | pfet | 5.00u | 0.28u | Thin (3v3) |
| C1 | cap_mim_2f0fF | 7u | 5u | - |

### Biasing Reference (Self Referenced)

![Beta Multiplier](Images/QUCS_beta_mult.png)

![Reference String](Images/QUCS_vref.png)

*Most Up-To-Date Schematics: Schematic/References/beta_mult.sch, Schematic/References/vref.sch*

A second bias generator that doesn't need the harness band gap: a beta-multiplier current reference feeds a tapped poly resistor string, and a five-transistor OTA buffers each tap.  It gives 0.7 V, 2.0 V and 3.0 V from a 5 V supply using 6 V devices.

| Parameter                    | Minimum | Typical | Maximum |
| ---------------------------- | ------- | ------- | ------- |
| 2.0 V Tap                    | 1.91 V  | 2.00 V  | 2.11 V  |
| Line Regulation              | 7.2 %/V | 7.8 %/V | 8.5 %/V |
| Change Over -25 °C to 125 °C | 6.5 %   | 6.9 %   | 7.5 %   |
| PSRR at 1 kHz (2.0 V Tap)    | 15.6 dB | 16.7 dB | 17.5 dB |
| Mismatch, 1σ (2.0 V Tap)     | --      | 51 mV   | --      |
| Supply Current               | 97 µA   | 119 µA  | 156 µA  |

Minimum and maximum are across the process corners at 5 V and 27 °C.  It starts up reliably and is stable into capacitive loads, but since it's self-biased the outputs wander with supply, temperature and mismatch much more than the LDOs above.  So the LNA doesn't use it; the LDO reference is still the bias source.  The full results are [here](Schematic/References/Characterization.md).



### Biasing (Band Gap Referenced)

The bias voltage for the various circuit elements could also be provided by two similar, extremely bare-bones, LDOs making use of the harness' built in band gap reference.

#### Reference

![Reference](Images/Reference.png)

*Most Up-To-Date Schematic: Schematic/LDO/ReferenceMkI.sch*

Two LDO circuit with output voltages set by a high-res poly resistor divider are used to create a 1.7V and 2.5V bias reference on the chip.  The LDOs rely on the band gap voltage reference on the harness in order to generate the correct voltage.  Within the LNB there are some places where the band gap reference is directly used for biasing.  If this is unacceptable due to harnessing constraints, an additional stage buffer stage can be added. In the LNB stages the 1.7 V rail generally serves as the reference for the common mode output controllers and the 2.5 V rail serves as a bias point for the cascoded nMOS transistors in the gain stages.  In the Gilbert cell the 1.2 V from the band gap reference is also used.

Testing and characterization of the voltage reference is available [here](Schematic/LDO/Characterization.md).

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M2 | nfet | 10u | 4u | Thick (6v0) |
| C2 | cap_mim_2f0fF | 11u | 22u | - |
| C3 | cap_mim_2f0fF | 11u | 22u | - |
| R5 | ppolyf_u_1k | 1u | 10u | - |
| R7 | ppolyf_u_1k | 1u | 24u | - |
| R8 | ppolyf_u_1k | 1u | 15u | - |
| R6 | ppolyf_u_1k | 1u | 14u | - |

#### LDO

![LDO](Images/LDO.png)

*Most Up-To-Date Schematic: Schematic/LDO/LDOMkI.sch*

A simple LDO for biasing was created by adding an output buffer transistor to a five transistor differential amplifier.  The arbitrary output voltage is divided and compared to a reference level.  The reference level in this design is provided by the harness band gap reference.  This basic LDO topology has limited accuracy, but the bias points of these transistors does not need to be extremely accurate.  

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M1 | pfet | 20u | 10u | Thick (6v0) |

#### nMOS Error Amplifier

![nMOS Error Amplifier Schematic](Images/NMOS_Error_Amp.png)

The output control for the reference LDOs is provided by the above nMOS error amplifier.  The transistors of the nMOS error amplifier are much larger than those of the pMOS error amplifier because matching is of greater concern than gain or frequency response.

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| M1 | pfet | 10u | 4u | Thick (6v0) |
| M2 | pfet | 10u | 4u | Thick (6v0) |
| M3 | nfet | 10u | 4u | Thick (6v0) |
| M4 | nfet | 10u | 4u | Thick (6v0) |
| M5 | nfet | 10u | 4u | Thick (6v0) |

### Overall Performance

Prior to the preliminary design review, this design was characterized at the typical corners, as well as the slow and fast corners.  Performance is mostly hindered by lots of LO feed through due to poor local oscillator quality.  The addition of the mixer and oscillator raise many questions about the stability of the design, especially with unaccounted for electromagnetic coupling in effect.


| Description              | Minimum | Typical | Maximum | Simulation Results                                                                                |
| ------------------------ | ------- | ------- | ------- | ------------------------------------------------------------------------------------------------- |
| RF Frequency Range       | 300 MHz | 1.7 GHz | 2 GHz   | [Gain Test Bench](Schematic/LNB/Characterization.md#gain-test-bench) |
| LO Frequency Range       | 300 MHz | 1.7 GHz | 2 GHz   | [Frequency Test Bench](Schematic/Oscillator/Characterization.md#frequency-test-bench) |
| Power Gain               | -1 dB   | 5 dB    | 9 dB    | [Gain Test Bench](Schematic/LNB/Characterization.md#gain-test-bench) |
| Noise Figure             | --      | --      | --      | This is hard to calculate, a custom python script needs to be written |
| Input Return Loss (S11)  | -13 dB  | -15 dB  | -17 dB  | [S Parameter Test Bench](Schematic/LNB/Characterization.md#s-parameter-test-bench) |
| Output Return Loss (S22) | -2 dB   | -3 dB   | -4 dB   | [S Parameter Test Bench](Schematic/LNB/Characterization.md#s-parameter-test-bench) |
| Output P1dB              | --      | --      | --      | [Compression Test Bench](Schematic/LNB/Characterization.md#compression-test-bench) |
| Output IP3               | --      | --      | --      | [Linearity Test Bench](Schematic/LNB/Characterization.md#linearity-test-bench) |
| Gain Flatness            | 5 dB    | 4 dB    | 3 dB    | [Gain Test Bench](Schematic/LNB/Characterization.md#gain-test-bench) |
| DC Power Consumption     | --      | --      | --      | [Power Consumption Test Bench](Schematic/LNB/Characterization.md#power-consumption-test-bench) |
| Voltage Supply           | --      | 3.3 V   | --      | [Supply Test Bench](Schematic/LNB/Characterization.md#supply-test-bench) |
| Temperature Stability    | -25 C   | --      | 125 C   | [Temperature Test Bench](Schematic/LNB/Characterization.md#temperature-test-bench) |

### Sizing

The devices size was estimated according to the following formulas:

- FETs: A = W * (L + 0.36 um) * 2.5
- Resistors (ppolyf): A = W * (L + 4 um) * 1.2
- Capacitors: A = W * L * 1.1


| Sub Circuit | Estimated Layout Area |
| ---------- | --------------------- |
| pMOS Error Amplifier | 3.6 um<sup>2</sup> |
| Mixer | 132.0 um<sup>2</sup> |
| Active Balun | 235.2 um<sup>2</sup> |
| Gain Stage | 112.8 um<sup>2</sup> |
| Input Buffer | 79.6 um<sup>2</sup> |
| nMOS Error Amplifier | 545.0 um<sup>2</sup> |
| LDO | 518.0 um<sup>2</sup> |
| Reference | 736.2 um<sup>2</sup> |
| Output Buffer | 914.4 um<sup>2</sup> |
| Current Limited Ring Stage | 35.0 um<sup>2</sup> |
| Capacitively Loaded Ring Stage | 50.5 um<sup>2</sup> |
| Oscillator |  20.0 um<sup>2</sup> |
| LNB | 1,405.7 um<sup>2</sup> |

Summed Area: 6,215.1 um<sup>2</sup>

Area Estimate: ~8000 um<sup>2</sup>

## Low Noise Amplifier

![LNA Block Diagram](/Images/LNA_Block_Diagram_2.png)

*Most Up-To-Date Schematic: Schematic/LNA/LNAMkII.sch*

### Architecture

After initial design work and preliminary design review it was decided that the full down converter may be too ambitious for an initial tape out.  We have many questions regarding process performance at high frequencies and, more importantly, concerns of electromagnetic coupling within the the chi, which would be very difficult to accurately simulate using open source tools.  If these are not accounted for there is a real risk that the entire circuit will begin to oscillate.  In light of this, we are considering a pivot towards first taping out a dedicated low-noise amplifier covering a similar frequency band.  This design reuses the front-end module from the down converter, adding an additional gain stage in order to increase overall gain, and the output buffer.  The frequency converter is dropped and the dedicated pins normally allocated to the local oscillator will be re-used for devices useful for characterizing the die packaging.  This will allow for detailed characterization of the high frequency performance of the GF180MCU process node and put us on target to tape out the full down converter at a later time.

![LNA High Frequency Diagram](/Images/LNA_Diagram.png)

The diagram above shows the working principle of the LNA with biasing removed.

The following top-level schematic was created for the LNB:
![LNA](/Images/LNA.png)

|Name|Type|Width|Length|Oxide Thickness|
|-------|-----|-------|--------|-------------------|
| C4 | cap_mim_2f0fF | 22u | 22u | - |
| C5 | cap_mim_2f0fF | 22u | 22u | - |
| M10 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M11 | nfet | 10u | 4u | Thick (6v0) |
| M12 | nfet | 10u | 4u | Thick (6v0) |
| M13 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M14 | pfet | 0.3u | 0.5u | Thin (3v3) |
| M15 | nfet | 10u | 4u | Thick (6v0) |

Testing and characterization of the voltage reference is available [here](Schematic/LNA/Characterization.md).

### Overall Performance

A summary of the proposed LNA's performance is below.  More details regarding the simulations used to determine these performance metrics are linked in the table.  The variability within this table spans all corner simulations the PDK supports, that is, this much variability would not be likely on a single die, although one extreme or the other could theoretically be reached on a single die.  These performance metrics were evaluated with the LDO (band gap reference) bias circuits.  Results would likely be similar with the self referenced design, perhaps slightly degraded.

| Description              | Minimum | Typical | Maximum | Simulation Results                                                                                |
| ------------------------ | ------- | ------- | ------- | ------------------------------------------------------------------------------------------------- |
| Frequency Range          | 300 MHz | 1.7 GHz | 2 GHz   | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                |
| Power Gain               | 9 dB    | 13 dB   | 21 dB   | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                |
| Noise Figure             | --      | --      | --      | There is either a bug in QUCS-S or something is wrong in the PDK FET/BJT parameters. Working on root causing the issue...|
| Input Return Loss (S11)  | -13 dB  | -15 dB  | -17 dB  | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                |
| Output Return Loss (S22) | -5 dB   | -7 dB   | -9 dB   | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                |
| Rollett Stability Factor | > 1400  | --      | --      | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                |
| Output P1dB              | -19 dB  | -17 dB  | -16 dB  | [Compression Test Bench](Schematic/LNA/Characterization.md#compression-test-bench)                |
| Output IP3               | -9 dBm  | -7 dBm  | -7 dBm  | [Linearity Test Bench](Schematic/LNA/Characterization.md#s-parameter-test-bench)                  |
| Gain Flatness            | 6 dB    | 8 dB    | 11 dB   | [S-Parameter Test Bench](Schematic/LNA/Characterization.md#linearity-test-bench)                  |
| DC Power Consumption     | --      | 50 mW   | --      | [Power Consumption Test Bench](Schematic/LNA/Characterization.md#dc-power-consumption-test-bench) |
| Voltage Supply           | 3.0 V   | 3.3 V   | 3.3 V   | [Supply Sweep Test Bench](Schematic/LNA/Characterization.md#supply-sweep-test-bench)              |
| Temperature Stability    | -25 C   | --      | 125 C   | [Temperature Test Bench](Schematic/LNA/Characterization.md#temperature-test-bench)                |

The weakest point of the amplifier performance is the output compression; it compresses at a very low output power level.  This is alright for satellite communication and weak amateur radio communications, where the signals are already very weak to begin with and the LNA is used after an antenna to amplify a signal before it reaches the high gain, but higher noise figure front-end amplifiers of a software-defined radio. That being said, it would limit use of the component in other applications (such as a diode-ring mixer pre-driver).  The limit is likely a result of cascode drain degeneration on the middle two common source gain stages.  The trade off is kept because this degeneration flattens the frequency response of the amplifier and will make it more stable.  Amplifier stability is of chief concern, it is better to have a low amplifier that works than an oscillator.

### Sizing

The devices size was estimated according to the following formulas:

- FETs: A = W * (L + 0.36 um) * 2.5
- Resistors (ppolyf): A = W * (L + 4 um) * 1.2
- Capacitors: A = W * L * 1.1


| Subcircuit | Estimated Layout Area |
| ---------- | --------------------- |
| pMOS Error Amplifier | 3.6 um<sup>2</sup> |
| Gain Stage | 112.8 um<sup>2</sup> |
| Input Buffer | 79.6 um<sup>2</sup> |
| nMOS Error Amplifier | 545.0 um<sup>2</sup> |
| LDO | 518.0 um<sup>2</sup> |
| Reference | 736.2 um<sup>2</sup> |
| Output Buffer | 914.4 um<sup>2</sup> |
| LNA | 1,393.7 um<sup>2</sup> |

Summed Area: 5,486.3 um<sup>2</sup>

Area Estimate: ~7000 um<sup>2</sup>


## Acknowledgements

Preliminary design review performed by Prof. Brad Minch, Rohan Shah and Daniel Theunissen at Olin College of Engineering.   Thank you for all of your help!

Many thanks to Tim Edwards for design review and for running the Chipalooza tape-out program!
