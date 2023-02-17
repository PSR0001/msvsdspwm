v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} -440 -350 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -440 -320 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} -440 -380 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} -440 -200 0 0 {name=Vdd1 value="pulse(0 1.8 0.1n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -440 -170 0 0 {name=l5 lab=GND}
C {devices/ipin.sym} -440 -230 0 0 {name=p1 lab=A
}
C {devices/vsource.sym} -440 -90 0 0 {name=Vdd2 value="pulse(0 1.8 0.2n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -440 -60 0 0 {name=l6 lab=GND}
C {devices/ipin.sym} -440 -120 0 0 {name=p3 lab=B
}
C {devices/vsource.sym} -670 -200 0 0 {name=Vdd3 value="pulse(0 1.8 0.3n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -670 -170 0 0 {name=l7 lab=GND}
C {devices/ipin.sym} -670 -230 0 0 {name=p5 lab=C
}
C {devices/vsource.sym} -670 -90 0 0 {name=Vdd4 value="pulse(0 1.8 0.4n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -670 -60 0 0 {name=l8 lab=GND}
C {devices/ipin.sym} -670 -120 0 0 {name=p6 lab=D
}
C {devices/vsource.sym} -900 -190 0 0 {name=Vdd5 value="pulse(0 1.8 0.5n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -900 -160 0 0 {name=l3 lab=GND}
C {devices/ipin.sym} -900 -220 0 0 {name=p7 lab=E
}
C {devices/vsource.sym} -900 -80 0 0 {name=Vdd6 value="pulse(0 1.8 0.6n 10p 10p 1n 2n)"}
C {devices/gnd.sym} -900 -50 0 0 {name=l9 lab=GND}
C {devices/ipin.sym} -900 -110 0 0 {name=p8 lab=F
}
C {devices/vdd.sym} -10 -250 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -10 120 0 0 {name=l10 lab=GND}
C {devices/ipin.sym} -90 -190 0 0 {name=p2 lab=A
}
C {devices/ipin.sym} -90 -140 0 0 {name=p4 lab=B

}
C {devices/ipin.sym} -90 -90 0 0 {name=p9 lab=C

}
C {devices/ipin.sym} -90 -40 0 0 {name=p10 lab=D

}
C {devices/ipin.sym} -90 10 0 0 {name=p11 lab=E
}
C {devices/ipin.sym} -90 60 0 0 {name=p12 lab=F
}
C {devices/lab_pin.sym} 110 -70 2 0 {name=p13 sig_type=std_logic lab=Y}
C {devices/code_shown.sym} 240 -310 0 0 {name=SPICE only_toplevel=true 
value="
.lib "~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice" tt
.control
save all
tran 10p 4n 
plot y
.endc"}
C {test.sym} 0 -60 0 0 {name=X1}
