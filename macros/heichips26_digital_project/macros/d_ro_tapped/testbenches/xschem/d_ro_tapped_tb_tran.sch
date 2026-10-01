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
x1=2.2104102e-08
x2=2.4493306e-08
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
color="12 21 4"
node="enable
vosc
vosc_pex"}
T {Testbench for transient analysis d_ro_tapped

} 250 -1750 0 0 1 1 {}
N 190 -600 190 -560 {
lab=VDD}
N 190 -500 190 -460 {
lab=GND}
N 190 -380 190 -340 {lab=enable}
N 190 -280 190 -240 {lab=GND}
N 1100 -560 1100 -490 {lab=VDD}
N 1100 -390 1100 -320 {lab=GND}
N 1200 -440 1220 -440 {lab=vosc}
N 1200 -340 1200 -320 {lab=GND}
N 1200 -440 1200 -400 {lab=vosc}
N 1160 -440 1200 -440 {lab=vosc}
N 1020 -450 1040 -450 {lab=enable}
N 1020 -420 1040 -420 {lab=ffsel[0..1]}
N 1020 -420 1020 -380 {lab=ffsel[0..1]}
N 940 -380 1020 -380 {lab=ffsel[0..1]}
N 940 -430 1040 -430 {lab=invsel[0..4]}
N 300 -340 300 -300 {lab=ffsel0}
N 400 -340 400 -300 {lab=ffsel1}
N 500 -340 500 -300 {lab=invsel0}
N 600 -340 600 -300 {lab=invsel1}
N 700 -340 700 -300 {lab=invsel2}
N 800 -340 800 -300 {lab=invsel3}
N 900 -340 900 -300 {lab=invsel4}
N 1100 -860 1100 -790 {lab=VDD}
N 1100 -690 1100 -620 {lab=GND}
N 1200 -740 1220 -740 {lab=vosc_pex}
N 1200 -640 1200 -620 {lab=GND}
N 1200 -740 1200 -700 {lab=vosc_pex}
N 1160 -740 1200 -740 {lab=vosc_pex}
N 1020 -750 1040 -750 {lab=enable}
N 1020 -720 1040 -720 {lab=ffsel[0..1]}
N 1020 -720 1020 -680 {lab=ffsel[0..1]}
N 940 -680 1020 -680 {lab=ffsel[0..1]}
N 940 -730 1040 -730 {lab=invsel[0..4]}
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
.param VDD=1.2
* Setting under test: tap select (0..31, loop = 15 + 4*INVSEL inverters) and divider select (0..3, osc = RO / 2^FFSEL)
.param INVSEL=31
.param FFSEL=3
.param temp=27
.options klu method=gear reltol=1e-5 abstol=1e-13 gmin=1e-15
.control

set num_threads=8

*save all

* User Constants
let tstop = 400n
let tstep = 1500p

* Operating Point Analysis
*op
*remzerovec
*write @schname\\\\.raw
*set appendwrite

* Transient Analysis
save v(enable) v(vosc) v(vosc_pex)
tran $&tstep $&tstop 1n uic
write @schname\\\\.raw

plot v(enable) v(vosc) v(vosc_pex)

* XSPICE model (x3)
meas tran t_rise1 when v(vosc)=0.6 rise=1
meas tran t_rise2 when v(vosc)=0.6 rise=2
let T_osc = t_rise2 - t_rise1
let f_osc = 1/T_osc
print T_osc
print f_osc

* PEX netlist (x1), skip the first edge after enable; two consecutive periods must match (single edge in the loop)
meas tran t_rise1_pex when v(vosc_pex)=0.6 rise=2
meas tran t_rise2_pex when v(vosc_pex)=0.6 rise=3
meas tran t_rise3_pex when v(vosc_pex)=0.6 rise=4
let T_osc_pex = t_rise2_pex - t_rise1_pex
let T_osc_pex2 = t_rise3_pex - t_rise2_pex
let f_osc_pex = 1/T_osc_pex
print T_osc_pex T_osc_pex2
print f_osc_pex

* Writing Data
unset appendwrite
set wr_vecnames
set wr_singlescale
wrdata ../plot_simulations/data/@schname\\\\.txt enable vosc vosc_pex
*quit
.endc"}
C {devices/gnd.sym} 190 -240 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 190 -310 0 0 {name=ven value="PULSE(0 \{VDD\} 30n 10p 10p 350n)"
}
C {devices/lab_wire.sym} 190 -380 0 0 {name=p11 sig_type=std_logic lab=enable}
C {devices/launcher.sym} 1700 -1530 0 0 {name=h3
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/lab_wire.sym} 1220 -440 2 0 {name=p10 sig_type=std_logic lab=vosc}
C {devices/gnd.sym} 1100 -320 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1100 -560 0 0 {name=l10 lab=VDD}
C {devices/lab_wire.sym} 1020 -450 0 0 {name=p13 sig_type=std_logic lab=enable}
C {devices/code_shown.sym} 2000 -1590 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"}
C {d_ro_tapped_pex.sym} 1100 -740 0 0 {name=x1}
C {capa.sym} 1200 -370 0 0 {name=C1
m=1
value=10.0f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -320 0 0 {name=l1 lab=GND}
C {d_ro_tapped.sym} 1100 -440 0 0 {name=x3}
C {devices/lab_wire.sym} 940 -380 0 0 {name=p20 sig_type=std_logic lab=ffsel[0..1]}
C {devices/lab_wire.sym} 940 -430 0 0 {name=p21 sig_type=std_logic lab=invsel[0..4]}
C {devices/lab_wire.sym} 300 -340 0 0 {name=p30 sig_type=std_logic lab=ffsel0}
C {devices/vsource.sym} 300 -270 0 0 {name=Vffsel0 value="\{VDD*(FFSEL-2*floor(FFSEL/2))\}"}
C {devices/gnd.sym} 300 -240 0 0 {name=l30 lab=GND}
C {devices/lab_wire.sym} 400 -340 0 0 {name=p31 sig_type=std_logic lab=ffsel1}
C {devices/vsource.sym} 400 -270 0 0 {name=Vffsel1 value="\{VDD*(floor(FFSEL/2)-2*floor(FFSEL/4))\}"}
C {devices/gnd.sym} 400 -240 0 0 {name=l31 lab=GND}
C {devices/lab_wire.sym} 500 -340 0 0 {name=p32 sig_type=std_logic lab=invsel0}
C {devices/vsource.sym} 500 -270 0 0 {name=Vinvsel0 value="\{VDD*(INVSEL-2*floor(INVSEL/2))\}"}
C {devices/gnd.sym} 500 -240 0 0 {name=l32 lab=GND}
C {devices/lab_wire.sym} 600 -340 0 0 {name=p33 sig_type=std_logic lab=invsel1}
C {devices/vsource.sym} 600 -270 0 0 {name=Vinvsel1 value="\{VDD*(floor(INVSEL/2)-2*floor(INVSEL/4))\}"}
C {devices/gnd.sym} 600 -240 0 0 {name=l33 lab=GND}
C {devices/lab_wire.sym} 700 -340 0 0 {name=p34 sig_type=std_logic lab=invsel2}
C {devices/vsource.sym} 700 -270 0 0 {name=Vinvsel2 value="\{VDD*(floor(INVSEL/4)-2*floor(INVSEL/8))\}"}
C {devices/gnd.sym} 700 -240 0 0 {name=l34 lab=GND}
C {devices/lab_wire.sym} 800 -340 0 0 {name=p35 sig_type=std_logic lab=invsel3}
C {devices/vsource.sym} 800 -270 0 0 {name=Vinvsel3 value="\{VDD*(floor(INVSEL/8)-2*floor(INVSEL/16))\}"}
C {devices/gnd.sym} 800 -240 0 0 {name=l35 lab=GND}
C {devices/lab_wire.sym} 900 -340 0 0 {name=p36 sig_type=std_logic lab=invsel4}
C {devices/vsource.sym} 900 -270 0 0 {name=Vinvsel4 value="\{VDD*(floor(INVSEL/16)-2*floor(INVSEL/32))\}"}
C {devices/gnd.sym} 900 -240 0 0 {name=l36 lab=GND}
C {devices/vdd.sym} 1100 -860 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 1100 -620 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 1220 -740 2 0 {name=p1 sig_type=std_logic lab=vosc_pex}
C {capa.sym} 1200 -670 0 0 {name=C2
m=1
value=10.0f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1200 -620 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} 1020 -750 0 0 {name=p2 sig_type=std_logic lab=enable}
C {devices/lab_wire.sym} 940 -680 0 0 {name=p3 sig_type=std_logic lab=ffsel[0..1]}
C {devices/lab_wire.sym} 940 -730 0 0 {name=p4 sig_type=std_logic lab=invsel[0..4]}
