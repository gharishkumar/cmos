v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -40 150 -20 {
lab=Vds}
N 150 40 170 40 {
lab=GND}
N 170 10 170 40 {
lab=GND}
N 150 10 170 10 {
lab=GND}
N 150 40 150 80 {
lab=GND}
N 150 -130 150 -40 {
lab=Vds}
C {vsource.sym} -100 60 0 0 {name=Vds value=0}
C {vsource.sym} -20 60 0 0 {name=Vgs value=0}
C {sky130_fd_pr/nfet_01v8.sym} 130 10 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 150 -130 0 0 {name=p1 sig_type=std_logic lab=Vds}
C {lab_pin.sym} -100 30 0 0 {name=p2 sig_type=std_logic lab=Vds}
C {lab_pin.sym} -20 30 0 0 {name=p3 sig_type=std_logic lab=Vgs}
C {gnd.sym} -20 90 0 0 {name=l1 lab=GND}
C {gnd.sym} -100 90 0 0 {name=l2 lab=GND}
C {gnd.sym} 150 80 0 0 {name=l3 lab=GND}
C {code_shown.sym} 340 -20 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.dc Vds 0 1.8 .1m Vgs 0 2 .5
.save all
.end"}
C {lab_pin.sym} 110 10 0 0 {name=p4 sig_type=std_logic lab=Vgs}
