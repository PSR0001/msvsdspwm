v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -100 90 -50 {
lab=out}
N 50 -130 50 -20 {
lab=in}
N 90 10 90 70 {
lab=GND}
N 90 -20 130 -20 {
lab=GND}
N 90 30 130 30 {
lab=GND}
N 130 -20 130 30 {
lab=GND}
N 90 -200 90 -160 {
lab=#net1}
N 90 -70 160 -70 {
lab=out}
N -40 -70 50 -70 {
lab=in}
N -120 -70 -120 -10 {
lab=in}
N -40 -90 -40 -70 {
lab=in}
N -120 -70 -40 -70 {
lab=in}
N -170 -200 -170 -90 {
lab=#net1}
N -170 -200 90 -200 {
lab=#net1}
N -120 50 -120 100 {
lab=GND}
N -120 70 90 70 {
lab=GND}
N 160 -70 220 -70 {
lab=out}
N 220 -100 220 -70 {
lab=out}
N 200 -100 220 -100 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 70 -20 0 0 {name=M2
L=0.18
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
C {sky130_fd_pr/pfet3_01v8.sym} 70 -130 0 0 {name=M3
L=0.18
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
C {devices/vsource.sym} -170 -60 0 0 {name=V1 value=1.8
}
C {devices/vsource.sym} -120 20 0 0 {name=V2 value="pulse(0 1.8 1n 1n 1n 4n 10n)"}
C {devices/gnd.sym} -170 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -120 100 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -40 -90 0 0 {name=p1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 200 -100 0 0 {name=p3 sig_type=std_logic lab=out
}
C {devices/netlist_not_shown_at_end.sym} 380 -180 0 0 {name=SPICE1 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
	save all
	tran 1n 1u 
	plot v(in) v(out) 
.endc"
}
