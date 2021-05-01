.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vmain vdd gnd 1.8V

M1000 nand_0/out a vdd Vdd CMOSP w=20 l=2
+  ad=240 pd=64 as=340 ps=154
M1001 vdd b nand_0/out Vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 nand_0/a_n2_n25# a gnd Gnd CMOSN w=10 l=2
+  ad=120 pd=44 as=120 ps=64
M1003 nand_0/out b nand_0/a_n2_n25# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 out nand_0/out vdd Vdd CMOSP w=20 l=2
+  ad=140 pd=54 as=0 ps=0
M1005 out nand_0/out gnd Gnd CMOSN w=10 l=2
+  ad=70 pd=34 as=0 ps=0
C0 out nand_0/out 0.0fF
C1 vdd nand_0/out 0.4fF
C2 nand_0/out b 0.1fF
C3 out gnd 0.1fF
C4 gnd gnd 0.2fF
C5 nand_0/out gnd 0.3fF
C6 vdd gnd 0.2fF
C7 b gnd 0.2fF
C8 a gnd 0.2fF


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
    
    
  