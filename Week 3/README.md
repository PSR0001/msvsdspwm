
Week 3 Task


Folders 
```
C:.
├───OpenFASoC
│   └───week4
│       ├───blocks
│       │   └───sky130hd
│       │       ├───gds
│       │       └───lef
│       ├───flow
│       │   └───design
│       │       └───src
│       │           └───week4
│       ├───models
│       ├───src
│       ├───tools
│       │   └───__pycache__
│       └───work
└───Week 3
    ├───ALIGN_TOOL
    │   └───First
    ├───mag
    ├───magic_test
    │   ├───mag
    │   ├───mag (another copy)
    │   ├───mag (copy)
    │   ├───netgen
    │   └───xschem
    ├───mag_100
    ├───mag_hand
    ├───mag_without_cap
    ├───netgen
    ├───xschem
    └───xschem 2

```



All Files
```
C:.
├───OpenFASoC
│   └───week4
│       │   .dbtodef.tcl.swp
│       │   dbtodef.tcl
│       │   Makefile
│       │   test.json
│       │
│       ├───blocks
│       │   └───sky130hd
│       │       │   manual_macro.tcl
│       │       │   pdn.tcl
│       │       │   PLL.blackbox.v
│       │       │   pll_custom_net.txt
│       │       │   pll_domain_insts.txt
│       │       │
│       │       ├───gds
│       │       │       ANALOG_0.gds
│       │       │       RING.gds
│       │       │
│       │       └───lef
│       │               ANALOG_0.lef
│       │
│       ├───flow
│       │   │   Makefile
│       │   │   versions.txt
│       │   │
│       │   └───design
│       │       └───src
│       │           └───week4
│       │                   TTF.v
│       │
│       ├───models
│       │       modelfile.csv
│       │       modelfile_PEX.csv
│       │       modelfile_prePEX.csv
│       │       modelfile_silicon.csv
│       │
│       ├───src
│       │       ANALOG.v
│       │       TTF.v
│       │
│       ├───tools
│       │   │   parameter.py
│       │   │   parse_rpt.py
│       │   │   verify_op.sh
│       │   │   week4.py
│       │   │
│       │   └───__pycache__
│       │           parameter.cpython-38.pyc
│       │
│       └───work
└───Week 3
    │   analog.sp
    │   analog.spice
    │   ANALOG_0.spice
    │
    ├───ALIGN_TOOL
    │   └───First
    │           analog.sp
    │
    ├───mag
    │       .magicrc
    │       .spiceinit
    │       ANALOG_0.ext
    │       ANALOG_0.mag
    │       ANALOG_0.spice
    │       CAP_2T_9576091_1677407591.ext
    │       CAP_2T_9576091_1677407591.mag
    │       INV_21850877_0_0_1677407590.ext
    │       INV_21850877_0_0_1677407590.mag
    │       NMOS_S_25628869_X1_Y1_1677407590_1677407590.ext
    │       NMOS_S_25628869_X1_Y1_1677407590_1677407590.mag
    │       NMOS_S_25628869_X1_Y1_1677407592.ext
    │       NMOS_S_25628869_X1_Y1_1677407592.mag
    │       PMOS_S_89421238_X1_Y1_1677407591_1677407590.ext
    │       PMOS_S_89421238_X1_Y1_1677407591_1677407590.mag
    │       PMOS_S_89421238_X1_Y1_1677407593.ext
    │       PMOS_S_89421238_X1_Y1_1677407593.mag
    │
    ├───magic_test
    │   │   analog_0.spice
    │   │
    │   ├───mag
    │   │       .magicrc
    │   │       .spiceinit
    │   │       analog_0(1).mag
    │   │       ANALOG_0.ext
    │   │       ANALOG_0.mag
    │   │       ANALOG_0.spice
    │   │       INV_21850877_PG0_0_0_1677466712.ext
    │   │       INV_21850877_PG0_0_0_1677466712.mag
    │   │       NMOS_S_25628869_X1_Y1_1677466711_1677466712.ext
    │   │       NMOS_S_25628869_X1_Y1_1677466711_1677466712.mag
    │   │       NMOS_S_25628869_X1_Y1_1677466711_1677466713.ext
    │   │       NMOS_S_25628869_X1_Y1_1677466711_1677466713.mag
    │   │       PMOS_S_89421238_X1_Y1_1677466712_1677466712.ext
    │   │       PMOS_S_89421238_X1_Y1_1677466712_1677466712.mag
    │   │       PMOS_S_89421238_X1_Y1_1677466712_1677466713.ext
    │   │       PMOS_S_89421238_X1_Y1_1677466712_1677466713.mag
    │   │       RING.gds
    │   │       sky130_fd_pr__cap_mim_m3_1_3HBNLG.mag
    │   │       sky130_fd_pr__cap_mim_m3_1_Z5ZARQ.mag
    │   │       sky130_fd_pr__nfet_01v8_MVW3GX.mag
    │   │       sky130_fd_pr__pfet_01v8_MQKFPY.mag
    │   │       STAGE2_INV_27873531_PG0_0_0_1677466713.ext
    │   │       STAGE2_INV_27873531_PG0_0_0_1677466713.mag
    │   │
    │   ├───mag (another copy)
    │   │       .magicrc
    │   │       .spiceinit
    │   │       ANALOG_0.ext
    │   │       ANALOG_0.mag
    │   │       ANALOG_0.spice
    │   │       INV_8026114_PG0_0_0_1677862246.ext
    │   │       INV_8026114_PG0_0_0_1677862246.mag
    │   │       NMOS_S_4459928_X5_Y1_1677862245_1677862246.ext
    │   │       NMOS_S_4459928_X5_Y1_1677862245_1677862246.mag
    │   │       NMOS_S_4459928_X5_Y1_1677862245_1677862247.ext
    │   │       NMOS_S_4459928_X5_Y1_1677862245_1677862247.mag
    │   │       PMOS_S_62253992_X5_Y1_1677862246_1677862246.ext
    │   │       PMOS_S_62253992_X5_Y1_1677862246_1677862246.mag
    │   │       PMOS_S_62253992_X5_Y1_1677862246_1677862247.ext
    │   │       PMOS_S_62253992_X5_Y1_1677862246_1677862247.mag
    │   │       STAGE2_INV_31651850_PG0_0_0_1677862247.ext
    │   │       STAGE2_INV_31651850_PG0_0_0_1677862247.mag
    │   │
    │   ├───mag (copy)
    │   │       .magicrc
    │   │       .spiceinit
    │   │       ANALOG.gds
    │   │       ANALOG_0.mag
    │   │       CAP_2T_9576091_1677518467.mag
    │   │       INV_21850877_PG0_0_0_1677518466.mag
    │   │       NMOS_S_25628869_X1_Y1_1677518466_1677518466.mag
    │   │       NMOS_S_25628869_X1_Y1_1677518468.mag
    │   │       PMOS_S_89421238_X1_Y1_1677518467_1677518466.mag
    │   │       PMOS_S_89421238_X1_Y1_1677518469.mag
    │   │
    │   ├───netgen
    │   │       sky130A_setup.tcl
    │   │
    │   └───xschem
    │           .spiceinit
    │           analog.sch
    │           analog.sym
    │           analog_tb.sch
    │           xschemrc
    │
    ├───mag_100
    │       .magicrc
    │       .spiceinit
    │       a.gds
    │       ANALOG_0.ext
    │       ANALOG_0.mag
    │       ANALOG_0.spice
    │       CAP_2T_51284459_1677518944.ext
    │       CAP_2T_51284459_1677518944.mag
    │       drc.out
    │       INV_21850877_PG0_0_0_1677518943.ext
    │       INV_21850877_PG0_0_0_1677518943.mag
    │       NMOS_S_25628869_X1_Y1_1677518941_1677518943.ext
    │       NMOS_S_25628869_X1_Y1_1677518941_1677518943.mag
    │       NMOS_S_25628869_X1_Y1_1677518945.ext
    │       NMOS_S_25628869_X1_Y1_1677518945.mag
    │       PMOS_S_89421238_X1_Y1_1677518942_1677518943.ext
    │       PMOS_S_89421238_X1_Y1_1677518942_1677518943.mag
    │       PMOS_S_89421238_X1_Y1_1677518946.ext
    │       PMOS_S_89421238_X1_Y1_1677518946.mag
    │
    ├───mag_hand
    │       .magicrc
    │       .spiceinit
    │       analog.mag
    │       sky130_fd_pr__cap_mim_m3_1_3HBNLG.mag
    │       sky130_fd_pr__nfet_01v8_MVW3GX.mag
    │       sky130_fd_pr__pfet_01v8_MQKFPY.mag
    │
    ├───mag_without_cap
    │       .magicrc
    │       .spiceinit
    │       ANALOG_0.ext
    │       ANALOG_0.mag
    │       ANALOG_0.spice
    │       INV_21850877_PG0_0_0_1677466712.ext
    │       INV_21850877_PG0_0_0_1677466712.mag
    │       NMOS_S_25628869_X1_Y1_1677466711_1677466712.ext
    │       NMOS_S_25628869_X1_Y1_1677466711_1677466712.mag
    │       NMOS_S_25628869_X1_Y1_1677466711_1677466713.ext
    │       NMOS_S_25628869_X1_Y1_1677466711_1677466713.mag
    │       PMOS_S_89421238_X1_Y1_1677466712_1677466712.ext
    │       PMOS_S_89421238_X1_Y1_1677466712_1677466712.mag
    │       PMOS_S_89421238_X1_Y1_1677466712_1677466713.ext
    │       PMOS_S_89421238_X1_Y1_1677466712_1677466713.mag
    │       sim.png
    │       sky130_fd_pr__cap_mim_m3_1_3HBNLG.mag
    │       STAGE2_INV_27873531_PG0_0_0_1677466713.ext
    │       STAGE2_INV_27873531_PG0_0_0_1677466713.mag
    │
    ├───netgen
    │       sky130A_setup.tcl
    │
    ├───xschem
    │       .spiceinit
    │       analog.sch
    │       analog.sym
    │       analog_tb.sch
    │       xschemrc
    │
    └───xschem 2
            .spiceinit
            analog.sch
            analog.sym
            analog_tb.sch
            xschemrc


```

