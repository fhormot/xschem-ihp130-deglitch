v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1260 -530 2060 -130 {flags=graph
y1=-0.0086
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out_simple
v_in
x1.v_cap"
color="8 4 11"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 1260 -990 2060 -590 {flags=graph
y1=-0.0083
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=7e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran
color="8 4 1"
node="v_out_imp
v_in
x2.v_cap"}
N 650 -210 650 -180 {lab=0}
N 820 -390 850 -390 {lab=0}
N 730 -180 820 -180 {lab=0}
N 650 -430 850 -430 {lab=VDD}
N 730 -410 850 -410 {lab=v_in}
N 730 -210 730 -180 {lab=0}
N 650 -180 730 -180 {lab=0}
N 650 -180 650 -160 {lab=0}
N 820 -180 1070 -180 {lab=0}
N 1070 -230 1070 -180 {lab=0}
N 1070 -410 1130 -410 {lab=v_out_simple}
N 820 -390 820 -180 {lab=0}
N 650 -430 650 -270 {lab=VDD}
N 730 -410 730 -270 {lab=v_in}
N 1070 -410 1070 -290 {lab=v_out_simple}
N 1030 -410 1070 -410 {lab=v_out_simple}
N 820 -470 1070 -470 {lab=0}
N 1070 -520 1070 -470 {lab=0}
N 1070 -700 1130 -700 {lab=v_out_imp}
N 1070 -700 1070 -580 {lab=v_out_imp}
N 1030 -700 1070 -700 {lab=v_out_imp}
N 820 -470 820 -390 {lab=0}
N 820 -680 820 -470 {lab=0}
N 820 -680 850 -680 {lab=0}
N 730 -700 730 -410 {lab=v_in}
N 730 -700 850 -700 {lab=v_in}
N 650 -720 650 -430 {lab=VDD}
N 650 -720 850 -720 {lab=VDD}
C {devices/vsource.sym} 650 -240 0 0 {name=Vdd value=1.5}
C {devices/vsource.sym} 730 -240 0 0 {name=Vin value="pulse (0 1.5 100n 0.5n 0.5n 110n 2)"}
C {gnd.sym} 650 -160 0 0 {name=l1 lab=0}
C {simulator_commands_shown.sym} 250 -1050 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false 
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {simulator_commands_shown.sym} 250 -900 0 0 {name=Simulator2
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
save all 
op
tran 10e-12 700e-9

write tb_retrigger.raw
.endc
"}
C {lab_wire.sym} 790 -410 0 0 {name=p1 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 1130 -410 0 0 {name=p2 sig_type=std_logic lab=v_out_simple}
C {lab_wire.sym} 790 -430 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {capa-2.sym} 1070 -260 0 0 {name=C1
m=1
value=1e-15
device=polarized_capacitor}
C {/foss/designs/xschem-ihp130-deglitch/deglitch-100n-simple.sym} 940 -410 0 0 {name=x1}
C {/foss/designs/xschem-ihp130-deglitch/deglitch-100n.sym} 940 -700 0 0 {name=x2}
C {lab_wire.sym} 1130 -700 0 0 {name=p4 sig_type=std_logic lab=v_out_imp}
C {capa-2.sym} 1070 -550 0 0 {name=C2
m=1
value=1e-15
device=polarized_capacitor}
