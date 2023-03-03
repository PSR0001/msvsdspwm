
.subckt analog VN VP Y

XM2 net1 Y VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=2 m=1
XM1 net2 net1 VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=2 m=1
XM3 Y net2 VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=2 m=1
XM4 net1 Y VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=2 m=1
XM5 net2 net1 VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=2 m=1
XM6 Y net2 VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=2 m=1
XC1 net1 VN sky130_fd_pr__cap_mim_m3_1 W=1000 L=1000 MF=1 m=1
XC2 net2 VN sky130_fd_pr__cap_mim_m3_1 W=1000 L=1000 MF=1 m=1
XC3 Y VN sky130_fd_pr__cap_mim_m3_1 W=1000 L=1000 MF=1 m=1
.ends

.end
