v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 -170 -110 -120 {
lab=VP}
N 10 -160 40 -160 {
lab=VP}
N -110 -60 -110 -20 {
lab=VN}
N 10 -40 40 -40 {
lab=VN}
N 160 -110 200 -110 {
lab=Y}
C {analog.sym} 20 -40 0 0 {name=X1}
C {devices/vsource.sym} -110 -90 0 0 {name=V1 value=1.8}
C {devices/lab_pin.sym} -110 -170 1 0 {name=p1 sig_type=std_logic lab=VP}
C {devices/lab_pin.sym} 10 -160 0 0 {name=p2 sig_type=std_logic lab=VP}
C {devices/lab_pin.sym} -110 -20 3 0 {name=p3 sig_type=std_logic lab=VN}
C {devices/lab_pin.sym} 10 -40 0 0 {name=p4 sig_type=std_logic lab=VN}
C {devices/lab_pin.sym} 200 -110 2 0 {name=p5 sig_type=std_logic lab=Y}
C {devices/code_shown.sym} 130 -40 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 1u 0.001
plot v(y)
.endc"}
