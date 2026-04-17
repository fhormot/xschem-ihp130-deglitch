v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 480 -210 500 -210 {lab=VSS}
N 580 -90 820 -90 {lab=VSS}
N 240 -380 250 -380 {lab=VDD}
N 240 -260 250 -260 {lab=VSS}
N 240 -550 250 -550 {lab=VDD}
N 240 -230 240 -90 {lab=VSS}
N 240 -90 250 -90 {lab=VSS}
N 250 -260 250 -90 {lab=VSS}
N 190 -260 200 -260 {lab=v_i}
N 190 -320 190 -260 {lab=v_i}
N 190 -380 200 -380 {lab=v_i}
N 250 -550 250 -380 {lab=VDD}
N 240 -550 240 -410 {lab=VDD}
N 160 -90 240 -90 {lab=VSS}
N 160 -320 190 -320 {lab=v_i}
N 190 -380 190 -320 {lab=v_i}
N 160 -550 240 -550 {lab=VDD}
N 480 -430 500 -430 {lab=VDD}
N 580 -550 820 -550 {lab=VDD}
N 240 -320 240 -290 {lab=v_drv}
N 820 -350 830 -350 {lab=VDD}
N 820 -290 830 -290 {lab=VSS}
N 1070 -380 1080 -380 {lab=VDD}
N 1070 -260 1080 -260 {lab=VSS}
N 1070 -550 1080 -550 {lab=VDD}
N 1070 -230 1070 -90 {lab=VSS}
N 1070 -90 1080 -90 {lab=VSS}
N 1080 -260 1080 -90 {lab=VSS}
N 1020 -260 1030 -260 {lab=#net1}
N 1020 -320 1020 -260 {lab=#net1}
N 1020 -380 1030 -380 {lab=#net1}
N 1080 -550 1080 -380 {lab=VDD}
N 1070 -550 1070 -410 {lab=VDD}
N 990 -320 1020 -320 {lab=#net1}
N 1020 -380 1020 -320 {lab=#net1}
N 1070 -320 1070 -290 {lab=v_o}
N 820 -90 1070 -90 {lab=VSS}
N 820 -550 1070 -550 {lab=VDD}
N 1070 -350 1070 -320 {lab=v_o}
N 530 -320 830 -320 {lab=v_cap}
N 530 -550 530 -430 {lab=VDD}
N 480 -550 530 -550 {lab=VDD}
N 480 -550 480 -430 {lab=VDD}
N 250 -550 480 -550 {lab=VDD}
N 580 -550 580 -430 {lab=VDD}
N 530 -550 580 -550 {lab=VDD}
N 560 -430 580 -430 {lab=VDD}
N 480 -210 480 -90 {lab=VSS}
N 250 -90 480 -90 {lab=VSS}
N 530 -210 530 -90 {lab=VSS}
N 480 -90 530 -90 {lab=VSS}
N 580 -210 580 -90 {lab=VSS}
N 560 -210 580 -210 {lab=VSS}
N 530 -90 580 -90 {lab=VSS}
N 530 -320 530 -250 {lab=v_cap}
N 820 -550 820 -350 {lab=VDD}
N 820 -290 820 -90 {lab=VSS}
N 1070 -320 1250 -320 {lab=v_o}
N 530 -390 530 -320 {lab=v_cap}
N 240 -320 340 -320 {lab=v_drv}
N 240 -350 240 -320 {lab=v_drv}
N 400 -320 530 -320 {lab=v_cap}
C {/foss/designs/medium-deglitch/xschem-ihp130-schmitt-trigger/comp-schmitt.sym} 900 -320 0 0 {name=x1}
C {sg13g2_pr/rhigh.sym} 370 -320 1 0 {name=R4
w=0.5e-6
l=38e-6
model=rhigh
body=VSS
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -230 1 0 {name=MN0
l=1.0u	
w=5.0u
ng=1
m=8
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 160 -320 0 0 {name=p5 lab=v_i}
C {ipin.sym} 160 -550 0 0 {name=p2 lab=VDD}
C {ipin.sym} 160 -90 0 0 {name=p3 lab=VSS}
C {opin.sym} 1250 -320 0 0 {name=p1 lab=v_o}
C {sg13g2_pr/sg13_lv_pmos.sym} 530 -410 3 0 {name=MP1
l=1.0u
w=5.0u
ng=1
m=4
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1050 -260 0 0 {name=MN4
l=0.13u	
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1050 -380 0 0 {name=MP4
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 620 -320 0 0 {name=p4 sig_type=std_logic lab=v_cap}
C {lab_wire.sym} 310 -320 0 0 {name=p6 sig_type=std_logic lab=v_drv}
C {sg13g2_pr/sg13_lv_pmos.sym} 220 -380 0 0 {name=MP5
l=0.13u
w=1.12u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -260 0 0 {name=MN1
l=0.13u	
w=740.00n
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
