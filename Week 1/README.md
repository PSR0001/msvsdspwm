# Week 1 Task List 
| SL. No.   |Action Item|Status| 
|----------|-------|-----------------------|
|1.|Install ALIGN tool|✅|
|2.|Inverter post-layout characterization using ALIGN|✅|
|3.|Compare 10 and 4|✅|
|4.|Enroll in FREE VSD-custom layout course (already done)|✅|
|5.|Create the design shown in section 7 of the course and perform pre-layout using xschem/ngspice using SKY130 PDKS|✅|
|6.|Post layout characterization using magic/ngspice and SKY130 PDKs (xschem technique)|✅|
|7.|Post layout characterization using ALIGN |✅ |
|8.|Compare 14 and 15 |✅|
|9.|Create the design shown in section 7 of the course and perform pre-layout using xschem or ngspice|✅|
|10.|Update your findings on your GitHub repo with the title “Week 1”|✅|



```
Week 1
|
├───README.md
│
├───Compare 10 _ 4
│   ├───Post_Layout
│   │       INV_0.spice
│   │
│   ├───Pre_layout
│   │       bsim4v5.out
│   │       INV.spice
│   │       test.sp
│   │
│   └───work
│       │   INV_0.gds
│       │   INV_0.lef
│       │   INV_0.python.gds
│       │   __placements_to_run__.json
│       │
│       ├───1_topology
│       │       inv.const.json
│       │       INV.verilog.json
│       │       __primitives_library__.json
│       │
│       ├───2_primitives
│       │       NMOS_S_96839798_X1_Y1.gds.json
│       │       NMOS_S_96839798_X1_Y1.json
│       │       NMOS_S_96839798_X1_Y1.lef
│       │       NMOS_S_96839798_X1_Y1.placement_lef
│       │       PMOS_S_36030836_X1_Y1.gds.json
│       │       PMOS_S_36030836_X1_Y1.json
│       │       PMOS_S_36030836_X1_Y1.lef
│       │       PMOS_S_36030836_X1_Y1.placement_lef
│       │       __primitives__.json
│       │
│       ├───3_pnr
│       │   │   global_router.plt
│       │   │   global_router_plt.json
│       │   │   INV_0.errors
│       │   │   INV_0.json
│       │   │   INV_0.python.gds.json
│       │   │   INV_Metal_via_spacing.txt
│       │   │   INV_Metal_via_spacing_contact.txt
│       │   │   __cap_lef__
│       │   │   __cap_map__.json
│       │   │   __placer_dump__.json
│       │   │
│       │   ├───inputs
│       │   │       INV.abstract_verilog.json
│       │   │       INV.lef
│       │   │       INV.map
│       │   │       INV.placement_lef
│       │   │       INV.pnr.const.json
│       │   │       INV.scaled_placement_verilog.json
│       │   │       INV.verilog.json
│       │   │       layers.json
│       │   │       NMOS_S_96839798_X1_Y1.gds.json
│       │   │       NMOS_S_96839798_X1_Y1.json
│       │   │       PMOS_S_36030836_X1_Y1.gds.json
│       │   │       PMOS_S_36030836_X1_Y1.json
│       │   │
│       │   └───Results
│       │           INV_0.gds.json
│       │           INV_0.lef
│       │           INV_0.pl
│       │           INV_0.plt
│       │           INV_0.scaled_placement_verilog.json
│       │           INV_DR_0.gds.json
│       │           INV_GcellGlobalRoute_0.json
│       │           INV_PG_0.gds.json
│       │           INV_PR_0.gds.json
│       │           Router_Report.txt
│       │
│       └───LOG
│               align.log
│
├───Function_Sky130
│   ├───FUN_ALIGN
│   │   │   TEST_0.gds
│   │   │   TEST_0.lef
│   │   │   TEST_0.python.gds
│   │   │   __placements_to_run__.json
│   │   │
│   │   ├───1_topology
│   │   │       inv_45746474.const.json
│   │   │       test.const.json
│   │   │       TEST.verilog.json
│   │   │       __primitives_library__.json
│   │   │
│   │   ├───2_primitives
│   │   │       DP_PMOS_83764739_X1_Y1.gds.json
│   │   │       DP_PMOS_83764739_X1_Y1.json
│   │   │       DP_PMOS_83764739_X1_Y1.lef
│   │   │       DP_PMOS_83764739_X1_Y1.placement_lef
│   │   │       NMOS_S_54129001_X1_Y1.gds.json
│   │   │       NMOS_S_54129001_X1_Y1.json
│   │   │       NMOS_S_54129001_X1_Y1.lef
│   │   │       NMOS_S_54129001_X1_Y1.placement_lef
│   │   │       PMOS_S_95137167_X1_Y1.gds.json
│   │   │       PMOS_S_95137167_X1_Y1.json
│   │   │       PMOS_S_95137167_X1_Y1.lef
│   │   │       PMOS_S_95137167_X1_Y1.placement_lef
│   │   │       __primitives__.json
│   │   │
│   │   ├───3_pnr
│   │   │   │   global_router.plt
│   │   │   │   global_router_plt.json
│   │   │   │   INV_45746474_0_0.errors
│   │   │   │   INV_45746474_0_0.json
│   │   │   │   INV_45746474_0_0.python.gds.json
│   │   │   │   INV_45746474_Metal_via_spacing.txt
│   │   │   │   INV_45746474_Metal_via_spacing_contact.txt
│   │   │   │   TEST_0.errors
│   │   │   │   TEST_0.json
│   │   │   │   TEST_0.python.gds.json
│   │   │   │   TEST_Metal_via_spacing.txt
│   │   │   │   TEST_Metal_via_spacing_contact.txt
│   │   │   │   __cap_lef__
│   │   │   │   __cap_map__.json
│   │   │   │   __placer_dump__.json
│   │   │   │
│   │   │   ├───inputs
│   │   │   │       DP_PMOS_83764739_X1_Y1.gds.json
│   │   │   │       DP_PMOS_83764739_X1_Y1.json
│   │   │   │       INV_45746474.pnr.const.json
│   │   │   │       layers.json
│   │   │   │       NMOS_S_54129001_X1_Y1.gds.json
│   │   │   │       NMOS_S_54129001_X1_Y1.json
│   │   │   │       PMOS_S_95137167_X1_Y1.gds.json
│   │   │   │       PMOS_S_95137167_X1_Y1.json
│   │   │   │       TEST.abstract_verilog.json
│   │   │   │       TEST.lef
│   │   │   │       TEST.map
│   │   │   │       TEST.placement_lef
│   │   │   │       TEST.pnr.const.json
│   │   │   │       TEST.scaled_placement_verilog.json
│   │   │   │       TEST.verilog.json
│   │   │   │
│   │   │   └───Results
│   │   │           INV_45746474_0.pl
│   │   │           INV_45746474_0.plt
│   │   │           INV_45746474_0.scaled_placement_verilog.json
│   │   │           INV_45746474_0_0.gds.json
│   │   │           INV_45746474_0_0.lef
│   │   │           INV_45746474_DR_0_0.gds.json
│   │   │           INV_45746474_GcellGlobalRoute_0_0.json
│   │   │           Router_Report.txt
│   │   │           TEST_0.gds.json
│   │   │           TEST_0.lef
│   │   │           TEST_0.pl
│   │   │           TEST_0.plt
│   │   │           TEST_0.scaled_placement_verilog.json
│   │   │           TEST_DR_0.gds.json
│   │   │           TEST_GcellGlobalRoute_0.json
│   │   │           TEST_PG_0.gds.json
│   │   │           TEST_PR_0.gds.json
│   │   │
│   │   └───LOG
│   │           align.log
│   │           align.log.1
│   │
│   ├───Post_Layout
│   │       Function_Sky130.spice
│   │       Without_Paracetics.spice
│   │
│   └───Pre_layout
│           bsim4v5.out
│           Function_Sky130.sp
│           Function_Sky130.spice
│
├───Function_W=1_L=0.15
│   ├───netgen
│   │       comp.out
│   │       Function_Sky130.spice
│   │       sky130A_setup.tcl
│   │
│   ├───Post_Layout
│   │       Function_Sky130.spice
│   │
│   └───Pre_layout
│           Function_Sky130.spice
│
├───mag_1
│       .magicrc
│       INV_0.ext
│       INV_0.mag
│       INV_0.spice
│       NMOS_S_96839798_X1_Y1_1676315448.ext
│       NMOS_S_96839798_X1_Y1_1676315448.mag
│       PMOS_S_36030836_X1_Y1_1676315449.ext
│       PMOS_S_36030836_X1_Y1_1676315449.mag
│
├───mag_2
│       .magicrc
│       Function_Sky130.ext
│       Function_Sky130.mag
│       Function_Sky130.spice
│       sky130_fd_pr__nfet_01v8_648S5X.ext
│       sky130_fd_pr__nfet_01v8_648S5X.mag
│       sky130_fd_pr__pfet_01v8_XGS3BL.ext
│       sky130_fd_pr__pfet_01v8_XGS3BL.mag
│
├───mag_3
│       .magicrc
│       DP_PMOS_90543401_X1_Y1_1676446839.ext
│       DP_PMOS_90543401_X1_Y1_1676446839.mag
│       FUNCTION_SKY130_0.ext
│       FUNCTION_SKY130_0.mag
│       FUNCTION_SKY130_0.spice
│       INV_6743645_0_0_1676446838.ext
│       INV_6743645_0_0_1676446838.mag
│       NMOS_S_96839798_X1_Y1_1676446837_1676446838.ext
│       NMOS_S_96839798_X1_Y1_1676446837_1676446838.mag
│       NMOS_S_96839798_X1_Y1_1676446840.ext
│       NMOS_S_96839798_X1_Y1_1676446840.mag
│       PMOS_S_36030836_X1_Y1_1676446838_1676446838.ext
│       PMOS_S_36030836_X1_Y1_1676446838_1676446838.mag
│       PMOS_S_36030836_X1_Y1_1676446841.ext
│       PMOS_S_36030836_X1_Y1_1676446841.mag
│
├───mag_4
│       .magicrc
│       DP_PMOS_83764739_X1_Y1_1676553146.ext
│       DP_PMOS_83764739_X1_Y1_1676553146.mag
│       INV_45746474_0_0_1676553145.ext
│       INV_45746474_0_0_1676553145.mag
│       NMOS_S_54129001_X1_Y1_1676553144_1676553145.ext
│       NMOS_S_54129001_X1_Y1_1676553144_1676553145.mag
│       NMOS_S_54129001_X1_Y1_1676553147.ext
│       NMOS_S_54129001_X1_Y1_1676553147.mag
│       PMOS_S_95137167_X1_Y1_1676553145_1676553145.ext
│       PMOS_S_95137167_X1_Y1_1676553145_1676553145.mag
│       PMOS_S_95137167_X1_Y1_1676553148.ext
│       PMOS_S_95137167_X1_Y1_1676553148.mag
│       TEST_0.ext
│       TEST_0.mag
│       TEST_0.spice
│
├───mag_5
│       .magicrc
│
├───mag_test
│       .magicrc
│       DP_PMOS_83764739_X1_Y1_1676553146.ext
│       DP_PMOS_83764739_X1_Y1_1676553146.mag
│       INV_45746474_0_0_1676553145.ext
│       INV_45746474_0_0_1676553145.mag
│       NMOS_S_54129001_X1_Y1_1676553144_1676553145.ext
│       NMOS_S_54129001_X1_Y1_1676553144_1676553145.mag
│       NMOS_S_54129001_X1_Y1_1676553147.ext
│       NMOS_S_54129001_X1_Y1_1676553147.mag
│       PMOS_S_95137167_X1_Y1_1676553145_1676553145.ext
│       PMOS_S_95137167_X1_Y1_1676553145_1676553145.mag
│       PMOS_S_95137167_X1_Y1_1676553148.ext
│       PMOS_S_95137167_X1_Y1_1676553148.mag
│       TEST_0.ext
│       TEST_0.mag
│       TEST_0.spice
│
├───netgen
│       sky130A_setup.tcl
│
├───xschem
│       .spiceinit
│       Function_Sky130.sch
│       Function_Sky130.sym
│       test.sch
│       test.sym
│       test_sim.sch
│       xschemrc
│
└───xschem 840_1680
        .spiceinit
        Function_Sky130.sch
        Function_Sky130.sym
        test.sch
        test.sym
        test_sim.sch
        xschemrc

```



