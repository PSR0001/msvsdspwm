
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




