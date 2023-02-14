v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -40 20 -40 {
lab=vin}
N -20 -140 -20 -40 {
lab=vin}
N -20 -140 20 -140 {
lab=vin}
N -90 -90 -20 -90 {
lab=vin}
N 60 -110 60 -70 {
lab=vout}
N 60 -10 60 40 {
lab=GND}
N 60 -230 60 -170 {
lab=VDD}
N 60 -90 150 -90 {
lab=vout}
N 60 -40 130 -40 {
lab=vout}
N 130 -70 130 -40 {
lab=vout}
N 60 -70 130 -70 {
lab=vout}
N 60 -140 130 -140 {
lab=VDD}
N 130 -180 130 -140 {
lab=VDD}
N 60 -180 130 -180 {
lab=VDD}
N -250 -10 -250 20 {
lab=GND}
N -330 -10 -330 20 {
lab=GND}
N -250 -120 -250 -70 {
lab=vin}
N -250 -120 -80 -120 {
lab=vin}
N -80 -120 -80 -90 {
lab=vin}
N -330 -170 -330 -70 {
lab=VDD}
N -330 -180 -330 -170 {
lab=VDD}
N -330 -180 60 -180 {
lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 40 -140 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 40 -40 0 0 {name=M2
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
C {devices/ipin.sym} -90 -90 0 0 {name=p1 lab=vin
}
C {devices/opin.sym} 150 -90 0 0 {name=p2 lab=vout}
C {devices/iopin.sym} 60 -230 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 60 40 0 0 {name=p4 lab=GND}
C {devices/vsource.sym} -250 -40 0 0 {name=Vin value=pulse"pulse(0 1.8 0.1ns 0.1ns 0.1ns 5ns 10ns)"}
C {devices/vsource.sym} -330 -40 0 0 {name=VDD value=1.8}
C {devices/iopin.sym} -250 20 0 0 {name=p5 lab=GND}
C {devices/iopin.sym} -330 20 0 0 {name=p6 lab=GND}
C {devices/code_shown.sym} -340 70 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 0.1n 50n 
plot vin 
plot vout
.endc"}
