.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V


M1000 a_n92_87# clk D Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1001 a_n33_38# a_n92_87# vdd Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=500 ps=250
M1002 a_n1_75# clk a_n33_38# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=100 ps=60
M1003 Q a_n1_75# vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1004 a_n33_38# a_n92_87# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=250 ps=150
M1005 a_n92_87# a_n119_11# D Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=50 ps=30
M1006 a_n55_54# clk a_n92_87# Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1007 Q a_n1_75# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1008 a_n55_54# a_n119_11# a_n92_87# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1009 gnd a_n33_38# a_n55_54# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 a_n1_75# a_n119_11# a_n33_38# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1011 a_36_38# clk a_n1_75# Vdd CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1012 gnd Q a_36_38# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=100 ps=60
M1013 a_n119_11# clk vdd Vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1014 vdd a_n33_38# a_n55_54# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 a_36_38# a_n119_11# a_n1_75# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 vdd Q a_36_38# Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1017 a_n119_11# clk gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 a_n33_38# a_n1_75# 0.3fF
C1 vdd a_n119_11# 0.3fF
C2 gnd Q 0.4fF
C3 gnd a_n119_11# 0.1fF
C4 vdd a_n55_54# 0.2fF
C5 vdd a_n92_87# 0.1fF
C6 a_n1_75# Q 0.1fF
C7 a_n33_38# a_n119_11# 0.1fF
C8 gnd a_n55_54# 0.2fF
C9 vdd clk 0.1fF
C10 gnd a_n92_87# 0.0fF
C11 a_n1_75# a_n119_11# 0.1fF
C12 a_n33_38# a_n55_54# 0.1fF
C13 a_n92_87# a_n33_38# 0.1fF
C14 gnd clk 0.0fF
C15 a_n33_38# clk 0.1fF
C16 a_n1_75# clk 0.1fF
C17 a_36_38# vdd 0.2fF
C18 a_36_38# gnd 0.1fF
C19 a_n92_87# a_n119_11# 0.1fF
C20 a_n119_11# clk 0.1fF
C21 a_n92_87# a_n55_54# 0.3fF
C22 vdd a_n33_38# 0.3fF
C23 a_36_38# a_n1_75# 0.3fF
C24 a_n92_87# clk 0.1fF
C25 vdd a_n1_75# 0.1fF
C26 a_36_38# Q 0.1fF
C27 gnd a_n33_38# 0.4fF
C28 vdd Q 0.3fF
C29 gnd a_n1_75# 0.0fF
C30 gnd gnd 0.2fF
C31 vdd gnd 0.3fF
C32 a_36_38# gnd 0.2fF
C33 clk gnd 0.8fF
C34 a_n55_54# gnd 0.2fF
C35 a_n119_11# gnd 1.6fF
C36 Q gnd 0.4fF
C37 a_n1_75# gnd 0.8fF
C38 a_n33_38# gnd 0.6fF
C39 a_n92_87# gnd 1.1fF



Va D gnd pwl(0ns 0V 7ns 0V 7ns 1.8V 15ns 1.8V 15ns 0V 45ns 0V 45ns 1.8V 60ns 1.8V)
Vb clk gnd pulse 1.8 0 0ns 10ps 10ps 10ns 20ns

.tran 20ps 60ns
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
    plot V(q) V(D) V(clk)
   
    
    
  