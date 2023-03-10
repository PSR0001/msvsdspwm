v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -270 220 -250 {
lab=VCC}
N 220 -270 510 -270 {
lab=VCC}
N 430 -270 510 -270 {
lab=VCC}
N 430 -270 430 -250 {
lab=VCC}
N 180 -270 220 -270 {
lab=VCC}
N 220 -270 480 -270 {
lab=VCC}
N 480 -270 480 -220 {
lab=VCC}
N 430 -220 480 -220 {
lab=VCC}
N 430 -190 430 -40 {
lab=#net1}
N 220 -160 300 -160 {
lab=#net2}
N 300 -220 300 -160 {
lab=#net2}
N 150 -10 180 -10 {
lab=INN}
N 220 20 220 50 {
lab=#net3}
N 220 50 430 50 {
lab=#net3}
N 430 20 430 50 {
lab=#net3}
N 400 50 400 80 {
lab=#net3}
N 400 140 400 160 {
lab=GND}
N 400 160 670 160 {
lab=GND}
N 670 -120 670 70 {
lab=out}
N 430 -150 630 -150 {
lab=#net1}
N 510 -270 730 -270 {
lab=VCC}
N 730 -270 730 -150 {
lab=VCC}
N 670 -150 730 -150 {
lab=VCC}
N 670 -270 670 -180 {
lab=VCC}
N 670 140 670 160 {
lab=GND}
N 530 160 530 180 {
lab=GND}
N 460 -290 460 -270 {
lab=VCC}
N 280 160 400 160 {
lab=GND}
N 280 -10 280 160 {
lab=GND}
N 670 70 670 80 {
lab=out}
N 670 110 720 110 {
lab=GND}
N 720 110 720 160 {
lab=GND}
N 670 160 720 160 {
lab=GND}
N 670 -10 710 -10 {
lab=out}
N 50 140 50 150 {
lab=GND}
N 50 150 50 160 {
lab=GND}
N 50 160 280 160 {
lab=GND}
N -0 160 60 160 {
lab=GND}
N 400 110 440 110 {
lab=GND}
N 440 110 440 160 {
lab=GND}
N 330 80 330 110 {
lab=#net4}
N 330 70 330 80 {
lab=#net4}
N 330 70 560 70 {
lab=#net4}
N 560 70 560 110 {
lab=#net4}
N 560 110 630 110 {
lab=#net4}
N 50 20 50 80 {
lab=#net4}
N 50 -260 50 -40 {
lab=VCC}
N 50 -270 50 -260 {
lab=VCC}
N 50 -270 180 -270 {
lab=VCC}
N 50 60 110 60 {
lab=#net4}
N 110 60 110 110 {
lab=#net4}
N 220 -220 240 -220 {
lab=VCC}
N 240 -270 240 -220 {
lab=VCC}
N 220 -190 220 -40 {
lab=#net2}
N 300 -220 390 -220 {
lab=#net2}
N 170 -220 180 -220 {
lab=#net2}
N 170 -220 170 -160 {
lab=#net2}
N 170 -160 220 -160 {
lab=#net2}
N 220 -10 280 -10 {
lab=GND}
N 370 -10 390 -10 {
lab=INP}
N 280 40 510 40 {
lab=GND}
N 500 -10 510 40 {
lab=GND}
N 430 -10 500 -10 {
lab=GND}
N 110 110 360 110 {}
N -30 60 50 60 {}
N -30 60 -30 120 {}
N -30 120 10 110 {}
N 50 110 90 110 {}
N 90 110 90 160 {}
C {sky130_fd_pr/pfet_01v8.sym} 200 -220 0 0 {name=M1
L=1
W=10
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
C {sky130_fd_pr/pfet_01v8.sym} 410 -220 0 0 {name=M2
L=1
W=10
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
C {sky130_fd_pr/nfet_01v8.sym} 200 -10 0 0 {name=M3
L=1
W=1.79
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
C {sky130_fd_pr/nfet_01v8.sym} 410 -10 0 0 {name=M4
L=1
W=1.79
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
C {sky130_fd_pr/nfet_01v8.sym} 380 110 0 0 {name=M5
L=1
W=20
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
C {sky130_fd_pr/nfet_01v8.sym} 650 110 0 0 {name=M6
L=1
W=62.83
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
C {sky130_fd_pr/pfet_01v8.sym} 650 -150 0 0 {name=M7
L=1
W=62.83
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
C {devices/lab_pin.sym} -70 -300 0 1 {name=l2 lab=INP}
C {devices/lab_pin.sym} -70 -80 0 0 {name=p16 lab=VCC}
C {devices/vsource.sym} -70 -50 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} -70 -170 0 0 {name=V3 value="sine(0 -1m 60)"}
C {devices/vsource.sym} -70 -270 0 0 {name=V4 value="sine(0 1m 60)"}
C {devices/code_shown.sym} -120 -450 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
*.options savecurrents
.control
tran 1m 0.5
plot v(out)
.endc
"}
C {devices/gnd.sym} -70 -20 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -70 -140 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -70 -240 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 530 180 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 150 -10 0 0 {name=l4 lab=INN}
C {devices/lab_pin.sym} -70 -200 0 0 {name=l1 lab=INN}
C {devices/lab_pin.sym} 370 -10 2 1 {name=l5 lab=INP}
C {devices/lab_pin.sym} 460 -290 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 710 -10 2 0 {name=p2 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 30 110 0 0 {name=M8
L=1
W=10
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
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 50 -10 0 0 {name=R1
L=100
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
