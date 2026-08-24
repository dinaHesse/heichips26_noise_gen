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
x1=9.4540757e-11
x2=7.0941626e-09
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
color="9 12"
node="osc
enable"}
B 2 1460 -1110 2260 -710 {flags=graph
y1=-0.11200641
y2=0.095239144
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.4540757e-11
x2=7.0941626e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=i(VDD)
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
T {Testbench for transient analysis d_load_uniform
} 600 -1730 0 0 1 1 {}
N 90 -810 90 -770 {
lab=VDD}
N 90 -710 90 -670 {
lab=GND}
N 90 -590 90 -550 {lab=enable}
N 90 -490 90 -450 {lab=GND}
N 1100 -390 1100 -320 {lab=GND}
N 90 -370 90 -330 {lab=osc}
N 90 -270 90 -230 {lab=GND}
N 640 -450 1040 -450 {lab=en[0..7] bus=true}
N 810 -480 810 -460 {lab=en1}
N 690 -480 690 -460 {lab=en1}
N 780 -480 810 -480 {lab=en1}
N 780 -480 780 -460 {lab=en1}
N 750 -480 750 -460 {lab=en1}
N 720 -480 750 -480 {lab=en1}
N 720 -480 720 -460 {lab=en1}
N 690 -480 720 -480 {lab=en1}
N 750 -480 780 -480 {lab=en1}
N 660 -480 660 -460 {lab=en1}
N 600 -480 660 -480 {lab=en1}
N 1100 -560 1100 -490 {lab=VDD}
N 660 -480 690 -480 {lab=en1}
N 840 -480 870 -480 {lab=en1}
N 870 -480 870 -460 {lab=en1}
N 840 -480 840 -460 {lab=en1}
N 810 -480 840 -480 {lab=en1}
N 950 -410 970 -410 {lab=osc}
N 970 -430 970 -410 {lab=osc}
N 970 -430 1040 -430 {lab=osc}
C {devices/vsource.sym} 90 -740 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 90 -670 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 90 -810 0 0 {name=l8 lab=VDD}
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
.include ../../../netlist/xspice/e_load_uniform.xspice
.include ../../../netlist/pex/e_load_uniform_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 10n
let tstep = 10p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(enable) v(osc)
plot i(VDD)

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt v(enable) v(osc) i(VDD)
*quit
.endc"}
C {devices/gnd.sym} 90 -450 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 90 -520 0 0 {name=ven value="PULSE(0 \{VDD\} 5n 10p 10p 20n 25n)"
}
C {devices/lab_wire.sym} 90 -590 0 0 {name=p11 sig_type=std_logic lab=enable}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 1100 -320 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1100 -560 0 0 {name=l10 lab=VDD}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {e_load_uniform.sym} 1210 -830 0 0 {name=x1
spice_ignore=true}
C {e_load_uniform_pex.sym} 1100 -440 0 0 {name=x2
}
C {devices/gnd.sym} 90 -230 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -300 0 0 {name=vosc value="PULSE(0 \{VDD\} 500p 10p 10p 500p 1n)"
}
C {devices/lab_wire.sym} 90 -370 0 0 {name=p1 sig_type=std_logic lab=osc}
C {devices/lab_wire.sym} 950 -450 0 1 {name=p14 sig_type=std_logic lab=en[0..7]}
C {bus_tap.sym} 650 -450 0 0 {name=l4 lab=0}
C {bus_tap.sym} 710 -450 0 0 {name=l11 lab=2}
C {bus_tap.sym} 770 -450 0 0 {name=l13 lab=4}
C {bus_tap.sym} 830 -450 0 0 {name=l15 lab=6}
C {bus_tap.sym} 860 -450 0 0 {name=l1 lab=7}
C {bus_tap.sym} 800 -450 0 0 {name=l5 lab=5
}
C {bus_tap.sym} 740 -450 0 0 {name=l12 lab=3
}
C {bus_tap.sym} 680 -450 0 0 {name=l14 lab=1}
C {devices/lab_wire.sym} 600 -480 0 0 {name=p20 sig_type=std_logic lab=enable}
C {devices/lab_wire.sym} 950 -410 0 0 {name=p2 sig_type=std_logic lab=osc}
