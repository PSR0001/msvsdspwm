v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -200 150 -160 {
lab=VCC}
N 150 -200 450 -200 {
lab=VCC}
N 450 -200 450 -160 {
lab=VCC}
N 300 -200 300 -160 {
lab=VCC}
N 150 -130 170 -130 {
lab=VCC}
N 170 -200 170 -130 {
lab=VCC}
N 300 -130 320 -130 {
lab=VCC}
N 320 -200 320 -130 {
lab=VCC}
N 450 -130 470 -130 {
lab=VCC}
N 470 -200 470 -130 {
lab=VCC}
N 450 -200 470 -200 {
lab=VCC}
N 150 20 150 50 {
lab=xxx}
N 150 50 450 50 {
lab=xxx}
N 450 20 450 50 {
lab=xxx}
N 450 -10 470 -10 {
lab=xxx}
N 470 -10 470 50 {
lab=xxx}
N 450 50 470 50 {
lab=xxx}
N 300 -10 310 -10 {
lab=xxx}
N 310 -10 310 50 {
lab=xxx}
N 300 20 300 50 {
lab=xxx}
N 150 -10 180 -10 {
lab=xxx}
N 180 -10 180 50 {
lab=xxx}
N 250 -130 260 -130 {
lab=#net1}
N 250 -130 250 -10 {
lab=#net1}
N 250 -10 260 -10 {
lab=#net1}
N 300 -100 300 -40 {
lab=#net2}
N 450 -100 450 -40 {
lab=OUT}
N 400 -130 410 -130 {
lab=#net2}
N 400 -130 400 -10 {
lab=#net2}
N 400 -10 410 -10 {
lab=#net2}
N 300 -70 400 -70 {
lab=#net2}
N 150 -100 150 -40 {
lab=#net1}
N 150 -70 250 -70 {
lab=#net1}
N 90 -130 110 -130 {
lab=OUT}
N 90 -130 90 -10 {
lab=OUT}
N 90 -10 110 -10 {
lab=OUT}
N 450 -70 540 -70 {
lab=OUT}
N 540 -70 540 80 {
lab=OUT}
N 70 80 540 80 {
lab=OUT}
N 70 -60 70 80 {
lab=OUT}
N 70 -70 70 -60 {
lab=OUT}
N 70 -70 90 -70 {
lab=OUT}
N 330 -220 330 -200 {
lab=VCC}
N 350 50 350 60 {
lab=xxx}
C {sky130_fd_pr/pfet_01v8.sym} 130 -130 0 0 {name=M1
L=0.15
W=1.68
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -130 0 0 {name=M2
L=0.15
W=1.68
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
C {sky130_fd_pr/pfet_01v8.sym} 430 -130 0 0 {name=M3
L=0.15
W=1.68
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
C {sky130_fd_pr/nfet_01v8.sym} 130 -10 0 0 {name=M4
L=0.15
W=1.68
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -10 0 0 {name=M5
L=0.15
W=1.68
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
C {sky130_fd_pr/nfet_01v8.sym} 430 -10 0 0 {name=M6
L=0.15
W=1.68
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
C {devices/opin.sym} 540 -70 0 0 {name=p1 lab=OUT}
C {devices/iopin.sym} 330 -220 3 0 {name=p2 lab=VCC}
C {devices/iopin.sym} 350 60 1 0 {name=p3 lab=GND}
