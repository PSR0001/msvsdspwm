v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -130 120 -130 {
lab=VCC}
N 90 -60 120 -60 {
lab=GND}
N 260 -90 290 -90 {
lab=OUT}
C {devices/lab_pin.sym} -10 -170 0 0 {name=p16 lab=VCC}
C {devices/lab_pin.sym} -10 -110 0 0 {name=p17 lab=GND}
C {devices/vsource.sym} -10 -140 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} 100 -130 0 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} 90 -60 0 0 {name=p2 lab=GND}
C {devices/lab_pin.sym} 290 -90 2 0 {name=p3 lab=OUT}
C {ring_oscillator.sym} 120 -50 0 0 {name=X1}
C {devices/code_shown.sym} -180 -340 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt

.control
tran 1p 4n
plot OUT 
.endc
"}
