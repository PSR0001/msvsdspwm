.subckt analog VN VP Y
M2 net1 Y VP VP sky130_fd_pr__pfet_01v8 L=150n W=1680n nf=2 m=1
M1 net2 net1 VP VP sky130_fd_pr__pfet_01v8 L=150n W=1680n nf=2 m=1
M3 Y net2 VP VP sky130_fd_pr__pfet_01v8 L=150n W=1680n nf=2 m=1
M4 net1 Y VN VN sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
M5 net2 net1 VN VN sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
M6 Y net2 VN VN sky130_fd_pr__nfet_01v8 L=150n W=840n nf=2 m=1
C1 net1 VN sky130_fd_pr__cap_mim_m3_1 W=1000000e-9 L=1000000e-9 m=1
C2 net2 VN sky130_fd_pr__cap_mim_m3_1 W=1000000e-9 L=1000000e-9 m=1
C3 Y VN sky130_fd_pr__cap_mim_m3_1 W=1000000e-9 L=1000000e-9 m=1
.ends 