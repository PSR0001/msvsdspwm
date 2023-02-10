# VSD-Mixed-Signal-PD-Research
This repository contains the documentation of the work done during a 10 Weeks VSD-Mixed-Signal-PD-Research carried out by VSD.


## Index
* [Week 0 Getting the tools]()

## Week 0

### Installing Requires Tools

For the Entire work Ubuntu 20.04 is used . Installing Ubuntu20.04 on Windows install Oracle virtual box with Ubuntu 20.04 - RAM at least 4GB, hard-disk atleast 100GB.

To adequately utilize the open source skywater130 pdk and understand the design flow, we first require to install all the tools, which are
- open_pdk
- magic
- ngspice
- xschem
- netgen

**Refer to [chapter 0 of PV GitHub repo.](https://github.com/yathAg/Physical_Verification_SKY130A#Chapter-0---Getting-the-tools)**

Install ALIGN tool

ALIGN is an open source automatic layout generator for analog circuits.

**Refer to [this repo](https://github.com/sanampudig/OpenFASoC/tree/main/AUXCELL) for sample examples**

### Creating inverter schematic using xschem
An initial schematic is made by placing components from the open_pdk library.

The required changes to the properties of the device can be made here and will automatically reflect in the layout

![xschem_inv](Resources/week0/xschem_inverter.png)<br /><br />
Convert the schematic to a symbol

![xschem_sym](Resources/week0/xschem_sym.png)<br /><br />
Using the symbol, we can create an independent test bench to simulate the circuit

![xshem_inverter_tb](Resources/week0/xschem_inverter_tb.png)<br /><br />

### Creating and simulating testbench Schematic
The circuit can be simulated in ngspice. *make sure to disable .subckt in the simulation tab for the netlist generated for the sim*
![xschem_sim](Resources/week0/xschem_simulation.png)

<!-- ### Creating inverter layout in Magic and exporting its netlist
The original schematic can be used to export a netlist, which can be imported into magic to create the layout. <br /><br />

Set the appropriate device properties and route the layout.
![mag_p1](Resources/Lab1/mag_p1.png)<br /><br /><br />
![mag_p1](Resources/Lab1/mag_p1.png)<br /><br /><br />
![mag_net](Resources/Lab1/mag_net.png)<br /><br /><br />
### Performing LVS checks on testbench and layout netlists
 -->












### Inverter post-layout characterization using ALIGN
A simple SPICE Netlist for inverter is written to generate .lef and .gds files
```
.subckt inverter vinn voutn vdd 0
m1 voutn vinn vdd vdd pmos_rvt w=840e-9 l=150e-9 nf=2
m2 voutn vinn 0 0 nmos_rvt w=840e-9 l=150e-9 nf=2
.ends inverter
** End of subcircuit definition.

```
<!-- Create a file inverter.sp inside ALIGN  -->

ALIGN command 
```
schematic2layout.py ../ALIGN-pdk-sky130/examples/inverter -p ../pdks/SKY130_PDK/
```


- ### .gds
![inverter_gds](Resources/week0/inverter_gds.png)
<br><br>

- ### .lef
![inverter_lef](Resources/week0/inverter_lef.png)




















