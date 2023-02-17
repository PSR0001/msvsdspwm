# VSD-Mixed-Signal-PD-Research
This repository contains the documentation of the work done during a 10 Weeks VSD-Mixed-Signal-PD-Research carried out by VSD.


## Index
* [Week 0](#week-0)
* [Week 1](#week-1)

## Week 0

### Index
- [Installing Requires Tools](#installing-requires-tools)
    * [Oracle Virtual Box with Ubuntu 20.04](Installation/VM/README.md)
    * [Tools and SKY130 PDKs](Installation/Tools/README.md)
        + [Magic](Installation/Tools/README.md#magic)
        + [Ngspice](Installation/Tools/README.md#ngspice)
        + [Netgen](Installation/Tools/README.md#netgen)
        + [Xschem](Installation/Tools/README.md#xschem)
        + [Open_PDKs](Installation/Tools/README.md#open_pdk)
        + [ALIGN Tool](Installation/Tools/README.md#installing-align)
- [Creating inverter schematic using xschem](#creating-inverter-schematic-using-xschem)
    * [Pre-Layout Simulation](#pre-layout-simulation)
        + [Creating and simulating testbench Schematic](#creating-and-simulating-testbench-schematic)
    * [Post-Layout Simulation](#post-layout-simulation)
    * [Comparison of Pre-layout and Post-layout timing parameters for inverter](#comparison-of-pre-layout-and-post-layout-timing-parameters-for-inverter)
    * [LVS Report](#lvs-report)
    
- [Circuit Simulation From Spice ](#circuit-simulation-from-spice)
    * [Pre-layout Circuit ](#pre-layout-circuit)
    * [Post Layout ](#post-layout)
    * [LVS Report](#lvs-report-spice-netlist-magic)

- [Simulation of a function using Magic and Ngspice](#simulation-of-a-function-using-magic-and-ngspice)
    * [Pre-layout Simulation](#pre-layout-simulation-of-function-fn-using-ngspice)
    * [Post-layout Simulation](#post-layout-simulation-of-function-fn-using-magic-and-ngspice)
    * [Comparison of results](#comparison-of-results)
    * [LVS Report](#lvs-report-function)
- [Inverter using ALIGN](#inverter-using-align)
    * [.gds](#.gds)
    * [.lef](#.lef)




### Installing Requires Tools

For the Entire work Ubuntu 20.04 is used . Installing Ubuntu20.04 on Windows install Oracle virtual box with Ubuntu 20.04 - RAM at least 4GB, hard-disk atleast 100GB. [more info](Installation/VM/README.md)

AI Tools installation Guide [Here](Installation/Tools/README.md)


### Creating inverter schematic using xschem
An initial schematic is made by placing components from the open_pdk library.

The required changes to the properties of the device can be made here and will automatically reflect in the layout

![xschem_inv](Resources/week0/xschem_inverter.png)<br /><br />
Convert the schematic to a symbol

![xschem_sym](Resources/week0/xschem_sym.png)<br /><br />
Using the symbol, we can create an independent test bench to simulate the circuit

![xshem_inverter_tb](Resources/week0/xschem_inverter_tb.png)<br /><br />

## Pre-Layout Simulation

### Creating and simulating testbench Schematic
The circuit can be simulated in ngspice. 

Netlist

```
** sch_path: /home/coold69/Documents/msvsdspwm/Week 0/xschem/inverter_tb.sch
**.subckt inverter_tb
X1 in out net1 GND inverter
V1 net1 GND 1.8
.save i(v1)
V2 in GND pulse(0 1.8 1n 1n 1n 4n 10n)
.save i(v2)
**** begin user architecture code


.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 1n 20n
plot v(in)
plot v(out)
.endc

**** end user architecture code
**.ends

* expanding   symbol:  inverter.sym # of pins=4
** sym_path: /home/coold69/Documents/msvsdspwm/Week 0/xschem/inverter.sym
** sch_path: /home/coold69/Documents/msvsdspwm/Week 0/xschem/inverter.sch
.subckt inverter vin vout vdd vss
*.ipin vin
*.opin vout
*.iopin vdd
*.iopin vss
XM2 vout vin vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=4.5 nf=3 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 vout vin vdd VDD sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=3 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
.ends

.GLOBAL GND
.end
```



![xschem_sim](Resources/week0/xschem_simulation.png)


## Post-Layout Simulation
Inverter Layout Using Magic

<img src="Resources/week0/layout_magic.png" height=800 alt="layout_magic">

Extract Command from magic to ngspice
```
excract all
ext2spice hierarchy on
ext2spice scale off
ext2spice 
```
Netlist From Magic
```
* NGSPICE file created from inverter.ext - technology: sky130A

.subckt inverter vin vout vdd vss
X0 vout vin vss vss sky130_fd_pr__nfet_01v8 ad=5.5e+11p pd=3.1e+06u as=5.5e+11p ps=3.1e+06u w=1e+06u l=150000u
X1 vout vin vdd vdd sky130_fd_pr__pfet_01v8 ad=5.5e+11p pd=3.1e+06u as=5.5e+11p ps=3.1e+06u w=1e+06u l=150000u
C0 vdd vout 0.16fF
C1 vout vin 0.04fF
C2 vdd vin 0.08fF
.ends

```
Modify The Netlist So that we can run the simulation using ngspice

```
* SPICE3 file created from inverter.ext - technology: sky130A
*Added manually
X1 in out net1 GND inverter
V1 net1 GND 1.8
.save i(v1)
V2 in GND pulse(0 1.8 1n 1n 1n 4n 10n)
.save i(v2)

* Added manually
.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 1n 20n
plot v(in) v(out)
.endc

*Magic generated Netlist
.subckt inverter vin vout vdd vss
X0 vout vin vss vss sky130_fd_pr__nfet_01v8 ad=5.5e+11p pd=3.1e+06u as=5.5e+11p ps=3.1e+06u w=1e+06u l=150000u
X1 vout vin vdd vdd sky130_fd_pr__pfet_01v8 ad=5.5e+11p pd=3.1e+06u as=5.5e+11p ps=3.1e+06u w=1e+06u l=150000u
.ends

```
<img src="Resources/week0/post_layout.png" alt="post_layout" >


### Comparison of Pre-layout and Post-layout timing parameters for inverter.

| Parameter    | Value from Pre-layout Simulation| Value from Post-layout Simulation|
|----------|-----|-----|
|Rise Time|0.41 ns|0.7512 ns|
|Fall Time|0.4701 ns|0.64318 ns|
|Cell Rise Delay|032 ns|0.28 ns|
|Cell Fall Delay|0.43 ns|0.32 ns|

### LVS Report
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report `comp.out` is obtained using Netgen by typing the following command.
```
netgen -batch lvs inverter.spice inverter_tb.spice
```
Subcircuit pins:
Circuit 1: inverter                        |Circuit 2: inverter                        
-------------------------------------------|-------------------------------------------
vout                                       |vout                                       
vin                                        |vin                                        
vss                                        |vss                                        
vdd                                        |vdd                                        
---------------------------------------------------------------------------------------
Cell pin lists are equivalent.
Device classes inverter and inverter are equivalent.

Subcircuit summary:
Circuit 1: inverter.spice                  |Circuit 2: inverter_tb.spice               
-------------------------------------------|-------------------------------------------
inverter (1)                               |inverter (1)                               
vsrc (2)                                   |vsrc (2)                                   
Number of devices: 3                       |Number of devices: 3                       
Number of nets: 4                          |Number of nets: 4                          
---------------------------------------------------------------------------------------
Netlists match uniquely.
Cells have no pins;  pin matching not needed.
Device classes inverter.spice and inverter_tb.spice are equivalent.

Final result: Circuits match uniquely.



## Circuit Simulation From Spice 

### Pre-layout Circuit 
<img src="Resources/week0/inverter_sch_2.png">
<br>

#### Netlist

```

XPMOS Vout Vin VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XNMOS Vout Vin GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1


Vin Vin GND pulse(0 1.8 0.5ns 0.5ns 0.5ns 5ns 10ns)
.save i(vin)
VDD VDD GND 1.8
.save i(vdd)
**** begin user architecture code

.tran 0.01n 20n
.control
run
plot Vin Vout
.save all
.endc
.end


.lib /home/coold69/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.save all


**** end user architecture code
**.ends
.end
```
#### Simulation
<img src="Resources/week0/inverter_sch_spice_2.png" alt="">
<br>

### Post Layout 

<img src="Resources/week0/post_layout_sky130_magic.png" alt="post_layout_sky130_magic">

#### Netlist
This inverter.spice netlist generated post layout contains the parasitics that were absent in pre-layout netlist.

For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>

```
* NGSPICE file created from inverter.ext - technology: sky130A

.subckt sky130_fd_pr__pfet_01v8_XGS3BL a_n73_n100# a_15_n100# w_n211_n319# a_n33_n197#
+ VSUBS
X0 a_15_n100# a_n33_n197# a_n73_n100# w_n211_n319# sky130_fd_pr__pfet_01v8 ad=2.9e+11p pd=2.58e+06u as=2.9e+11p ps=2.58e+06u w=1e+06u l=150000u
C0 a_15_n100# a_n73_n100# 0.16fF
C1 w_n211_n319# a_n33_n197# 0.26fF
C2 a_15_n100# a_n33_n197# 0.03fF
C3 a_15_n100# w_n211_n319# 0.06fF
C4 a_n73_n100# a_n33_n197# 0.03fF
C5 w_n211_n319# a_n73_n100# 0.09fF
C6 a_15_n100# VSUBS 0.02fF
C7 a_n73_n100# VSUBS 0.02fF
C8 a_n33_n197# VSUBS 0.05fF
C9 w_n211_n319# VSUBS 1.07fF
.ends

.subckt sky130_fd_pr__nfet_01v8_648S5X a_n73_n100# a_n33_n188# a_15_n100# a_n175_n274#
X0 a_15_n100# a_n33_n188# a_n73_n100# a_n175_n274# sky130_fd_pr__nfet_01v8 ad=2.9e+11p pd=2.58e+06u as=2.9e+11p ps=2.58e+06u w=1e+06u l=150000u
C0 a_n33_n188# a_n73_n100# 0.03fF
C1 a_15_n100# a_n73_n100# 0.16fF
C2 a_n33_n188# a_15_n100# 0.03fF
C3 a_15_n100# a_n175_n274# 0.08fF
C4 a_n73_n100# a_n175_n274# 0.11fF
C5 a_n33_n188# a_n175_n274# 0.30fF
.ends

.subckt inverter in out VP VN
XXM1 VP out XM1/w_n211_n319# in VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM2 VN in out VSUBS sky130_fd_pr__nfet_01v8_648S5X
C0 XM1/w_n211_n319# in 0.10fF
C1 out VP -0.00fF
C2 VN in 0.06fF
C3 VN XM1/w_n211_n319# 0.00fF
C4 out in 0.08fF
C5 out XM1/w_n211_n319# 0.12fF
C6 out VN -0.00fF
C7 VP in 0.06fF
C8 XM1/w_n211_n319# VP 0.10fF
C9 in VSUBS 0.38fF
C10 out VSUBS 0.40fF
C11 VN VSUBS 0.33fF
C12 VP VSUBS 0.16fF
C13 XM1/w_n211_n319# VSUBS 1.13fF
.ends


*==========Simulation=========
X1 in out net1 GND inverter
V1 net1 GND 1.8
.save i(net1)
V2 in GND pulse(0 1.8 1n 1n 1n 4n 10n)
.save i(in)
**** begin user architecture code


.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 1n 20n
plot v(in) v(out)
.endc

```
</details>

<br>
<img src="Resources/week0/post_layout_sky130_sim.png" alt="post_layout_sky130_sim"> <br><br>
<img src="Resources/week0/post_layout_sky130.png" alt="post_layout_sky130"> <br><br>

### LVS Report Spice Netlist Magic
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report `comp.out` is obtained using Netgen by typing the following command.

```
netgen -batch lvs inverter_pre.spice inverter_post.spice 
```
Subcircuit summary:
Circuit 1: inverter_pre.spice              |Circuit 2: inverter_post.spice             
-------------------------------------------|-------------------------------------------
Instance: sky130_fd_pr__nfet_01v8:M2       |Instance: inverter:1/sky130_fd_pr__nfet_01 
  1 = 2                                    |  1 = 8                                    
  2 = 2                                    |  2 = 10                                   
  3 = 2                                    |  3 = 8                                    
  4 = 2                                    |  4 = 6                                    
---------------------------------------------------------------------------------------
Netlists do not match.
Cells have no pins;  pin matching not needed.
Device classes inverter_pre.spice and inverter_post.spice are equivalent.

Final result: Netlists do not match.


## Simulation of a function using Magic and Ngspice
<img src="Resources/week0/function.png" alt="function"  >


### Pre-layout Simulation of function Fn using Ngspice
The netlist ```fn_prelayout.spice``` for the function Fn given can be written as<br><br>
For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>

```
***Netlist description for prelayout simulation***
M1 3 a vdd vdd pmos W=2.125u L=0.25u
M2 2 b vdd vdd pmos W=2.125u L=0.25u
M3 4 d 2 2 pmos W=2.125u L=0.25u
M4 4 c 3 3 pmos W=2.125u L=0.25u
M5 out e 4 4 pmos W=2.125u L=0.25u
M6 out f 4 4 pmos W=2.125u L=0.25u

M7 out a 6 6 nmos W=2.125u L=0.25u
M8 out c 6 6 nmos W=2.125u L=0.25u
M9 out e 7 7 nmos W=2.125u L=0.25u
M10 6 b 0 0 nmos W=2.125u L=0.25u
M11 6 d 0 0 nmos W=2.125u L=0.25u
M12 7 f 0 0 nmos W=2.125u L=0.25u

cload out 0 10f

Vdd vdd 0 2.5
V1 a 0 0 pulse 0 2.5 0.1n 10p 10p 1n 2n
V2 b 0 0 pulse 0 2.5 0.2n 10p 10p 1n 2n
V3 c 0 0 pulse 0 2.5 0.3n 10p 10p 1n 2n
V4 d 0 0 pulse 0 2.5 0.4n 10p 10p 1n 2n
V5 e 0 0 pulse 0 2.5 0.5n 10p 10p 1n 2n
V6 f 0 0 pulse 0 2.5 0.6n 10p 10p 1n 2n

***Simulation commands***
.op
.tran 10p 4n

*** .include model file ***
.include my_model_file.mod
.end

```
</details><br>

Run the ngspice simulation using the following commands.
```
    $ngspice fn_prelayout.spice
```
```
    ngspice 2 -> run
    ngspice 3 -> plot out
```


<img src="Resources/week0/function_pre.png" alt="function_pre"  >

### Post-layout Simulation of function Fn using Magic and Ngspice

<img src="Resources/week0/Fn_mag.png" alt="function"  ><br>

The netlist fn_postlayout.spice generated is as shown. The netlist shows the parasitic capacitances also. Model file is same as the one used for pre-layout simulation.

For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>

```
* SPICE3 file created from Fn_.ext - technology: min2

.option scale=0.09u

M1000 a_46_38# d a_22_38# vdd pmos w=17 l=2
+  ad=102 pd=46 as=204 ps=92
M1001 out c a_14_9# gnd nmos w=17 l=2
+  ad=204 pd=92 as=204 ps=92
M1002 vdd b a_46_38# vdd pmos w=17 l=2
+  ad=204 pd=92 as=0 ps=0
M1003 gnd f a_30_9# gnd nmos w=17 l=2
+  ad=204 pd=92 as=102 ps=46
M1004 gnd b a_14_9# gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 out e a_22_38# vdd pmos w=17 l=2
+  ad=102 pd=46 as=0 ps=0
M1006 a_14_38# a vdd vdd pmos w=17 l=2
+  ad=102 pd=46 as=0 ps=0
M1007 a_14_9# a out gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_30_9# e out gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_22_38# f out vdd pmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a_22_38# c a_14_38# vdd pmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
M1011 a_14_9# d gnd gnd nmos w=17 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_30_9# gnd 3.37fF
C1 a_14_9# gnd 6.82fF
C2 out gnd 8.40fF
C3 a_22_38# gnd 3.02fF
C4 vdd gnd 9.58fF


Vdd vdd 0 2.5
V1 a 0 0 pulse 0 2.5 0.1n 10p 10p 1n 2n
V2 b 0 0 pulse 0 2.5 0.2n 10p 10p 1n 2n
V3 c 0 0 pulse 0 2.5 0.3n 10p 10p 1n 2n
V4 d 0 0 pulse 0 2.5 0.4n 10p 10p 1n 2n
V5 e 0 0 pulse 0 2.5 0.5n 10p 10p 1n 2n
V6 f 0 0 pulse 0 2.5 0.6n 10p 10p 1n 2n
***Simulation commands***
.op
.tran 10p 4n
*** .include model file ***
.include  model.mod
.end

```
</details>
Run the ngspice simulation using the following commands.

```
    ngspice Fn_.spice
```
```
    ngspice 2 -> run
    ngspice 3 -> plot out
```

<img src="Resources/week0/function_post.png" alt="function_post"  >

### Comparison of results
We can note that the graph of out vs time for both pre-layout simulation and post layout simulation are similar.

### LVS Report Function
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report `comp.out` is obtained using Netgen by typing the following command.

```
netgen -batch lvs Fn_.spice Fn_prelayout.spice 
```

Netlists do not match.
Cells have no pins;  pin matching not needed.
Device classes Fn_.spice and Fn_prelayout.spice are equivalent.

Final result: Netlists do not match.



## Inverter using ALIGN
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
<br><br>



## Week 1

### Index
- [Installing Requires Tools](#installing-requires-tools)

- [Inverter post-layout characterization](#inverter-post-layout-characterization)
    * [Inverter pre Layout ](#inverter-pre-layout)
    * [Inverter Post-layout From ALIGN](#inverter-post-layout-from-align)
    * [Comparison of Pre-layout and Post-layout Simulation inverter](#comparison-of-pre-layout-and-post-layout-simulation-inverter)
    * [LVS Report](#lvs-report-inverter-post-layout-characterization)
    
- [Design pre-layout using xschem/ngspice using SKY130 PDKSCircuit Simulation From Spice ](#design-pre-layout-using-xschemngspice-using-sky130-pdks)
    * [Pre-Layout Simulation Of a Function ](#pre-layout-simulation-of-a-function)
    * [Xschem Circuit and Simulation ](#xschem-circuit-and-simulation)
    * [Post layout characterization using magic/ngspice and SKY130 PDKs (xschem technique)](#post-layout-characterization-using-magicngspice-and-sky130-pdks-xschem-technique)
    * [Comparison of Pre-layout and Post-layout Simulation Function Magic/Xschem](#comparison-of-pre-layout-and-post-layout-simulation-function-magicxschem)
    * [LVS Report](#lvs-report-function-magicxschem)

- [Post layout characterization using ALIGN ](#post-layout-characterization-using-align)
    <!-- * [Pre-layout Simulation](#pre-layout-simulation-of-function-fn-using-ngspice)
    * [Post-layout Simulation](#post-layout-simulation-of-function-fn-using-magic-and-ngspice)
    * [Comparison of results](#comparison-of-results)
    * [LVS Report](#lvs-report-function)
<!-- - [Inverter using ALIGN](#inverter-using-align)
    * [.gds](#.gds)
    * [.lef](#.lef) --> 

## Inverter post-layout characterization

### Inverter pre Layout 

Spice Netlist :
```
X1 in out net1 GND inverter
V1 net1 GND 1.8
.save i(v1)
V2 in GND pulse(0 1.8 1n 1n 1n 4n 10n)
.save i(v2)
**** begin user architecture code

.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 1n 20n
plot v(in) v(out)
.endc

.subckt INV vin vout vdd vss
XM2 vout vin vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=4.2 nf=2 
XM3 vout vin vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=8.4 nf=2
.ends
.GLOBAL GND
.end
```
Ngspice Command
```
ngspice INV.sp
```
Simulation

![Inveter pre layout](Resources/week1/pre_layout.png)

### Inverter Post-layout From ALIGN
netlist generated by magic

For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>


```
* NGSPICE file created from INV_0.ext - technology: sky130A

.subckt NMOS_S_96839798_X1_Y1_1676315448 a_147_525# a_200_252# a_230_525#
X0 a_230_525# a_200_252# a_147_525# a_147_525# sky130_fd_pr__nfet_01v8 ad=1.176e+11p pd=1.4e+06u as=2.226e+11p ps=2.74e+06u w=420000u l=150000u
X1 a_147_525# a_200_252# a_230_525# a_147_525# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
C0 a_200_252# a_230_525# 0.12fF
C1 a_230_525# a_147_525# 0.73fF
C2 a_200_252# a_147_525# 0.97fF
.ends

.subckt PMOS_S_36030836_X1_Y1_1676315449 a_200_252# a_230_483# w_0_0# VSUBS
X0 a_230_483# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=4.452e+11p ps=4.42e+06u w=840000u l=150000u
X1 w_0_0# a_200_252# a_230_483# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
C0 w_0_0# a_200_252# 0.80fF
C1 w_0_0# a_230_483# 0.78fF
C2 a_230_483# a_200_252# 0.11fF
C3 a_230_483# VSUBS -0.04fF
C4 a_200_252# VSUBS 0.09fF
C5 w_0_0# VSUBS 2.97fF
.ends

.subckt INV_0 vin vout vdd vss
XNMOS_S_96839798_X1_Y1_1676315448_0 vss vin vout NMOS_S_96839798_X1_Y1_1676315448
XPMOS_S_36030836_X1_Y1_1676315449_0 vin vout vdd vss PMOS_S_36030836_X1_Y1_1676315449
C0 VSS vout 0.01fF
C1 vdd VSS 0.28fF
C2 vin vout 0.01fF
C3 vdd vin 0.15fF
C4 vin VSS 0.02fF
C5 vdd vout 0.05fF
C6 vdd vss 2.75fF
C7 vin vss 0.79fF
C8 vout vss 0.66fF
.ends

*=======Added manually========
X1 in out net1 GND INV_0
V1 net1 GND 1.8
.save i(net1)
V2 in GND pulse(0 1.8 1n 1n 1n 4n 10n)
.save i(in)
**** begin user architecture code

.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 1n 20n
plot v(in) v(out)
.endc

```
</details><br><br>

![POST_LAYOUT](Resources/week1/post_layout.png)

ALIGN Generated .gdb and .lef in ```klayout```

![ALIGN_GDS_LEF](Resources/week1/ALIGN_GDS_LEF.png)

### Comparison of Pre-layout and Post-layout Simulation inverter
| Parameter    | Value from Pre-layout Simulation| Value from Post-layout Simulation|
|----------|-----|-----|
|Rise Time|||
|Fall Time|||
|Cell Rise Delay|||
|Cell Fall Delay|||


### LVS Report Inverter post-layout characterization
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report ```comp.out``` is obtained using Netgen by typing the following command.

```
netgen -batch lvs INV_0.spice INV.spice
```

Circuit 1 cell sky130_fd_pr__nfet_01v8 and Circuit 2 cell sky130_fd_pr__nfet_01v8 are black boxes.<br>
Equate elements:  no current cell.<br>
Device classes sky130_fd_pr__nfet_01v8 and sky130_fd_pr__nfet_01v8 are equivalent.

Netlists do not match.<br>
Cells have no pins;  pin matching not needed.<br>
Device classes INV_0.spice and INV.spice are equivalent.<br>

Final result: Netlists do not match.







## Design pre-layout using xschem/ngspice using SKY130 PDKS

### Pre-Layout Simulation Of a Function
![Function](Resources/week1/function.png)

### Xschem Circuit and Simulation
|![Pre_xschem](Resources/week1/Pre_xschem.png)|![Pre_xschem_sym](Resources/week1/Pre_xschem_sym.png)    |
|-----|----|
|![Pre_xschem_sym_ckt](Resources/week1/Pre_xschem_sym_ckt.png)|![Pre_xschem_sim](Resources/week1/Pre_xschem_sim.png)|

## Post layout characterization using magic/ngspice and SKY130 PDKs (xschem technique)

![](Resources/week1/Post_xschem_magic.png)

#### Netlist
Magic Tool Generated Netlist
```
* For spice netlist goto ./Week 1/Function_W=1_L=0.15/Post_Layout/Function_Sky130.spice
```
Ngspice Simulation
```
ngspice Function_Sky130.spice
```
![](Resources/week1/Post_xschem_magic_sim.png)


### Comparison of Pre-layout and Post-layout Simulation Function Magic/Xschem


### LVS Report Function Magic/Xschem
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report ```comp.out``` is obtained using Netgen by typing the following command.

## Post layout characterization using ALIGN 

### Xschem Circuit Diagram

![](Resources/week1/PRE_ALIGN.png)

#### Simulation
![](Resources/week1/PRE_ALIGN_SIM.png)

ALIGN Input Netlist
```
.subckt Function_Sky130 F E D C B A VDD VSS Y

XM13 net2 B VSS VSS sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM14 net2 D VSS VSS sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM15 net1 F VSS VSS sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM16 Y A net2 net2 sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM17 Y C net2 net2 sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM18 Y E net1 net1 sky130_fd_pr__nfet_01v8 L=180n W=840n nf=2
XM19 Y E net3 net3 sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2
XM20 Y F net3 net3 sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2
XM21 net3 C net4 net4 sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2
XM22 net4 A VDD VDD sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2
XM23 net3 D net5 net5 sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2
XM24 net5 B VDD VDD sky130_fd_pr__pfet_01v8 L=180n W=1680n nf=2

.ends Function_Sky130

```

#### Pre Layout Simulation
For view The Full Netlist Click Here👇
<details><summary>Netlist:</summary>

```
Vdd VDD GND 1.8
.save i(vdd)
Vdd1 A GND pulse(0 1.8 0.1n 10p 10p 1n 2n)
.save i(vdd1)
Vdd2 B GND pulse(0 1.8 0.2n 10p 10p 1n 2n)
.save i(vdd2)
Vdd3 C GND pulse(0 1.8 0.3n 10p 10p 1n 2n)
.save i(vdd3)
Vdd4 D GND pulse(0 1.8 0.4n 10p 10p 1n 2n)
.save i(vdd4)
Vdd5 E GND pulse(0 1.8 0.5n 10p 10p 1n 2n)
.save i(vdd5)
Vdd6 F GND pulse(0 1.8 0.6n 10p 10p 1n 2n)
.save i(vdd6)
X1 F E D C B A VDD GND Y Function_Sky130
**** begin user architecture code

.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 10p 4n
plot y
.endc

**** end user architecture code
**.ends


.subckt Function_Sky130 F E D C B A VDD VSS Y

XM13 net2 B VSS VSS sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM14 net2 D VSS VSS sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM15 net1 F VSS VSS sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM16 Y A net2 net2 sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM17 Y C net2 net2 sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM18 Y E net1 net1 sky130_fd_pr__nfet_01v8 L=0.18 W=0.84 nf=2
XM19 Y E net3 net3 sky130_fd_pr__pfet_01v8 L=0.18 W=1.68 nf=2
XM20 Y F net3 net3 sky130_fd_pr__pfet_01v8 L=0.18 W=1.68 nf=2
XM21 net3 C net4 net4 sky130_fd_pr__pfet_01v8 L=0.18 W=1.68 nf=2
XM22 net4 A VDD VDD sky130_fd_pr__pfet_01v8 L=0.18 W=1.68 nf=2
XM23 net3 D net5 net5 sky130_fd_pr__pfet_01v8 L=0.18 W=1.68 nf=2
XM24 net5 B VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1.68 nf=2
.ends Function_Sky130

```
</details><br>

![](Resources/week1/Pre_ALIGN_NGSPICE.png)


#### ALIGN Generated Layout
![](Resources/week1/ALIGN_FUN_GDS_LEF.png)

#### ALIGN Generated Layout in Magic
![](Resources/week1/Align_Function_magic.png)

#### Generated Netlist From Magic Layout

```
extract do local
excract all
ext2spice hierarchy on
ext2spice scale off
ext2spice cthresh 0 rthresh 0
ext2spice 
```

#### Magic Generated Netlist

For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>

```
* NGSPICE file created from TEST_0.ext - technology: sky130A

.subckt PMOS_S_95137167_X1_Y1_1676553145_1676553145 a_200_252# a_230_399# w_0_0#
X0 a_230_399# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=4.704e+11p pd=3.92e+06u as=8.904e+11p ps=7.78e+06u w=1.68e+06u l=150000u
X1 w_0_0# a_200_252# a_230_399# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.68e+06u l=150000u
C0 a_230_399# w_0_0# 0.78fF
C1 w_0_0# a_200_252# 0.66fF
C2 a_230_399# a_200_252# 0.10fF
C3 a_230_399# VSUBS -0.03fF
C4 a_200_252# VSUBS 0.06fF
C5 w_0_0# VSUBS 2.97fF
.ends

.subckt NMOS_S_54129001_X1_Y1_1676553144_1676553145 a_200_252# a_230_483# a_147_483#
X0 a_230_483# a_200_252# a_147_483# a_147_483# sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=4.452e+11p ps=4.42e+06u w=840000u l=150000u
X1 a_147_483# a_200_252# a_230_483# a_147_483# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
C0 a_200_252# a_230_483# 0.11fF
C1 a_230_483# a_147_483# 0.74fF
C2 a_200_252# a_147_483# 0.89fF
.ends

.subckt INV_45746474_0_0_1676553145 PMOS_S_95137167_X1_Y1_1676553145_1676553145_0/w_0_0#
+ m1_398_560# li_405_1411# VSUBS
XPMOS_S_95137167_X1_Y1_1676553145_1676553145_0 m1_398_560# li_405_1411# PMOS_S_95137167_X1_Y1_1676553145_1676553145_0/w_0_0#
+ PMOS_S_95137167_X1_Y1_1676553145_1676553145
XNMOS_S_54129001_X1_Y1_1676553144_1676553145_0 m1_398_560# li_405_1411# VSUBS NMOS_S_54129001_X1_Y1_1676553144_1676553145
C0 li_405_1411# PMOS_S_95137167_X1_Y1_1676553145_1676553145_0/w_0_0# 0.06fF
C1 PMOS_S_95137167_X1_Y1_1676553145_1676553145_0/w_0_0# m1_398_560# 0.28fF
C2 li_405_1411# m1_398_560# 0.15fF
C3 li_405_1411# VSUBS 0.69fF
C4 m1_398_560# VSUBS 1.53fF
C5 PMOS_S_95137167_X1_Y1_1676553145_1676553145_0/w_0_0# VSUBS 3.02fF
.ends

.subckt DP_PMOS_83764739_X1_Y1_1676553146 a_372_252# a_200_252# a_230_399# a_402_399#
+ w_0_0#
X0 w_0_0# a_372_252# a_402_399# w_0_0# sky130_fd_pr__pfet_01v8 ad=1.3608e+12p pd=1.17e+07u as=4.704e+11p ps=3.92e+06u w=1.68e+06u l=150000u
X1 a_230_399# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=4.704e+11p pd=3.92e+06u as=0p ps=0u w=1.68e+06u l=150000u
X2 w_0_0# a_200_252# a_230_399# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.68e+06u l=150000u
X3 a_402_399# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.68e+06u l=150000u
C0 a_200_252# a_230_399# 0.10fF
C1 a_230_399# w_0_0# 0.72fF
C2 a_200_252# a_402_399# 0.01fF
C3 a_372_252# a_402_399# 0.10fF
C4 a_402_399# w_0_0# 0.91fF
C5 a_200_252# a_372_252# 0.21fF
C6 a_230_399# a_402_399# 0.06fF
C7 a_200_252# w_0_0# 0.56fF
C8 a_372_252# w_0_0# 0.57fF
C9 a_402_399# VSUBS -0.05fF
C10 a_230_399# VSUBS -0.10fF
C11 a_372_252# VSUBS 0.04fF
C12 a_200_252# VSUBS -0.00fF
C13 w_0_0# VSUBS 3.45fF
.ends

.subckt NMOS_S_54129001_X1_Y1_1676553147 a_200_252# a_230_483# a_147_483#
X0 a_230_483# a_200_252# a_147_483# a_147_483# sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=4.452e+11p ps=4.42e+06u w=840000u l=150000u
X1 a_147_483# a_200_252# a_230_483# a_147_483# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
C0 a_230_483# a_200_252# 0.11fF
C1 a_230_483# a_147_483# 0.74fF
C2 a_200_252# a_147_483# 0.89fF
.ends

.subckt PMOS_S_95137167_X1_Y1_1676553148 a_200_252# a_230_399# w_0_0#
X0 a_230_399# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=4.704e+11p pd=3.92e+06u as=8.904e+11p ps=7.78e+06u w=1.68e+06u l=150000u
X1 w_0_0# a_200_252# a_230_399# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.68e+06u l=150000u
C0 a_200_252# a_230_399# 0.10fF
C1 a_200_252# w_0_0# 0.66fF
C2 a_230_399# w_0_0# 0.78fF
C3 a_230_399# VSUBS -0.03fF
C4 a_200_252# VSUBS 0.06fF
C5 w_0_0# VSUBS 2.97fF
.ends

.subckt TEST_0 F E D C B A VDD VSS Y
XINV_45746474_0_0_1676553145_0 m1_312_224# E Y VSS INV_45746474_0_0_1676553145
XDP_PMOS_83764739_X1_Y1_1676553146_0 li_2813_487# m1_1978_560# VDD VDD VDD DP_PMOS_83764739_X1_Y1_1676553146
XNMOS_S_54129001_X1_Y1_1676553147_0 m1_1806_2408# Y VSS NMOS_S_54129001_X1_Y1_1676553147
XPMOS_S_95137167_X1_Y1_1676553148_0 m1_2838_2408# m1_312_224# VDD PMOS_S_95137167_X1_Y1_1676553148
XNMOS_S_54129001_X1_Y1_1676553147_1 m1_1978_560# Y VSS NMOS_S_54129001_X1_Y1_1676553147
XPMOS_S_95137167_X1_Y1_1676553148_1 C m1_312_224# VDD PMOS_S_95137167_X1_Y1_1676553148
XNMOS_S_54129001_X1_Y1_1676553147_2 F VSS VSS NMOS_S_54129001_X1_Y1_1676553147
XNMOS_S_54129001_X1_Y1_1676553147_3 D VSS VSS NMOS_S_54129001_X1_Y1_1676553147
XPMOS_S_95137167_X1_Y1_1676553148_2 m1_946_560# Y m1_312_224# PMOS_S_95137167_X1_Y1_1676553148
XNMOS_S_54129001_X1_Y1_1676553147_4 B VSS VSS NMOS_S_54129001_X1_Y1_1676553147
C0 E F 0.03fF
C1 li_2813_487# m1_312_224# 0.00fF
C2 B m1_312_224# 0.00fF
C3 Y C 0.00fF
C4 Y m1_1806_2408# 0.00fF
C5 Y F 0.01fF
C6 D B 0.00fF
C7 Y A 0.01fF
C8 m1_2838_2408# m1_1806_2408# 0.00fF
C9 D m1_312_224# 0.00fF
C10 B F 0.00fF
C11 m1_312_224# C 0.01fF
C12 B A 0.00fF
C13 m1_312_224# m1_1806_2408# 0.00fF
C14 F m1_312_224# 0.26fF
C15 m1_312_224# A 0.00fF
C16 D C 0.03fF
C17 m1_1978_560# m1_946_560# 0.00fF
C18 Y VDD 0.07fF
C19 A C 0.00fF
C20 F A 0.03fF
C21 Y m1_946_560# 0.00fF
C22 li_2813_487# VDD 0.01fF
C23 B VDD 0.26fF
C24 VDD m1_312_224# 1.60fF
C25 m1_312_224# m1_946_560# 0.00fF
C26 D VDD 0.15fF
C27 VDD C 0.24fF
C28 F VDD 0.00fF
C29 VDD A 0.18fF
C30 E Y 0.04fF
C31 li_2813_487# m1_1978_560# 0.00fF
C32 E m1_312_224# 0.04fF
C33 m1_1978_560# m1_312_224# 0.00fF
C34 E C 0.01fF
C35 Y m1_312_224# 0.65fF
C37 B VSS 0.46fF
C38 m1_946_560# VSS 0.14fF
C39 D VSS 0.56fF
C40 F VSS 0.38fF
C41 C VSS -0.44fF
C42 m1_2838_2408# VSS 0.15fF
C43 m1_1806_2408# VSS 0.97fF
C44 VDD VSS 9.73fF
C45 li_2813_487# VSS 0.28fF
C46 m1_1978_560# VSS 0.98fF
C47 Y VSS 2.89fF
C48 E VSS 1.17fF
C49 m1_312_224# VSS 4.53fF
.ends


Vdd VDD GND 1.8
.save i(vdd)
Vdd1 A GND pulse(0 1.8 0.1n 10p 10p 1n 2n)
.save i(vdd1)
Vdd2 B GND pulse(0 1.8 0.2n 10p 10p 1n 2n)
.save i(vdd2)
Vdd3 C GND pulse(0 1.8 0.3n 10p 10p 1n 2n)
.save i(vdd3)
Vdd4 D GND pulse(0 1.8 0.4n 10p 10p 1n 2n)
.save i(vdd4)
Vdd5 E GND pulse(0 1.8 0.5n 10p 10p 1n 2n)
.save i(vdd5)
Vdd6 F GND pulse(0 1.8 0.6n 10p 10p 1n 2n)
.save i(vdd6)
X1 F E D C B A VDD GND Y  TEST_0
**** begin user architecture code


.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.control
save all
tran 10p 4n
set color0=rgb:f/f/f
set color1=rgb:0/0/0
plot y
.endc

**** end user architecture code
**.ends

```

</details><br>

![](Resources/week1/Function_align_sim.png)
#### Magic Generated Netlist without parasitic

For view The Full Netlist Click Here👇
<details><summary>Netlist</summary>

```


```

</details><br>


![](Resources/week1/POST_ALIGN.png)










![](Resources/week1/)
![](Resources/week1/)
![](Resources/week1/)


















