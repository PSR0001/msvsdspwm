# Week 0 Task List 
| SL. No.   |Day|Action Item|Status| 
|----------|--------|-------|-----------------------|
|1.|1|Install Oracle virtual box with Ubuntu 20.04|✅|
|2.|2|Install Magic, ngspice and SKY130 PDKs|✅|
|3.|2|Install ALIGN tool|✅|
|4.|3|Create inverter and perform pre-layout using xschem or ngspice|✅|
|5.|3|Inverter Post-layout characterization using 2)|✅|
|6.|4|Inverter post-layout characterization using 3) |✅|
|7.|4|Compare the results obtained in 5) and 6) |✅ |
|8.|5|Enroll in FREE VSD-custom layout course |✅|
|9.|6|Create the design shown in section 7 of the course and perform pre-layout using xschem or ngspice|✅|
|10.|6|Post layout characterization using 2) and 3)|✅|
|11.|6|Update your findings on your GitHub repo with the title “Week 0”|✅|

<br>
<br>


```
Week 0
|
├───README.md
│
├───Function_Simulation
│   ├───LVS
│   │       comp.out
│   │       Fn_.spice
│   │       Fn_prelayout.spice
│   │
│   ├───Post_Layout_Spice
│   │       drc.out
│   │       Fn_.ext
│   │       Fn_.mag
│   │       Fn_.spice
│   │       Fn_.tcl
│   │       min2.tech
│   │       model.mod
│   │
│   └───Pre_Layout_Spice
│           Fn_prelayout.spice
│           model.mod
│
├───mag
│       .magicrc
│       comp.out
│       inverter.ext
│       inverter.mag
│       inverter.spice
│       inverter_xschem.spice
│
├───netgen
│       comp.out
│       inverter.spice
│       inverter_tb.spice
│       sky130A_setup.tcl
│
├───Spice_Netlist
│   ├───mag
│   │       .magicrc
│   │       inverter.ext
│   │       inverter.mag
│   │       inverter.spice
│   │       sky130_fd_pr__nfet_01v8_648S5X.ext
│   │       sky130_fd_pr__nfet_01v8_648S5X.mag
│   │       sky130_fd_pr__pfet_01v8_XGS3BL.ext
│   │       sky130_fd_pr__pfet_01v8_XGS3BL.mag
│   │
│   ├───netgen
│   │       comp.out
│   │       inverter_post.spice
│   │       inverter_pre.spice
│   │       sky130A_setup.tcl
│   │
│   ├───Post_layout
│   │       inverter.spice
│   │
│   ├───Pre_Layout
│   │       bsim4v5.out
│   │       inverter_tb.spice
│   │
│   └───xschem
│           .spiceinit
│           inverter.sch
│           xschemrc
│
└───xschem
        .spiceinit
        inverter.sch
        inverter.sym
        inverter_tb.sch
        Test_01.sch
        xschemrc

```










