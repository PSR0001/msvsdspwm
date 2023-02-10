v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1220 -1440 1220 -1390 {
lab=vout}
N 1180 -1470 1180 -1360 {
lab=vin}
N 1220 -1330 1220 -1270 {
lab=vss}
N 1220 -1360 1260 -1360 {
lab=vss}
N 1220 -1310 1260 -1310 {
lab=vss}
N 1260 -1360 1260 -1310 {
lab=vss}
N 1220 -1540 1220 -1500 {
lab=vdd}
N 1220 -1410 1290 -1410 {
lab=vout}
N 1090 -1410 1180 -1410 {
lab=vin}
C {sky130_fd_pr/nfet_01v8.sym} 1200 -1360 0 0 {name=M2
L=0.15
W=4.5
nf=3 
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
C {sky130_fd_pr/pfet3_01v8.sym} 1200 -1470 0 0 {name=M3
L=0.15
W=3
body=VDD
nf=3
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
C {devices/ipin.sym} 1090 -1410 0 0 {name=p1 lab=vin}
C {devices/opin.sym} 1290 -1410 0 0 {name=p2 lab=vout
}
C {devices/iopin.sym} 1220 -1540 0 0 {name=p3 lab=vdd
}
C {devices/iopin.sym} 1220 -1270 0 0 {name=p4 lab=vss}
