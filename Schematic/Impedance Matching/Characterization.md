# Impedance Matching Network
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

The most up-to-date version of the impedance matching network features a PDK modeled capacitor and a lossy inductor of the correct value to form the correct L matching network.  The high frequency behavior of the capacitor can be seen in the Schematic/Impedance Matching/Capacitor.sch file.  The s-parameter behavior of the inductor from the full wave simulation can be viewed (by way of an exported S2P file) in the Schematic/Impedance Matching/Capacitor.sch file.  The S2P file was not used in the current impedance matching network schematic for the full schematic because although the value is similar, it does not reflect the actual value that will be used in the final design and because it drastically slows (especially transient) simulation performance.  The simulated Q of the inductor from the full wave model was used for the spice model of the schematic being currently used.

### S Parameters
![Impedance Matching S Parameters](/Images/Impedance_Matching_S_Parameters.png)

| Parameter                           | Minimum   | Typical   | Maximum |
| ----------------------------------- | --------- | --------- | ------- |
| Input                               | 900 MHz   | 1.7 GHz   | 2.0 GHz |
| Input Return Loss (S11)             | -1 dB     | -13 dB    | -24 dB  |
| Forward Loss (S21)                  | -1 dB     | -1.5 dB   | -11 dB  |

### Monte Carlo / Variance Analysis
Along with the full wave simulations mentioned above simulations of the affects of process variance on the behavior of the impedance matching network will be run during the layout phase.  The method that will be used for running these simulations has not been fully decided yet, but it will most likely include a mixture of full wave simulations and circuit level post-processing.
