`timescale 1ns / 1ps

module d_flipflop(D, clk, Q, Qn);
output Q;
output Qn;
input  clk;
input  D;
wire o1,o2,o3,o4 ; 
nand ( o1, D, o2);
nand (o2, clk, o3,o1);
nand (o3, clk, o4);
nand (o4, o3, o1);
nand (Qn, o2, Q);
nand (Q, Qn, o3);

endmodule
