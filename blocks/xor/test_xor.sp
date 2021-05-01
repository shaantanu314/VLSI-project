.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V

M1000 y nand_1/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=800 ps=400
M1001 vdd nand_2/out y Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 nand_3/a_n2_n25# nand_1/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=200 ps=120
M1003 y nand_2/out nand_3/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 nand_2/out nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1005 vdd b nand_2/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 nand_2/a_n2_n25# nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1007 nand_2/out b nand_2/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1008 nand_1/out nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1009 vdd a nand_1/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1010 nand_1/a_n2_n25# nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1011 nand_1/out a nand_1/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1012 nand_0/out a vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=0 ps=0
M1013 vdd b nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 nand_0/a_n2_n25# a gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=0 ps=0
M1015 nand_0/out b nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
C0 gnd nand_0/out 0.0fF
C1 nand_1/out a 0.1fF
C2 vdd y 0.3fF
C3 nand_1/out vdd 0.3fF
C4 nand_2/out vdd 0.3fF
C5 b a 0.1fF
C6 nand_3/a_n2_n25# nand_2/out 0.0fF
C7 nand_0/out b 0.1fF
C8 nand_2/out y 0.1fF
C9 nand_0/out vdd 0.3fF
C10 nand_2/out b 0.1fF
C11 vdd gnd 0.9fF
C12 a gnd 0.4fF
C13 b gnd 0.4fF
C14 nand_0/out gnd 0.8fF
C15 gnd gnd 0.2fF
C16 y gnd 0.1fF
C17 nand_2/out gnd 0.5fF
C18 nand_1/out gnd 0.4fF




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
    plot V(y)
    
    
  