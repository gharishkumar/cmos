v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -40 150 -20 {
lab=Vout}
N 150 40 170 40 {
lab=GND}
N 170 10 170 40 {
lab=GND}
N 150 10 170 10 {
lab=GND}
N 150 40 150 80 {
lab=GND}
N 110 -70 110 10 {
lab=Vin}
N 150 -100 170 -100 {
lab=Vcc}
N 170 -100 170 -70 {
lab=Vcc}
N 150 -70 170 -70 {
lab=Vcc}
N 150 -140 150 -100 {
lab=Vcc}
C {vsource.sym} -100 60 0 0 {name=Vcc1 value=1.8 savecurrent=false}
C {vsource.sym} -20 60 0 0 {name=Vcc value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)"}
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -70 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 150 -130 0 0 {name=p1 sig_type=std_logic lab=Vcc}
C {lab_pin.sym} -100 30 0 0 {name=p2 sig_type=std_logic lab=Vcc}
C {lab_pin.sym} -20 30 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 110 -30 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {gnd.sym} -20 90 0 0 {name=l1 lab=GND}
C {gnd.sym} -100 90 0 0 {name=l2 lab=GND}
C {gnd.sym} 150 80 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 150 -30 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {code_shown.sym} 340 -20 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
