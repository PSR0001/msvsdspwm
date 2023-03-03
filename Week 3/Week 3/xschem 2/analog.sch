v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -290 110 -205 {
lab=#net1}
N 285 -290 285 -200 {
lab=#net2}
N 465 -290 465 -205 {
lab=Y}
N 230 -320 245 -320 {
lab=#net1}
N 230 -320 230 -170 {
lab=#net1}
N 230 -170 245 -170 {
lab=#net1}
N 110 -250 230 -250 {
lab=#net1}
N 400 -320 425 -320 {
lab=#net2}
N 400 -320 400 -175 {
lab=#net2}
N 400 -175 425 -175 {
lab=#net2}
N 285 -250 400 -250 {
lab=#net2}
N 200 -250 200 -135 {
lab=#net1}
N 375 -250 375 -125 {
lab=#net2}
N 560 -250 560 -140 {
lab=Y}
N 465 -250 560 -250 {
lab=Y}
N 50 -320 70 -320 {
lab=Y}
N 50 -320 50 -175 {
lab=Y}
N 50 -175 70 -175 {
lab=Y}
N 560 -250 675 -250 {
lab=Y}
N 675 -250 675 -5 {
lab=Y}
N 5 -5 675 -5 {
lab=Y}
N 5 -245 5 -5 {
lab=Y}
N 5 -245 50 -245 {
lab=Y}
N 110 -375 110 -350 {
lab=VP}
N 110 -375 465 -375 {
lab=VP}
N 465 -375 465 -350 {
lab=VP}
N 285 -375 285 -350 {
lab=VP}
N 110 -145 110 -45 {
lab=VN}
N 110 -45 560 -45 {
lab=VN}
N 560 -80 560 -45 {
lab=VN}
N 465 -145 465 -45 {
lab=VN}
N 375 -65 375 -45 {
lab=VN}
N 285 -140 285 -45 {
lab=VN}
N 200 -75 200 -45 {
lab=VN}
N 110 -175 150 -175 {
lab=VN}
N 150 -175 150 -110 {
lab=VN}
N 110 -110 150 -110 {
lab=VN}
N 285 -170 335 -170 {
lab=VN}
N 335 -170 335 -120 {
lab=VN}
N 285 -120 335 -120 {
lab=VN}
N 465 -175 515 -175 {
lab=VN}
N 515 -175 515 -125 {
lab=VN}
N 465 -125 515 -125 {
lab=VN}
N 110 -320 155 -320 {
lab=VP}
N 155 -375 155 -320 {
lab=VP}
N 285 -320 340 -320 {
lab=VP}
N 340 -375 340 -320 {
lab=VP}
N 465 -320 510 -320 {
lab=VP}
N 510 -375 510 -320 {
lab=VP}
N 465 -375 510 -375 {
lab=VP}
N 670 -250 700 -250 {
lab=Y}
N 340 -400 340 -370 {
lab=VP}
N 200 -50 200 -20 {
lab=VN}
C {sky130_fd_pr/pfet_01v8.sym} 90 -320 0 0 {name=M2
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 265 -320 0 0 {name=M1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 445 -320 0 0 {name=M3
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 90 -175 0 0 {name=M4
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 265 -170 0 0 {name=M5
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 445 -175 0 0 {name=M6
L=0.15
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
C {devices/iopin.sym} 340 -400 3 0 {name=p1 lab=VP}
C {devices/iopin.sym} 200 -20 1 0 {name=p2 lab=VN}
C {devices/opin.sym} 700 -250 0 0 {name=p3 lab=Y}
