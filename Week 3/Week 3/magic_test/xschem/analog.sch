v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -160 70 -80 {
lab=#net1}
N 240 -160 240 -80 {
lab=#net2}
N 400 -160 400 -80 {
lab=#net3}
N 180 -50 200 -50 {
lab=#net1}
N 180 -190 180 -50 {
lab=#net1}
N 180 -190 200 -190 {
lab=#net1}
N 340 -190 360 -190 {
lab=#net2}
N 340 -190 340 -50 {
lab=#net2}
N 340 -50 360 -50 {
lab=#net2}
N 70 -240 70 -220 {
lab=VP}
N 70 -240 400 -240 {
lab=VP}
N 400 -240 400 -220 {
lab=VP}
N 240 -240 240 -220 {
lab=VP}
N 70 -120 180 -120 {
lab=#net1}
N 240 -120 340 -120 {
lab=#net2}
N 30 -190 30 -50 {
lab=#net3}
N 70 -190 110 -190 {
lab=VP}
N 110 -240 110 -190 {
lab=VP}
N 240 -190 290 -190 {
lab=VP}
N 290 -240 290 -190 {
lab=VP}
N 400 -190 440 -190 {
lab=VP}
N 440 -240 440 -190 {
lab=VP}
N 400 -240 440 -240 {
lab=VP}
N 500 -120 500 -20 {
lab=#net3}
N 400 -120 500 -120 {
lab=#net3}
N 320 -120 320 -20 {
lab=#net2}
N 150 -120 150 -20 {
lab=#net1}
N 70 -20 70 70 {
lab=VN}
N 70 70 500 70 {
lab=VN}
N 500 40 500 70 {
lab=VN}
N 400 -20 400 70 {
lab=VN}
N 320 40 320 70 {
lab=VN}
N 240 -20 240 70 {
lab=VN}
N 150 40 150 70 {
lab=VN}
N 500 -120 620 -120 {
lab=#net3}
N 620 -120 620 120 {
lab=#net3}
N -10 120 620 120 {
lab=#net3}
N -10 -120 -10 120 {
lab=#net3}
N -10 -120 30 -120 {
lab=#net3}
N 70 -50 100 -50 {
lab=VN}
N 100 -50 100 0 {
lab=VN}
N 70 0 100 0 {
lab=VN}
N 240 -50 280 -50 {
lab=VN}
N 280 -50 280 -0 {
lab=VN}
N 240 0 280 -0 {
lab=VN}
N 400 -50 450 -50 {
lab=VN}
N 450 -50 450 0 {
lab=VN}
N 400 -0 450 0 {
lab=VN}
N 270 -260 270 -240 {
lab=VP}
N 290 70 290 80 {
lab=VN}
N 620 -120 650 -120 {
lab=#net3}
C {sky130_fd_pr/pfet_01v8.sym} 50 -190 0 0 {name=M1
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 220 -190 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 380 -190 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 50 -50 0 0 {name=M4
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 220 -50 0 0 {name=M5
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 -50 0 0 {name=M6
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 150 10 0 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 320 10 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 10 0 0 {name=C3 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {devices/iopin.sym} 270 -260 3 0 {name=p1 lab=VP}
C {devices/iopin.sym} 290 80 1 0 {name=p2 lab=VN}
C {devices/opin.sym} 650 -120 0 0 {name=p3 lab=Y}
