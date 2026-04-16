v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1070 -450 1870 -50 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.3611439e-07
x2=-1.3611439e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v_out
v_in"
color="4 8"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 1070 -910 1870 -510 {flags=graph
y1=0
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6.3611439e-07
x2=-1.3611439e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="xdut.v_drv
xdut.v_cap"
color="4 13"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
N 250 -260 250 -230 {lab=0}
N 420 -370 450 -370 {lab=0}
N 250 -410 250 -320 {lab=VDD}
N 330 -230 420 -230 {lab=0}
N 250 -410 450 -410 {lab=VDD}
N 330 -390 330 -320 {lab=v_in}
N 330 -390 450 -390 {lab=v_in}
N 330 -260 330 -230 {lab=0}
N 250 -230 330 -230 {lab=0}
N 250 -230 250 -210 {lab=0}
N 670 -390 730 -390 {lab=v_out}
N 420 -230 670 -230 {lab=0}
N 670 -280 670 -230 {lab=0}
N 670 -390 670 -340 {lab=v_out}
N 630 -390 670 -390 {lab=v_out}
N 420 -370 420 -230 {lab=0}
C {devices/vsource.sym} 250 -290 0 0 {name=Vdd value=1.5}
C {devices/vsource.sym} 330 -290 0 0 {name=Vin value="pulse (0 1.5 100n 0.5n 0.5n 200n 2)"}
C {gnd.sym} 250 -210 0 0 {name=l1 lab=0}
C {simulator_commands_shown.sym} 60 -970 0 0 {name=Libs_Ngspice
simulator=ngspice
only_toplevel=false 
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {simulator_commands_shown.sym} 60 -820 0 0 {name=Simulator2
simulator=ngspice
only_toplevel=false 
value="
.param temp=27
.control
save all 
op
tran 10e-12 500e-9

meas tran t_delay_l2h TRIG V(v_in) VAL=0.75 RISE=1 TARG V(v_out) VAL=0.75 RISE=1
meas tran t_delay_h2l TRIG V(v_in) VAL=0.75 FALL=1 TARG V(v_out) VAL=0.75 FALL=1

let t_delay_delta='t_delay_l2h-t_delay_h2l'
print t_delay_delta

write tb_timing.raw
.endc
"}
C {lab_wire.sym} 390 -390 0 0 {name=p1 sig_type=std_logic lab=v_in}
C {lab_wire.sym} 730 -390 0 0 {name=p2 sig_type=std_logic lab=v_out}
C {lab_wire.sym} 390 -410 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {capa-2.sym} 670 -310 0 0 {name=C1
m=1
value=1e-15
device=polarized_capacitor}
C {/foss/designs/medium-deglitch/deglitch-100n.sym} 540 -390 0 0 {name=x1}
