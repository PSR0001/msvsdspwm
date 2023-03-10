v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -340 380 -310 {
lab=VCC}
N 380 -340 620 -340 {
lab=VCC}
N 620 -340 620 -310 {
lab=VCC}
N 380 -280 410 -280 {
lab=VCC}
N 410 -340 410 -280 {
lab=VCC}
N 620 -280 660 -280 {
lab=VCC}
N 660 -340 660 -280 {
lab=VCC}
N 620 -340 660 -340 {
lab=VCC}
N 320 -280 340 -280 {
lab=#net1}
N 320 -320 320 -280 {
lab=#net1}
N 320 -320 480 -320 {
lab=#net1}
N 480 -320 480 -280 {
lab=#net1}
N 480 -280 580 -280 {
lab=#net1}
N 380 -250 380 -90 {
lab=#net1}
N 620 -250 620 -90 {
lab=#net2}
N 320 -280 320 -220 {
lab=#net1}
N 320 -220 380 -220 {
lab=#net1}
N 380 -30 380 -0 {
lab=#net3}
N 380 -0 620 -0 {
lab=#net3}
N 620 -30 620 -0 {
lab=#net3}
N 620 -60 700 -60 {
lab=GND}
N 380 -60 450 -60 {
lab=GND}
N 500 0 500 20 {
lab=#net3}
N 500 80 500 110 {
lab=GND}
N 500 50 580 50 {
lab=GND}
N 580 50 580 100 {
lab=GND}
N 500 100 580 100 {
lab=GND}
N 420 50 460 50 {
lab=BIAS}
N 660 -340 830 -340 {
lab=VCC}
N 830 -340 840 -340 {
lab=VCC}
N 840 -340 840 -270 {
lab=VCC}
N 840 -240 890 -240 {
lab=VCC}
N 890 -300 890 -240 {
lab=VCC}
N 840 -300 890 -300 {
lab=VCC}
N 780 -240 800 -240 {
lab=#net2}
N 780 -240 780 -80 {
lab=#net2}
N 780 -80 800 -80 {
lab=#net2}
N 840 -210 840 -110 {
lab=#net4}
N 840 -50 840 -0 {
lab=GND}
N 840 -80 870 -80 {
lab=GND}
N 870 -80 870 -30 {
lab=GND}
N 840 -30 870 -30 {
lab=GND}
N 620 -180 780 -180 {
lab=#net2}
N 580 100 830 100 {
lab=GND}
N 830 100 840 100 {
lab=GND}
N 840 0 840 100 {
lab=GND}
N 840 100 1010 100 {
lab=GND}
N 1010 100 1020 100 {
lab=GND}
N 1020 -50 1020 -40 {
lab=GND}
N 1020 -40 1020 -20 {
lab=GND}
N 1020 -20 1020 100 {
lab=GND}
N 980 -240 980 -80 {
lab=#net4}
N 1020 -210 1020 -110 {
lab=#net5}
N 840 -340 1020 -340 {
lab=VCC}
N 1020 -340 1020 -270 {
lab=VCC}
N 840 -150 980 -150 {
lab=#net4}
N 1020 -240 1050 -240 {
lab=VCC}
N 1050 -310 1050 -240 {
lab=VCC}
N 1020 -310 1050 -310 {
lab=VCC}
N 1020 -80 1070 -80 {
lab=GND}
N 1070 -80 1070 -10 {
lab=GND}
N 1020 -10 1070 -10 {
lab=GND}
N 1020 100 1160 100 {
lab=GND}
N 730 -360 730 -340 {
lab=VCC}
N 750 80 750 100 {
lab=GND}
N 550 -60 580 -60 {
lab=INP}
N 300 -60 340 -60 {
lab=INN}
N 560 -80 560 -60 {
lab=INP}
N 320 -80 320 -60 {
lab=INN}
N 1210 -210 1210 -100 {
lab=OUT}
N 1210 -40 1210 100 {
lab=GND}
N 1160 100 1210 100 {
lab=GND}
N 1160 -70 1170 -70 {
lab=#net5}
N 1160 -240 1160 -70 {
lab=#net5}
N 1160 -240 1170 -240 {
lab=#net5}
N 1210 -340 1210 -270 {
lab=VCC}
N 1020 -340 1210 -340 {
lab=VCC}
N 1020 -140 1160 -140 {
lab=#net5}
N 1210 -240 1260 -240 {
lab=VCC}
N 1260 -290 1260 -240 {
lab=VCC}
N 1210 -290 1260 -290 {
lab=VCC}
N 1210 -70 1250 -70 {
lab=GND}
N 1250 -70 1250 -10 {
lab=GND}
N 1210 -10 1250 -10 {
lab=GND}
N 530 -60 550 -60 {
lab=INP}
N 380 50 420 50 {
lab=BIAS}
C {devices/lab_pin.sym} -70 -300 0 1 {name=l2 lab=INP}
C {devices/lab_pin.sym} -70 -80 0 0 {name=p16 lab=VCC}
C {devices/vsource.sym} -70 -50 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} -70 -170 0 0 {name=V3 value=1}
C {devices/vsource.sym} -70 -270 0 0 {name=V4 value="sine(0 1.8 100000000)"}
C {devices/code_shown.sym} -120 -450 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
*.options savecurrents
.control
tran 0.1n 100n
plot v(out) v(inp)
.endc
"}
C {devices/gnd.sym} -70 -20 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -70 -140 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} -70 -240 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -70 -200 0 0 {name=l1 lab=INN}
C {sky130_fd_pr/pfet_01v8.sym} 360 -280 0 0 {name=M1
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -280 0 0 {name=M2
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 360 -60 0 0 {name=M3
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -60 0 0 {name=M4
L=0.15
W=0.84
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
C {devices/lab_pin.sym} 300 -60 0 0 {name=l3 lab=INN}
C {devices/lab_pin.sym} 530 -60 2 1 {name=l4 lab=INP}
C {devices/gnd.sym} 450 -60 3 0 {name=l5 lab=GND}
C {devices/gnd.sym} 700 -60 3 0 {name=l6 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 480 50 0 0 {name=M5
L=0.15
W=0.84
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
C {devices/gnd.sym} 500 110 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -70 100 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} -70 130 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 530 -340 1 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 1210 -140 2 0 {name=p2 lab=OUT}
C {sky130_fd_pr/pfet_01v8.sym} 820 -240 0 0 {name=M6
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 820 -80 0 0 {name=M7
L=0.15
W=0.84
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
C {sky130_fd_pr/pfet_01v8.sym} 1000 -240 0 0 {name=M8
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 1000 -80 0 0 {name=M9
L=0.15
W=0.84
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
C {devices/opin.sym} 1210 -180 0 0 {name=p3 lab=OUT}
C {devices/iopin.sym} 730 -360 3 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 750 80 3 0 {name=p5 lab=GND}
C {devices/ipin.sym} 560 -80 1 0 {name=p6 lab=INP}
C {devices/ipin.sym} 320 -80 1 0 {name=p7 lab=INN}
C {sky130_fd_pr/pfet_01v8.sym} 1190 -240 0 0 {name=M10
L=0.15
W=0.84
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
C {sky130_fd_pr/nfet_01v8.sym} 1190 -70 0 0 {name=M11
L=0.15
W=0.84
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
C {devices/iopin.sym} 380 50 2 0 {name=p8 lab=BIAS}
C {devices/lab_pin.sym} 420 50 1 0 {name=l12 lab=BIAS}
C {devices/lab_pin.sym} -70 70 1 0 {name=l13 lab=BIAS}
