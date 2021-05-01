.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V

M1000 out a vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=200 ps=100 
M1001 vdd b out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 a_n2_n25# a gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=50 ps=30
M1003 out b a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 gnd a 0.1fF
C1 b a 0.1fF
C2 out vdd 0.3fF
C3 vdd gnd 0.2fF
C4 b gnd 0.2fF
C5 a gnd 0.2fF


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
    
    
  
   
   