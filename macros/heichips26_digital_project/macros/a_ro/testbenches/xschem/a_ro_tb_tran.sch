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
N 940 -420 1040 -420 {lab=invsel[0..5]}
N 500 -200 500 -160 {lab=invsel0}
N 600 -200 600 -160 {lab=invsel1}
N 700 -200 700 -160 {lab=invsel2}
N 800 -200 800 -160 {lab=invsel3}
N 900 -200 900 -160 {lab=invsel4}
N 1000 -200 1000 -160 {lab=invsel5}
N 1160 -420 1180 -420 {lab=osc_tap[0..7]}
N 1340 -440 1340 -400 {lab=osc_tap[0..7]}
N 1340 -340 1340 -320 {lab=GND}
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
C {code_shown.sym} -540 -1480 0 0 {name=NGSPICE
only_toplevel=false
value="
.include ../../../netlist/xspice/a_ro.xspice
.include ../../../netlist/pex/a_ro_magic_pex_3.spice
.param VDD=1.2
* Setting under test: tap select 0..63 (loop = 3 + 16*INVSEL inverters)
.param INVSEL=63
.param temp=27
.options klu method=gear reltol=1e-4 abstol=1e-12 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 500n
let tstep = 1500p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
* 'uic' is needed (the PEX operating point does not converge). The chain starts unsettled, so
* enable stays low for 100 ns (> 1011 stages * t_inv); otherwise several edges circulate after enable.
save v(enable) v(vosc) v(osc_tap0) v(osc_tap1) v(osc_tap2) v(osc_tap3) v(osc_tap4) v(osc_tap5) v(osc_tap6) v(osc_tap7)
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(enable) v(vosc)

* Skip the first edge after enable; two consecutive periods must match (single edge in the loop)
meas tran t_rise1 when v(vosc)=0.6 rise=2
meas tran t_rise2 when v(vosc)=0.6 rise=3
meas tran t_rise3 when v(vosc)=0.6 rise=4
let T_osc = t_rise2 - t_rise1
let T_osc2 = t_rise3 - t_rise2
let f_osc = 1/T_osc
print T_osc T_osc2
print f_osc

* Intermediate taps: every tap must toggle at the RO frequency (check for invsel=0 and invsel=63).
* td=100n: count only edges after enable, the taps also toggle while the chain settles.
meas tran t_tap0_r2 when v(osc_tap0)=0.6 rise=2 td=100n
meas tran t_tap0_r3 when v(osc_tap0)=0.6 rise=3 td=100n
let f_tap0 = 1/(t_tap0_r3 - t_tap0_r2)
meas tran t_tap1_r2 when v(osc_tap1)=0.6 rise=2 td=100n
meas tran t_tap1_r3 when v(osc_tap1)=0.6 rise=3 td=100n
let f_tap1 = 1/(t_tap1_r3 - t_tap1_r2)
meas tran t_tap2_r2 when v(osc_tap2)=0.6 rise=2 td=100n
meas tran t_tap2_r3 when v(osc_tap2)=0.6 rise=3 td=100n
let f_tap2 = 1/(t_tap2_r3 - t_tap2_r2)
meas tran t_tap3_r2 when v(osc_tap3)=0.6 rise=2 td=100n
meas tran t_tap3_r3 when v(osc_tap3)=0.6 rise=3 td=100n
let f_tap3 = 1/(t_tap3_r3 - t_tap3_r2)
meas tran t_tap4_r2 when v(osc_tap4)=0.6 rise=2 td=100n
meas tran t_tap4_r3 when v(osc_tap4)=0.6 rise=3 td=100n
let f_tap4 = 1/(t_tap4_r3 - t_tap4_r2)
meas tran t_tap5_r2 when v(osc_tap5)=0.6 rise=2 td=100n
meas tran t_tap5_r3 when v(osc_tap5)=0.6 rise=3 td=100n
let f_tap5 = 1/(t_tap5_r3 - t_tap5_r2)
meas tran t_tap6_r2 when v(osc_tap6)=0.6 rise=2 td=100n
meas tran t_tap6_r3 when v(osc_tap6)=0.6 rise=3 td=100n
let f_tap6 = 1/(t_tap6_r3 - t_tap6_r2)
meas tran t_tap7_r2 when v(osc_tap7)=0.6 rise=2 td=100n
meas tran t_tap7_r3 when v(osc_tap7)=0.6 rise=3 td=100n
let f_tap7 = 1/(t_tap7_r3 - t_tap7_r2)
print f_tap0 f_tap1 f_tap2 f_tap3 f_tap4 f_tap5 f_tap6 f_tap7

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc osc_tap0 osc_tap1 osc_tap2 osc_tap3 osc_tap4 osc_tap5 osc_tap6 osc_tap7
*quit
.endc"}
C {devices/gnd.sym} 420 -240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 420 -310 0 0 {name=ven value="PULSE(0 \{VDD\} 100n 10p 10p 500n )"
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
C {devices/lab_wire.sym} 940 -420 0 0 {name=p20 sig_type=std_logic lab=invsel[0..5]}
C {devices/lab_wire.sym} 500 -200 0 0 {name=p30 sig_type=std_logic lab=invsel0}
C {devices/vsource.sym} 500 -130 0 0 {name=Vinvsel0 value="\{VDD*(INVSEL-2*floor(INVSEL/2))\}"}
C {devices/gnd.sym} 500 -100 0 0 {name=l30 lab=GND}
C {devices/lab_wire.sym} 600 -200 0 0 {name=p31 sig_type=std_logic lab=invsel1}
C {devices/vsource.sym} 600 -130 0 0 {name=Vinvsel1 value="\{VDD*(floor(INVSEL/2)-2*floor(INVSEL/4))\}"}
C {devices/gnd.sym} 600 -100 0 0 {name=l31 lab=GND}
C {devices/lab_wire.sym} 700 -200 0 0 {name=p32 sig_type=std_logic lab=invsel2}
C {devices/vsource.sym} 700 -130 0 0 {name=Vinvsel2 value="\{VDD*(floor(INVSEL/4)-2*floor(INVSEL/8))\}"}
C {devices/gnd.sym} 700 -100 0 0 {name=l32 lab=GND}
C {devices/lab_wire.sym} 800 -200 0 0 {name=p33 sig_type=std_logic lab=invsel3}
C {devices/vsource.sym} 800 -130 0 0 {name=Vinvsel3 value="\{VDD*(floor(INVSEL/8)-2*floor(INVSEL/16))\}"}
C {devices/gnd.sym} 800 -100 0 0 {name=l33 lab=GND}
C {devices/lab_wire.sym} 900 -200 0 0 {name=p34 sig_type=std_logic lab=invsel4}
C {devices/vsource.sym} 900 -130 0 0 {name=Vinvsel4 value="\{VDD*(floor(INVSEL/16)-2*floor(INVSEL/32))\}"}
C {devices/gnd.sym} 900 -100 0 0 {name=l34 lab=GND}
C {devices/lab_wire.sym} 1000 -200 0 0 {name=p35 sig_type=std_logic lab=invsel5}
C {devices/vsource.sym} 1000 -130 0 0 {name=Vinvsel5 value="\{VDD*(floor(INVSEL/32)-2*floor(INVSEL/64))\}"}
C {devices/gnd.sym} 1000 -100 0 0 {name=l35 lab=GND}
C {devices/lab_wire.sym} 1180 -420 2 0 {name=p14 sig_type=std_logic lab=osc_tap[0..7]}
C {devices/lab_wire.sym} 1340 -440 0 0 {name=p15 sig_type=std_logic lab=osc_tap[0..7]}
C {capa.sym} 1340 -370 0 0 {name=C2[0..7]
m=1
value=10.0f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1340 -320 0 0 {name=l2 lab=GND}
