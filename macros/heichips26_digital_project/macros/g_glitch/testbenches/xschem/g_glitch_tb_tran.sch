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
T {Testbench for transient analysis g_glitch
} 600 -1730 0 0 1 1 {}
N 150 -300 150 -260 {
lab=VDD}
N 150 -200 150 -160 {
lab=GND}
N 1350 -440 1350 -370 {lab=VDD}
N 1350 -270 1350 -240 {lab=GND}
N 710 -330 1290 -330 {lab=en[0..7] bus=true}
N 980 -360 980 -340 {lab=en5}
N 780 -360 780 -340 {lab=en1}
N 930 -360 930 -340 {lab=en4}
N 880 -360 880 -340 {lab=en3}
N 830 -360 830 -340 {lab=en2}
N 730 -360 730 -340 {lab=en0}
N 1080 -360 1080 -340 {lab=en7}
N 1030 -360 1030 -340 {lab=en6}
N 1200 -290 1220 -290 {lab=osc}
N 1220 -310 1220 -290 {lab=osc}
N 1220 -310 1290 -310 {lab=osc}
N 1080 -470 1080 -420 {lab=VDD}
N 880 -440 880 -420 {lab=GND}
N 930 -440 930 -420 {lab=GND}
N 980 -440 980 -420 {lab=GND}
N 1030 -440 1030 -420 {lab=GND}
N 830 -550 830 -420 {lab=#net1}
N 780 -490 780 -420 {lab=#net2}
N 730 -430 730 -420 {lab=#net3}
N 730 -500 730 -490 {lab=GND}
N 780 -560 780 -550 {lab=GND}
N 830 -620 830 -610 {lab=GND}
N 320 -310 320 -270 {lab=osc}
N 320 -210 320 -170 {lab=GND}
C {devices/vsource.sym} 150 -230 0 0 {name=VDD value="\{VDD\}"}
C {devices/gnd.sym} 150 -160 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 150 -300 0 0 {name=l8 lab=VDD}
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
.include ../../../netlist/xspice/g_glitch.xspice
.include ../../../netlist/pex/g_glitch_magic_pex_3.spice
.param VDD=1.5
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 15n
let tstep = 10p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(osc)
plot i(VDD)

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc
*quit
.endc"}
C {devices/gnd.sym} 730 -500 2 0 {name=l9 lab=GND}
C {devices/vsource.sym} 730 -460 2 0 {name=ven1 value="PULSE(0 \{VDD\} 5n 10p 10p 20n 40n)"
}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 1350 -240 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1350 -440 0 0 {name=l10 lab=VDD}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {g_glitch.sym} 1210 -830 0 0 {name=x1
spice_ignore=true}
C {g_glitch_pex.sym} 1350 -320 0 0 {name=x2
}
C {devices/lab_wire.sym} 1200 -330 0 1 {name=p14 sig_type=std_logic lab=en[0..7]}
C {bus_tap.sym} 720 -330 0 0 {name=l4 lab=0}
C {bus_tap.sym} 820 -330 0 0 {name=l11 lab=2}
C {bus_tap.sym} 920 -330 0 0 {name=l13 lab=4}
C {bus_tap.sym} 1020 -330 0 0 {name=l15 lab=6}
C {bus_tap.sym} 1070 -330 0 0 {name=l1 lab=7}
C {bus_tap.sym} 970 -330 0 0 {name=l5 lab=5
}
C {bus_tap.sym} 870 -330 0 0 {name=l12 lab=3
}
C {bus_tap.sym} 770 -330 0 0 {name=l14 lab=1}
C {devices/lab_wire.sym} 1200 -290 0 0 {name=p2 sig_type=std_logic lab=osc}
C {res.sym} 730 -390 0 0 {name=R1
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 780 -390 0 0 {name=R2
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 830 -390 0 0 {name=R3
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 880 -390 0 0 {name=R4
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 930 -390 0 0 {name=R5
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 980 -390 0 0 {name=R6
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 1030 -390 0 0 {name=R7
value=10m
footprint=1206
device=resistor
m=1}
C {res.sym} 1080 -390 0 0 {name=R8
value=10m
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1080 -470 0 0 {name=l16 lab=VDD}
C {devices/vsource.sym} 780 -520 2 0 {name=ven2 value="PULSE(0 \{VDD\} 10n 10p 10p 20n 40n)"
}
C {devices/gnd.sym} 780 -560 2 0 {name=l2 lab=GND}
C {devices/vsource.sym} 830 -580 2 0 {name=ven3 value="PULSE(0 \{VDD\} 15n 10p 10p 20n 40n)"
}
C {devices/gnd.sym} 830 -620 2 0 {name=l17 lab=GND}
C {devices/gnd.sym} 880 -440 2 0 {name=l18 lab=GND}
C {devices/gnd.sym} 930 -440 2 0 {name=l19 lab=GND}
C {devices/gnd.sym} 980 -440 2 0 {name=l20 lab=GND}
C {devices/gnd.sym} 1030 -440 2 0 {name=l21 lab=GND}
C {devices/gnd.sym} 320 -170 0 0 {name=l22 lab=GND}
C {devices/vsource.sym} 320 -240 0 0 {name=vosc value="PULSE(0 \{VDD\} 500p 10p 10p 500p 1n)"
}
C {devices/lab_wire.sym} 320 -310 0 0 {name=p1 sig_type=std_logic lab=osc}
