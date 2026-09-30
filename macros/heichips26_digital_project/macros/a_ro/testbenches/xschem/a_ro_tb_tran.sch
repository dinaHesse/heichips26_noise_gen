v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1460 -680 2260 -280 {flags=graph
y1=-0.12994781
y2=1.7280278
ypos1=0.240088
ypos2=1.439978
divy=5
subdivy=1
unity=1
x1=4.2485216e-09
x2=1.203037e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1
linewidth_mult=4
digital=0
legend=1
color="10 21"
node="enable
vosc"}
T {Testbench for transient analysis a_ro
} 600 -1730 0 0 1 1 {}
N 420 -600 420 -560 {
lab=VDD}
N 420 -500 420 -460 {
lab=GND}
N 420 -380 420 -340 {lab=enable}
N 420 -280 420 -240 {lab=GND}
N 960 -440 1040 -440 {lab=enable}
N 1100 -560 1100 -490 {lab=VDD}
N 1100 -390 1100 -320 {lab=GND}
N 1200 -440 1220 -440 {lab=vosc}
N 1200 -340 1200 -320 {lab=GND}
N 1200 -440 1200 -400 {lab=vosc}
N 1160 -440 1200 -440 {lab=vosc}
C {devices/vsource.sym} 420 -530 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 420 -460 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 420 -600 0 0 {name=l8 lab=VDD}
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
.include ../../../netlist/xspice/a_ro.xspice
.include ../../../netlist/pex/a_ro_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 300n
let tstep = 1000p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(enable) v(vosc)

meas tran t_rise1 when v(vosc)=1.1 rise=1
meas tran t_rise2 when v(vosc)=1.1 rise=2
let T_osc = t_rise2 - t_rise1
let f_osc = 1/T_osc
print T_osc
print f_osc

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc
*quit
.endc"}
C {devices/gnd.sym} 420 -240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 420 -310 0 0 {name=ven value="PULSE(0 \{VDD\} 5n 10p 10p 300n )"
}
C {devices/lab_wire.sym} 420 -380 0 0 {name=p11 sig_type=std_logic lab=enable}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1220 -440 2 0 {name=p10 sig_type=std_logic lab=vosc}
C {devices/gnd.sym} 1100 -320 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1100 -560 0 0 {name=l10 lab=VDD}
C {devices/lab_wire.sym} 960 -440 0 0 {name=p13 sig_type=std_logic lab=enable}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {a_ro.sym} 1210 -830 0 0 {name=x1
spice_ignore=true}
C {a_ro_pex.sym} 1100 -440 0 0 {name=x2
}
C {capa.sym} 1200 -370 0 0 {name=C1
m=1
value=10.0f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -320 0 0 {name=l1 lab=GND}
N 940 -420 1040 -420 {lab=invsel[0..5]}
C {devices/lab_wire.sym} 940 -420 0 0 {name=p20 sig_type=std_logic lab=invsel[0..5]}
N 500 -200 500 -160 {lab=invsel0}
C {devices/lab_wire.sym} 500 -200 0 0 {name=p30 sig_type=std_logic lab=invsel0}
C {devices/vsource.sym} 500 -130 0 0 {name=Vinvsel0 value=\{VDD\}}
C {devices/gnd.sym} 500 -100 0 0 {name=l30 lab=GND}
N 600 -200 600 -160 {lab=invsel1}
C {devices/lab_wire.sym} 600 -200 0 0 {name=p31 sig_type=std_logic lab=invsel1}
C {devices/vsource.sym} 600 -130 0 0 {name=Vinvsel1 value=\{VDD\}}
C {devices/gnd.sym} 600 -100 0 0 {name=l31 lab=GND}
N 700 -200 700 -160 {lab=invsel2}
C {devices/lab_wire.sym} 700 -200 0 0 {name=p32 sig_type=std_logic lab=invsel2}
C {devices/vsource.sym} 700 -130 0 0 {name=Vinvsel2 value=\{VDD\}}
C {devices/gnd.sym} 700 -100 0 0 {name=l32 lab=GND}
N 800 -200 800 -160 {lab=invsel3}
C {devices/lab_wire.sym} 800 -200 0 0 {name=p33 sig_type=std_logic lab=invsel3}
C {devices/vsource.sym} 800 -130 0 0 {name=Vinvsel3 value=\{VDD\}}
C {devices/gnd.sym} 800 -100 0 0 {name=l33 lab=GND}
N 900 -200 900 -160 {lab=invsel4}
C {devices/lab_wire.sym} 900 -200 0 0 {name=p34 sig_type=std_logic lab=invsel4}
C {devices/vsource.sym} 900 -130 0 0 {name=Vinvsel4 value=\{VDD\}}
C {devices/gnd.sym} 900 -100 0 0 {name=l34 lab=GND}
N 1000 -200 1000 -160 {lab=invsel5}
C {devices/lab_wire.sym} 1000 -200 0 0 {name=p35 sig_type=std_logic lab=invsel5}
C {devices/vsource.sym} 1000 -130 0 0 {name=Vinvsel5 value=\{VDD\}}
C {devices/gnd.sym} 1000 -100 0 0 {name=l35 lab=GND}
