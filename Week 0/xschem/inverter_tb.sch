v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -50 -140 90 -140 {
lab=in}
N -50 -140 -50 -80 {
lab=in}
N -100 -230 -100 -160 {
lab=#net1}
N -100 -230 190 -230 {
lab=#net1}
N 190 -230 190 -210 {
lab=#net1}
N 30 -160 30 -140 {
lab=in}
N 300 -170 300 -140 {
lab=out}
N 290 -140 300 -140 {
lab=out}
C {inverter.sym} 90 -140 0 0 {name=X1}
C {devices/vsource.sym} -100 -130 0 0 {name=V1 value=1.8
}
C {devices/vsource.sym} -50 -50 0 0 {name=V2 value="pulse(0 1.8 1n 1n 1n 4n 10n)"}
C {devices/gnd.sym} -100 -100 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -50 -20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 190 -70 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 30 -160 0 0 {name=p2 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 300 -170 0 0 {name=p1 sig_type=std_logic lab=out
}
C {devices/code_shown.sym} 350 -90 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 1n 20n 
plot v(in) 
plot v(out) 
.endc"}
