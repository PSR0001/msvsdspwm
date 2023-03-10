.subckt comparator OUT VCC GND INP INN BIAS
M1 net1 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M2 net2 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M3 net1 INN net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M4 net2 INP net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M5 net3 BIAS GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M6 net4 net2 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M7 net4 net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M8 net5 net4 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M9 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M10 OUT net5 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M11 OUT net5 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
.ends
