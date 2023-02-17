v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -210 100 -190 {
lab=GND}
N 100 -190 480 -190 {
lab=GND}
N 480 -210 480 -190 {
lab=GND}
N 290 -210 290 -190 {
lab=GND}
N 100 -240 180 -240 {
lab=GND}
N 180 -240 180 -190 {
lab=GND}
N 290 -240 370 -240 {
lab=GND}
N 370 -240 370 -190 {
lab=GND}
N 480 -240 560 -240 {
lab=GND}
N 560 -240 560 -190 {
lab=GND}
N 480 -190 560 -190 {
lab=GND}
N 480 -330 480 -270 {
lab=#net1}
N 480 -360 560 -360 {
lab=#net1}
N 560 -360 560 -310 {
lab=#net1}
N 480 -310 560 -310 {
lab=#net1}
N 100 -280 100 -270 {
lab=#net2}
N 100 -280 290 -280 {
lab=#net2}
N 290 -280 290 -270 {
lab=#net2}
N 290 -340 290 -320 {
lab=#net2}
N 100 -320 290 -320 {
lab=#net2}
N 100 -340 100 -320 {
lab=#net2}
N 100 -370 170 -370 {
lab=#net2}
N 170 -370 170 -320 {
lab=#net2}
N 290 -370 370 -370 {
lab=#net2}
N 370 -370 370 -320 {
lab=#net2}
N 290 -320 370 -320 {
lab=#net2}
N 210 -320 210 -280 {
lab=#net2}
N 100 -420 100 -400 {
lab=Y}
N 100 -420 480 -420 {
lab=Y}
N 480 -420 480 -390 {
lab=Y}
N 290 -420 290 -400 {
lab=Y}
N 290 -470 290 -420 {
lab=Y}
N 150 -500 150 -480 {
lab=Y}
N 150 -480 150 -470 {
lab=Y}
N 150 -470 390 -470 {
lab=Y}
N 390 -510 390 -470 {
lab=Y}
N 150 -640 150 -560 {
lab=#net3}
N 150 -530 220 -530 {
lab=#net3}
N 220 -570 220 -530 {
lab=#net3}
N 150 -570 220 -570 {
lab=#net3}
N 390 -650 390 -570 {
lab=#net3}
N 390 -540 460 -540 {
lab=#net3}
N 460 -580 460 -540 {
lab=#net3}
N 390 -580 460 -580 {
lab=#net3}
N 150 -610 390 -610 {
lab=#net3}
N 150 -770 150 -700 {
lab=#net4}
N 390 -770 390 -710 {
lab=#net5}
N 150 -670 220 -670 {
lab=#net4}
N 220 -710 220 -670 {
lab=#net4}
N 150 -710 220 -710 {
lab=#net4}
N 390 -680 460 -680 {
lab=#net5}
N 460 -720 460 -680 {
lab=#net5}
N 390 -720 460 -720 {
lab=#net5}
N 150 -870 150 -830 {
lab=VDD}
N 150 -870 390 -870 {
lab=VDD}
N 390 -870 390 -830 {
lab=VDD}
N 390 -800 460 -800 {
lab=VDD}
N 460 -850 460 -800 {
lab=VDD}
N 390 -850 460 -850 {
lab=VDD}
N 150 -800 220 -800 {
lab=VDD}
N 220 -840 220 -800 {
lab=VDD}
N 150 -840 220 -840 {
lab=VDD}
N 290 -440 670 -440 {
lab=Y}
N 280 -900 280 -870 {
lab=VDD}
N 320 -190 320 -150 {
lab=GND}
C {devices/vsource.sym} -240 -840 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -240 -810 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -240 -870 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -240 -690 0 0 {name=Vdd1 value="pulse(0 1.8 0.1n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -240 -660 0 0 {name=l5 lab=GND}
C {devices/ipin.sym} -240 -720 0 0 {name=p1 lab=A
}
C {devices/vsource.sym} -240 -580 0 0 {name=Vdd2 value="pulse(0 1.8 0.2n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -240 -550 0 0 {name=l6 lab=GND}
C {devices/ipin.sym} -240 -610 0 0 {name=p3 lab=B
}
C {devices/vsource.sym} -470 -690 0 0 {name=Vdd3 value="pulse(0 1.8 0.3n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -470 -660 0 0 {name=l7 lab=GND}
C {devices/ipin.sym} -470 -720 0 0 {name=p5 lab=C
}
C {devices/vsource.sym} -470 -580 0 0 {name=Vdd4 value="pulse(0 1.8 0.4n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -470 -550 0 0 {name=l8 lab=GND}
C {devices/ipin.sym} -470 -610 0 0 {name=p6 lab=D
}
C {devices/vsource.sym} -700 -680 0 0 {name=Vdd5 value="pulse(0 1.8 0.5n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -700 -650 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} -700 -710 0 0 {name=p7 lab=E
}
C {devices/vsource.sym} -700 -570 0 0 {name=Vdd6 value="pulse(0 1.8 0.6n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -700 -540 0 0 {name=l9 lab=GND}
C {devices/ipin.sym} -700 -600 0 0 {name=p8 lab=F
}
C {devices/code_shown.sym} 570 -830 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 10p 4n 
plot y
.endc"}
C {sky130_fd_pr/nfet_01v8.sym} 80 -240 0 0 {name=M13
L=0.18
W=0.84
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 270 -240 0 0 {name=M14
L=0.18
W=0.84
nf=2 
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -240 0 0 {name=M15
L=0.18
W=0.84
nf=2 
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
C {sky130_fd_pr/nfet_01v8.sym} 80 -370 0 0 {name=M16
L=0.18
W=0.84
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 270 -370 0 0 {name=M17
L=0.18
W=0.84
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -360 0 0 {name=M18
L=0.18
W=0.84
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -530 0 0 {name=M19
L=0.18
W=1.68
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 370 -540 0 0 {name=M20
L=0.18
W=1.68
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -670 0 0 {name=M21
L=0.18
W=1.68
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -800 0 0 {name=M22
L=0.18
W=1.68
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 370 -680 0 0 {name=M23
L=0.18
W=1.68
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 370 -800 0 0 {name=M24
L=0.18
W=1.68
nf=2
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
C {devices/ipin.sym} 60 -370 0 0 {name=p2 lab=A
}
C {devices/ipin.sym} 250 -370 0 0 {name=p4 lab=C

}
C {devices/ipin.sym} 60 -240 0 0 {name=p9 lab=B
}
C {devices/ipin.sym} 250 -240 0 0 {name=p10 lab=D
}
C {devices/ipin.sym} 440 -360 0 0 {name=p11 lab=E

}
C {devices/ipin.sym} 440 -240 0 0 {name=p12 lab=F
}
C {devices/ipin.sym} 110 -530 0 0 {name=p20 lab=E
}
C {devices/ipin.sym} 350 -540 0 0 {name=p21 lab=F
}
C {devices/ipin.sym} 110 -670 0 0 {name=p22 lab=C
}
C {devices/ipin.sym} 350 -680 0 0 {name=p23 lab=D
}
C {devices/ipin.sym} 110 -800 0 0 {name=p24 lab=A
}
C {devices/ipin.sym} 350 -800 0 0 {name=p25 lab=B
}
C {devices/gnd.sym} 320 -150 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 280 -900 0 0 {name=l10 lab=VDD}
C {devices/lab_pin.sym} 670 -440 2 0 {name=p13 sig_type=std_logic lab=Y
}
