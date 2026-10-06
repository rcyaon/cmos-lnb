# Impedance Matching Network
Impedance conversion is performed in order to gain voltage headroom on the low-amplitude input signal, and bring it closer to the ~10kΩ input impedance of the nMOS gain stage gates ([gain stage input impedance]()).  The specified impedance matching network is designed to bring the 50Ω characteristic impedance input to approximately 500Ω to drive the succeeding gain stages.  The topology, seen in the figure above, was selected as L topology centered around 1.7GHz (the GOES HRIT frequency).  This simplicity of this matching network makes it possible to manufacture it on chip.  A 500Ω output impedance was selected in order to limit the size of the inductor in the matching network, making it possible to integrate the entire device onto the chip.  This also decrease the contribution of thermal noise on the layout terminating resistor.  The trade off of this decision is that the available voltage gain is also limited.

![Inductor Simulation Render](Images/Inductor_Render.png)

The inductor, simulated in OpenEMS, is a two layer spiral inductor (shown above) on the M4 and M5 metal layers ( [OpenEMS results](</Schematic/Impedance Matching/Characterization.md>)).

*Please note: this design is not final, more consideration will be needed in order to ensure that performance is as high as possible.  The matching network topology deliberately places this series inductor first in order to allow its inductance to combine with the series inductance of the bond wire leading to the pad ring.  Further packaging evaluation must be performed.*

[Network analysis of the matching performance](</Schematic/Impedance Matching/Characterization.md>) was performed.  Further simulation work, including Monte Carlo / variance analysis including the inductor and capacitor as well as (hopefully) layout-level full wave electromagnetic simulations will be done during the layout phase of the project.

It is projected that this impedance matching network would consume ~20,000 um<sup>2</sup> of die space.  Given the large size of this network and the size constraints on the Chipalooza tape out, it is also possible to remove the matching network from the die and install externally using discrete components.  In addition to saving space, external matching would most likely allow for higher performance and better characterization of the active devices.

## Inductor Simulations
### S Parameters, Reactance, Inductance, Quality Factor

![Inductor Simulation Render](/Images/Inductor_Render.png)
A planar inductor on the GF180MCU chip stack up of comparable value to the device proposed for the project was simulated with the parameters below.

| Parameter                           | Value     | 
| ----------------------------------- | --------- |
| Outer Diameter                      | 100 μm    |
| Metal Trace Width                   | 1 μm      |
| Metal Via Diameter                  | 1 μm      |
| Gap Between Metal Traces            | 1 μm      |
| Metal Thickness                     | 0.55 μm   |
| Lead Length                         | 20 μm     |
| Substrate Thickness                 | 8.38 μm   |
| Number of Turns                     | 7         |
| Number of Layers                    | 2         |

These parameters are based on the below specification available on [Google's website](https://opensource.googleblog.com/2022/08/GlobalFoundries-joins-Googles-open-source-silicon-initiative.html).

![GF180MCU Stack Up](/Images/Stack_Up.png)

Full wave electromagnetics simulations using OpenEMS were run, generating the following results.

![Inductor Graphs](/Images/Inductor_Graphs.png)

This shows that an inductor of an adequate value could be created on chip and used for impedance matching in the LNA.  More detailed simulations of the inductor will take place during the layout period and include further geometry such as that of the pad ring, the MiM capacitor in the matching network and bond wires on the chip, performance of this device is likely to change.


### Packaging Simulations
*Coming in the Layout Phase*

## Circuit

![Impedance Matching Network Schematic](/Images/Matching_Network.png)

*Most Up-To-Date Schematic: Schematic/Impedance Matching/ImpedanceMatchingMkII.sch*

The most up-to-date version of the impedance matching network features a PDK modeled capacitor and a lossy inductor of the correct value to form the correct L matching network.  The high frequency behavior of the capacitor can be seen in the Schematic/Impedance Matching/CapacitorMkI.sch file.  The s-parameter behavior of the inductor from the full wave simulation can be viewed (by way of an exported S2P file) in the Schematic/Impedance Matching/InductorMkI.sch file.  The S2P file was not used in the current impedance matching network schematic for the full schematic because although the value is similar, it does not reflect the actual value that will be used in the final design and because it drastically slows (especially transient) simulation performance.  The simulated Q of the inductor from the full wave model was used for the spice model of the schematic being currently used.

### S Parameter Test Bench

*Most Up-To-Date Test Bench: Schematic/Impedance Matching/ImpedanceMatching_Testing_MkI.sch*

![Impedance Matching S Parameters](/Images/Impedance_Matching_S_Parameters.png)

| Parameter                           | Minimum   | Typical   | Maximum |
| ----------------------------------- | --------- | --------- | ------- |
| Input                               | 900 MHz   | 1.7 GHz   | 2.0 GHz |
| Input Return Loss (S11)             | -1 dB     | -13 dB    | -24 dB  |
| Forward Loss (S21)                  | -1 dB     | -1.5 dB   | -11 dB  |

### Monte Carlo / Variance Analysis
Along with the full wave simulations mentioned above simulations of the affects of process variance on the behavior of the impedance matching network will be run during the layout phase.  The method that will be used for running these simulations has not been fully decided yet, but it will most likely include a mixture of full wave simulations and circuit level post-processing.
