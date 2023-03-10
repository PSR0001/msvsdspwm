v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -0 110 40 {
lab=GND}
N 250 -90 260 -90 {
lab=VOUT}
N 470 -240 510 -240 {
lab=VCC}
N 470 -170 510 -170 {
lab=GND}
N 650 -200 680 -200 {
lab=INP}
C {comparator.sym} 90 -40 0 0 {name=x1}
C {devices/code_shown.sym} -230 -350 0 0 {name=NGSPICE 
only_toplevel=false 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt

.control
tran 1n 100n
plot INP INN VOUT 
.endc
"}
C {devices/lab_pin.sym} -150 -20 0 0 {name=p14 lab=GND}
C {devices/lab_pin.sym} -150 -80 0 0 {name=l1 lab=INN}
C {devices/lab_pin.sym} -140 20 0 0 {name=p16 lab=VCC}
C {devices/lab_pin.sym} -140 80 0 0 {name=p17 lab=GND}
C {devices/vsource.sym} -140 50 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} -150 -50 0 0 {name=V2 value=1}
C {devices/gnd.sym} 110 40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 110 20 0 0 {name=p1 lab=GND}
C {devices/lab_pin.sym} 90 -50 0 0 {name=l4 lab=INN}
C {devices/lab_pin.sym} 90 -130 2 1 {name=l5 lab=INP}
C {devices/lab_pin.sym} 110 -190 1 0 {name=p2 lab=VCC}
C {devices/lab_pin.sym} 260 -90 2 0 {name=p3 lab=VOUT}
C {ring_oscillator.sym} 510 -160 0 0 {name=X2}
C {devices/lab_pin.sym} 470 -240 0 0 {name=p4 lab=VCC}
C {devices/lab_pin.sym} 470 -170 0 0 {name=p5 lab=GND}
C {devices/lab_pin.sym} 680 -200 0 1 {name=l2 lab=INP}
