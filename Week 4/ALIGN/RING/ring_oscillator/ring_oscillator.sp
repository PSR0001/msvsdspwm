.subckt ring_oscillator VCC GND INP
M1 net1 INP VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M2 net2 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M3 INP net2 VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M4 net1 INP GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
M5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
M6 INP net2 GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
.ends
