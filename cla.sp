.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.global gnd vdd
.param Width = 10*LAMBDA

Vmain vdd gnd 1.8V

* ----------------------SUBCKT INV----------------------------
.subckt inv y x vdd_ gnd_  
.param width_N={Width}
.param width_P={2*Width}
M1      y       x       gnd_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2      y       x       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inv
* -------------------------------------------------------------



* ----------------------SUBCKT 2 input NAND----------------------------
.subckt nand2 y a_ b_ vdd_ gnd_  
.param width_N={Width}
.param width_P={2*Width}

* ---------------------- PULL up network --------------//
M1      y       a_       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2      y       b_       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* --------------------- PULL DOWN network------------- //
M3      y       a_       in_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M4      in_       b_       gnd_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends nand2

* -------------------------------------------------------------

* ----------------------SUBCKT 3 input NAND----------------------------
.subckt nand3 y a_ b_ c_ vdd_ gnd_  
.param width_N={3*Width}
.param width_P={2*Width}

* ---------------------- PULL up network --------------//
M1      y       a_       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2      y       b_       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M3      y       c_       vdd_     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* --------------------- PULL DOWN network------------- //
M4      y       a_       in1_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M5      in1_       b_       in2_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M6      in2_       c_       gnd_     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends nand3

* -------------------------------------------------------------

* ----------------------SUBCKT Pass transistor----------------------------
.subckt passgate y d s sb vdd_ gnd_  
.param width_N={Width}
.param width_P={2*Width}

* ---------------------- PULL up network --------------//
M1      y       s       d     vdd_  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M2      y      sb       d     gnd_  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}


.ends passgate

* -------------------------------------------------------------

* ----------------------SUBCKT XOR----------------------------
.subckt xor y a_ b_  vdd_ gnd_  
x1 c a_ b_ vdd gnd nand2
x2 d a_ c vdd gnd nand2
x3 e b_ c vdd gnd nand2
x4 y d e vdd gnd nand2 
.ends xor
* -------------------------------------------------------------

* ----------------------SUBCKT AND ----------------------------
.subckt and y a_ b_  vdd_ gnd_  
x1 c a_ b_ vdd gnd nand2
x2 y c vdd gnd inv
.ends and
* -------------------------------------------------------------

* ----------------------SUBCKT OR ----------------------------
.subckt or y a_ b_  vdd_ gnd_  
x1 c a_ vdd gnd inv
x2 d b_ vdd gnd inv
x3 y c d vdd gnd nand2
.ends or
* -------------------------------------------------------------

*-------------- SUBCKT D FLIP FLOP -------------------
.subckt DFF Q_  D_ clk_ clkb_ vdd_ gnd_
x2 in1 D_ clk_ clkb_ vdd gnd passgate
x3 in2 in1 clkb_ clk_ vdd gnd passgate
x4 out1_ in1 vdd gnd inv
x5 in2 out1_ vdd gnd inv

x6 out1_ in3 clkb_ clk_ vdd gnd passgate
x7 in4 in3 clk_ clkb_ vdd gnd passgate
x8 Q_ in3 vdd gnd inv
x9 in4 Q_ vdd gnd inv
.ends DFF


* .........................................................

Vclk clk gnd pulse 1.8 0 0ns 10ps 10ps 5ns 10ns
x10  clkb clk vdd gnd inv


* * Vd data gnd pulse 0 1.8 0ns 10ps 10ps 7ns 14ns
* *Vd data gnd 1.8V

* xDa1 a1 da1 clk clkb vdd gnd DFF
* xDa2 a2 da2 clk clkb vdd gnd DFF
* xDa3 a3 da3 clk clkb vdd gnd DFF
* xDa4 a4 da4 clk clkb vdd gnd DFF

* xDb1 b1 db1 clk clkb vdd gnd DFF
* xDb2 b2 db2 clk clkb vdd gnd DFF
* xDb3 b3 db3 clk clkb vdd gnd DFF
* xDb4 b4 db4 clk clkb vdd gnd DFF

* Vc0 c0 gnd 0V

* xp1 p1 a1 b1 vdd gnd xor 
* xp2 p2 a2 b2 vdd gnd xor
* xp3 p3 a3 b3 vdd gnd xor
* xp4 p4 a4 b4 vdd gnd xor

* xg1 g1 a1 b1 vdd gnd and
* xg2 g2 a2 b2 vdd gnd and
* xg3 g3 a3 b3 vdd gnd and
* xg4 g4 a4 b4 vdd gnd and

* xp1c0 p1c0 p1 c0 vdd gnd and
* xp2g1 p2g1 p2 g1 vdd gnd and
* xp3g2 p3g2 p3 g2 vdd gnd and
* xp3p2g1 p3p2g1 p3 p2g1 vdd gnd and
* xp4p3p2g1 p4p3p2g1 p4 p3p2g1 vdd gnd and
* xp4p3g2 p4p3g2 p4 p3g2 vdd gnd and
* xp4g3 p4g3 p4 g3 vdd gnd and

* // intermediate nodes
* x31 i31 p3p2g1 p3g2 vdd gnd or
* x41 i41 p4p3p2g1 p4p3g2 vdd gnd or
* x42 i42 i41 p4g3 vdd gnd or

* xc1 c1 p1c0 g1 vdd gnd or
* xc2 c2 p2g1 g2 vdd gnd or
* xc3 c3 i31  g3 vdd gnd or
* xc4 c4 i42  g4 vdd gnd or

* xsum1 sum1 p1 c0 vdd gnd xor
* xsum2 sum2 p2 c1 vdd gnd xor
* xsum3 sum3 p3 c2 vdd gnd xor
* xsum4 sum4 p4 c3 vdd gnd xor

* xDq1 q1  sum1 clk clkb vdd gnd DFF
* xDq2 q2  sum2 clk clkb vdd gnd DFF
* xDq3 q3  sum3 clk clkb vdd gnd DFF
* xDq4 q4  sum4 clk clkb vdd gnd DFF

* xDcout cout c4 clk clkb vdd gnd DFF


* Vda1 da1 gnd 0V
* Vda2 da2 gnd  pwl(0ns 0V 9ns 0V 11ns 1.8V 21ns 1.8V 23ns 0V 40ns 0V)
* Vda3 da3 gnd 0V
* Vda4 da4 gnd  pwl(0ns 0V 9ns 0V 11ns 1.8V 21ns 1.8V 23ns 0V 40ns 0V)

* Vdb1 db1 gnd pwl(0ns 0V 9ns 0V 11ns 1.8V 21ns 1.8V 23ns 0V 40ns 0V)
* Vdb2 db2 gnd 0V
* Vdb3 db3 gnd pwl(0ns 0V 9ns 0V 11ns 1.8V 21ns 1.8V 23ns 0V 40ns 0V)
* Vdb4 db4 gnd 0V



* .......................................................................
Vd d gnd pwl(0ns 0V 20ns 0 22ns 1.8V 40ns 1.8V 42ns 0V 50ns 0V) 

x1 Q d clk clkb vdd gnd DFF
.tran 20ps 40ns
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
    * plot V(a1)
    * plot V(a2)
    * plot V(a3)
    * plot V(a4)
    * plot V(b1)
    * plot V(b2)
    * plot V(b3)
    * plot V(b4)
    * plot V(clk)
    plot V(sum1) 
    plot V(sum2) 
    plot V(sum3) 
    plot V(sum4) 
    * plot V(c4) 
    * plot V(clk)
    * plot V(q3) 

    * plot V(clk)
    * * plot V(clkb)
    * plot V(d) V(Q) V(clk)
    
    * plot V(c1) 
    * plot V(c2) 
    * plot V(c3) 
    * plot V(c4) 
    * plot V(a1) V(a2)
    
  
   
   