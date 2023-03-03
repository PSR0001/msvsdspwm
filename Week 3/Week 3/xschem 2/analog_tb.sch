v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -50 180 -50 {
lab=Y}
N 30 -80 60 -80 {
lab=VP}
N -60 -100 -60 -70 {
lab=VP}
N -60 -10 -60 10 {
lab=VN}
N 20 -20 20 10 {
lab=VN}
N 20 -20 60 -20 {
lab=VN}
C {analog.sym} 50 -20 0 0 {name=X1}
C {devices/vsource.sym} -60 -40 0 0 {name=V1 value=1.8
}
C {devices/lab_pin.sym} 180 -50 2 0 {name=p1 sig_type=std_logic lab=Y}
C {devices/lab_pin.sym} -60 -100 1 0 {name=p2 sig_type=std_logic lab=VP}
C {devices/lab_pin.sym} 30 -80 0 0 {name=p3 sig_type=std_logic lab=VP}
C {devices/lab_pin.sym} 20 10 3 0 {name=p4 sig_type=std_logic lab=VN}
C {devices/lab_pin.sym} -60 10 3 0 {name=p5 sig_type=std_logic lab=VN}
C {devices/code_shown.sym} 200 -10 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 1u 0.001
plot v(y)
.endc"}
