v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1570 -630 2370 -230 {flags=graph
y1=-0.073
y2=1.7
ypos1=0.240088
ypos2=1.439978
divy=5
subdivy=1
unity=1
x1=0
x2=7e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=0
legend=1
color="10 21"
node="enable
vosc[0]
vosc[1]
vosc[2]
vosc[3]
vosc[4]
vosc[5]
vosc[6]
vosc[7]"}
B 2 1560 -1210 2360 -810 {flags=graph
y1=-0.0029
y2=0.00019
ypos1=0.240088
ypos2=1.439978
divy=5
subdivy=1
unity=1
x1=0
x2=7e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
linewidth_mult=4
digital=0
legend=1
color="10 21"
node="i(VDD)"}
T {Testbench for transient analysis - 8-Bit Up glitch} 600 -1730 0 0 1 1 {}
N 210 -660 210 -620 {
lab=VDD}
N 210 -560 210 -520 {
lab=GND}
N 190 -380 190 -340 {lab=enable}
N 190 -280 190 -240 {lab=GND}
N 1140 -610 1140 -540 {lab=VDD}
N 1140 -440 1140 -370 {lab=GND}
N 1240 -390 1240 -370 {lab=GND}
N 1240 -490 1240 -450 {lab=vosc[7:0]}
N 1200 -490 1240 -490 {lab=vosc[7:0]}
N 1030 -510 1080 -510 {lab=VDD,VDD,VDD,VDD,VDD,VDD,VDD}
N 1040 -470 1080 -470 {lab=enable}
N 1240 -490 1270 -490 {lab=vosc[7:0]}
C {devices/vsource.sym} 210 -590 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 210 -520 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 210 -660 0 0 {name=l8 lab=VDD}
C {devices/title-3.sym} 0 0 0 0 {name=l3 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1580 0 0 {name=h2
descr="Simulate"
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1700 -1480 0 0 {name=h1
descr="Load waves"
tclcommand="xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw tran"
}
C {code_shown.sym} 60 -1510 0 0 {name=NGSPICE
only_toplevel=false
value="
.include ../../../netlist/xspice/config_glitch.xspice
.include ../../../netlist/pex/config_glitch_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15 rshunt=1e12
.control

set num_threads=8

*save all

* User Constants
let tstop = 7n
let tstep = 30p

* Operating Point Analysis
op
remzerovec
write @schname\\\\.raw
set appendwrite

* Transient Analysis
tran $&tstep $&tstop 
* uic
write @schname\\\\.raw

plot v(enable)  v(vosc[0]) v(vosc[1])
plot vosc[2]
plot v(vosc[7:0])

plot i(VDD)

meas tran t_rise1 when v(vosc[0])=0.75 rise=3
meas tran t_rise2 when v(vosc[0])=0.75 rise=4
let T_osc = t_rise2 - t_rise1
let f_osc = 1/T_osc
print T_osc
print f_osc

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc[7:0]
*quit
.endc"}
C {devices/gnd.sym} 190 -240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 190 -310 0 0 {name=ven value="pulse(0 1.5 100p 100p 100p 3n 6n)"
}
C {devices/lab_wire.sym} 190 -380 0 0 {name=p11 sig_type=std_logic lab=enable}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1270 -490 2 0 {name=p10 sig_type=std_logic lab=vosc[7:0]}
C {devices/gnd.sym} 1140 -370 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1140 -610 0 0 {name=l10 lab=VDD}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {capa.sym} 1240 -420 0 0 {name=C1[7:0]
m=1
value=0.1f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1240 -370 0 0 {name=l1 lab=GND}
C {config_glitch_pex.sym} 1140 -490 0 0 {name=x1}
C {devices/lab_wire.sym} 1040 -470 0 0 {name=p1 sig_type=std_logic lab=enable}
C {devices/lab_wire.sym} 1030 -510 0 0 {name=p2 lab=VDD,VDD,GND,VDD,VDD,VDD,VDD}
