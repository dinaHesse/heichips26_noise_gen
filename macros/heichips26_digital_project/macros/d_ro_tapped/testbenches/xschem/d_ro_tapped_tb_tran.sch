v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1460 -680 2260 -280 {flags=graph
y1=-0.7280278
y2=1.6738922
ypos1=0.240088
ypos2=1.439978
divy=5
subdivy=1
unity=1
x1=-2.5346802e-08
x2=1.8112566e-08
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
color="12 21 10"
node="vfsel1
enable
vosc"}
T {Testbench for transient analysis d_ro_tapped

} 600 -1730 0 0 1 1 {}
N 190 -600 190 -560 {
lab=VDD}
N 190 -500 190 -460 {
lab=GND}
N 190 -380 190 -340 {lab=enable}
N 190 -280 190 -240 {lab=GND}
N 960 -440 1040 -440 {lab=enable}
N 1100 -560 1100 -490 {lab=VDD}
N 1100 -390 1100 -320 {lab=GND}
N 1200 -440 1220 -440 {lab=vosc}
N 1200 -340 1200 -320 {lab=GND}
N 1200 -440 1200 -400 {lab=vosc}
N 1160 -440 1200 -440 {lab=vosc}
N 550 -420 1040 -420 {lab=fsel[0..6] bus=true}
N 610 -240 610 -200 {lab=GND}
N 480 -470 480 -440 {lab=fsel4}
N 730 -470 810 -470 {lab=fsel4}
N 810 -470 810 -430 {lab=fsel4}
N 730 -470 730 -430 {lab=fsel4}
N 650 -470 730 -470 {lab=fsel4}
N 650 -470 650 -430 {lab=fsel4}
N 570 -470 650 -470 {lab=fsel4}
N 570 -470 570 -430 {lab=fsel4}
N 480 -470 570 -470 {lab=fsel4}
N 690 -410 690 -380 {lab=fsel5}
N 770 -380 830 -380 {lab=fsel5}
N 830 -380 830 -360 {lab=fsel5}
N 770 -410 770 -380 {lab=fsel5}
N 690 -380 770 -380 {lab=fsel5}
N 610 -340 610 -300 {lab=fsel1}
N 570 -340 610 -340 {lab=fsel1}
N 610 -410 610 -340 {lab=fsel1}
C {devices/vsource.sym} 190 -530 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 190 -460 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 190 -600 0 0 {name=l8 lab=VDD}
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
.include ../../../netlist/xspice/d_ro_tapped.xspice
.include ../../../netlist/pex/d_ro_tapped_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-5 abstol=1e-13 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 25n
let tstep = 10p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(enable) v(vosc) v(fsel1)

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
C {devices/gnd.sym} 190 -240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 190 -310 0 0 {name=ven value="PULSE(0 \{VDD\} 1.5n 10p 10p 20n 25n)"
}
C {devices/lab_wire.sym} 190 -380 0 0 {name=p11 sig_type=std_logic lab=enable}
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
C {d_ro_tapped.sym} 1120 -740 0 0 {name=x1
spice_ignore=true}
C {d_ro_tapped_pex.sym} 1100 -440 0 0 {name=x2
}
C {capa.sym} 1200 -370 0 0 {name=C1
m=1
value=10.0f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -320 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 840 -420 0 1 {name=p14 sig_type=std_logic lab=fsel[0..6]}
C {bus_tap.sym} 560 -420 0 0 {name=l4 lab=0}
C {bus_tap.sym} 600 -420 2 1 {name=l5 lab=1}
C {bus_tap.sym} 640 -420 0 0 {name=l11 lab=2}
C {bus_tap.sym} 680 -420 2 1 {name=l12 lab=3}
C {bus_tap.sym} 720 -420 0 0 {name=l13 lab=4}
C {bus_tap.sym} 760 -420 2 1 {name=l14 lab=5}
C {bus_tap.sym} 800 -420 0 0 {name=l15 lab=6}
C {devices/gnd.sym} 190 -460 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 480 -440 0 0 {name=l16 lab=GND}
C {devices/gnd.sym} 830 -360 0 0 {name=l17 lab=GND}
C {devices/gnd.sym} 610 -200 0 0 {name=l18 lab=GND}
C {devices/vsource.sym} 610 -270 0 0 {name=vfsel1 value="PULSE(0 \{VDD\} 10n 10p 10p 20n 25n)"
}
C {lab_wire.sym} 570 -340 0 0 {name=p1 sig_type=std_logic lab=fsel1
}
