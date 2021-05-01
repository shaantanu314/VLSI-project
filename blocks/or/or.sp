.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V


M1000 a_n18_2# a vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=220 ps=102
M1001 a_n18_n20# b a_n18_2# Vdd CMOSP w=20 l=2
+  ad=120 pd=52 as=0 ps=0
M1002 out a_n18_n20# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1003 a_n18_n20# a gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=170 ps=94
M1004 gnd b a_n18_n20# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1005 out a_n18_n20# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 a_n18_n20# vdd 0.3fF
C1 a_n18_n20# out 0.1fF
C2 a_n18_n20# gnd 0.3fF
C3 vdd out 0.2fF
C4 out gnd 0.1fF
C5 a b 0.1fF
C6 b a_n18_n20# 0.1fF
C7 a vdd 0.1fF
C8 b vdd 0.1fF
C9 gnd gnd 0.2fF
C10 out gnd 0.1fF
C11 vdd gnd 0.2fF
C12 a_n18_n20# gnd 0.3fF
C13 b gnd 0.2fF
C14 a gnd 0.2fF



Va a gnd pulse 1.8 0 0ns 10ps 10ps 10ns 20ns
Vb b gnd pulse 1.8 0 0ns 10ps 10ps 20ns 40ns

.tran 20ps 80ns
.control
set hcopypscolor = 1 *White background for saving plots
    set color0 = White
    set color1 = black
    set color2 = blue
    set color3 = red
    set color4 = green
    set color5 = magenta
    set color6 = purple
    run  
    set curplottitle="shaantanu kulkarni  2019102031"
    plot V(a)
    plot V(b)
    plot V(out)
    
    
  