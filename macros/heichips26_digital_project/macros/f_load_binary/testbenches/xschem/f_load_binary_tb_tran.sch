v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 1460 -680 2260 -280 {flags=graph
y1=-3.1299478
y2=-0.7280278
ypos1=0.240088
ypos2=1.439978
divy=5
subdivy=1
unity=1
x1=2.1553338e-09
x2=7.2748218e-09
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
color=10
node=vosc}
T {Testbench for transient analysis f_load_binary
} 600 -1730 0 0 1 1 {}
N 100 -250 100 -210 {
lab=VDD}
N 100 -150 100 -110 {
lab=GND}
N 1270 -410 1270 -340 {lab=VDD}
N 520 -300 1210 -300 {lab=en[0..4] bus=true}
N 1120 -260 1140 -260 {lab=osc}
N 1140 -280 1140 -260 {lab=osc}
N 1140 -280 1210 -280 {lab=osc}
N 200 -260 200 -220 {lab=osc}
N 200 -160 200 -120 {lab=GND}
N 550 -330 550 -310 {lab=en0}
N 620 -330 620 -310 {lab=en1}
N 690 -330 690 -310 {lab=en2}
N 760 -330 760 -310 {lab=en3}
N 830 -330 830 -310 {lab=en4}
N 550 -470 550 -460 {lab=GND}
N 550 -400 550 -390 {lab=#net1}
N 620 -460 620 -390 {lab=#net2}
N 620 -530 620 -520 {lab=GND}
N 690 -520 690 -390 {lab=#net3}
N 690 -590 690 -580 {lab=GND}
N 760 -580 760 -390 {lab=#net4}
N 760 -650 760 -640 {lab=GND}
N 830 -650 830 -390 {lab=#net5}
N 830 -720 830 -710 {lab=GND}
N 1270 -240 1270 -220 {lab=GND}
C {devices/vsource.sym} 100 -180 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 100 -110 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 100 -250 0 0 {name=l8 lab=VDD}
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
.include ../../../netlist/xspice/f_load_binary.xspice
.include ../../../netlist/pex/f_load_binary_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 12n
let tstep = 10p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(vosc)
plot i(VDD)

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc
*quit
.endc"}
C {devices/gnd.sym} 550 -470 2 0 {name=l9 lab=GND}
C {devices/vsource.sym} 550 -430 2 0 {name=ven0 value="PULSE(0 \{VDD\} 2n 10p 10p 10n 20n)"
}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 1270 -220 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1270 -410 0 0 {name=l10 lab=VDD}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {f_load_binary.sym} 1290 -790 0 0 {name=x1
spice_ignore=true}
C {f_load_binary_pex.sym} 1270 -290 0 0 {name=x2
}
C {devices/lab_wire.sym} 1080 -300 0 1 {name=p14 sig_type=std_logic lab=en[0..4]}
C {bus_tap.sym} 540 -300 0 0 {name=l4 lab=0}
C {bus_tap.sym} 680 -300 0 0 {name=l11 lab=2}
C {bus_tap.sym} 820 -300 0 0 {name=l13 lab=4}
C {bus_tap.sym} 750 -300 0 0 {name=l12 lab=3
}
C {bus_tap.sym} 610 -300 0 0 {name=l14 lab=1}
C {devices/lab_wire.sym} 1120 -260 0 0 {name=p2 sig_type=std_logic lab=osc}
C {devices/gnd.sym} 200 -120 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 200 -190 0 0 {name=vosc value="PULSE(0 \{VDD\} 200p 10p 10p 200p 400p)"
}
C {devices/lab_wire.sym} 200 -260 0 0 {name=p1 sig_type=std_logic lab=osc}
C {res.sym} 550 -360 0 0 {name=R1
value=1m
footprint=1206
device=resistor
m=1}
C {res.sym} 620 -360 0 0 {name=R2
value=1m
footprint=1206
device=resistor
m=1}
C {res.sym} 690 -360 0 0 {name=R3
value=1m
footprint=1206
device=resistor
m=1}
C {res.sym} 760 -360 0 0 {name=R4
value=1m
footprint=1206
device=resistor
m=1}
C {res.sym} 830 -360 0 0 {name=R5
value=1m
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 620 -490 2 0 {name=ven1 value="PULSE(0 \{VDD\} 4n 10p 10p 10n 20n)"
}
C {devices/gnd.sym} 620 -530 2 0 {name=l16 lab=GND}
C {devices/vsource.sym} 690 -550 2 0 {name=ven2 value="PULSE(0 \{VDD\} 6n 10p 10p 10n 20n)"
}
C {devices/gnd.sym} 690 -590 2 0 {name=l17 lab=GND}
C {devices/vsource.sym} 760 -610 2 0 {name=ven3 value="PULSE(0 \{VDD\} 8n 10p 10p 10n 20n)"
}
C {devices/gnd.sym} 760 -650 2 0 {name=l18 lab=GND}
C {devices/vsource.sym} 830 -680 2 0 {name=ven4 value="PULSE(0 \{VDD\} 10n 10p 10p 10n 20n)"
}
C {devices/gnd.sym} 830 -720 2 0 {name=l19 lab=GND}
