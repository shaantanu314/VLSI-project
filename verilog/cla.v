module CarryLA_4(a,b,ci,sum,co);

input [3:0] a,b;
input ci; 

output [3:0] sum;
output co;

wire[3:0] g,p,cout;
wire G0,P0;
wire[9:0] w;


// Calculation of Propagate signal Pi
xor x0(p[0],a[0],b[0]);
xor x1(p[1],a[1],b[1]);
xor x2(p[2],a[2],b[2]);
xor x3(p[3],a[3],b[3]);

// Calculation of Generate signal Gi
and a0(g[0],a[0],b[0]); 
and a1(g[1],a[1],b[1]); 
and a2(g[2],a[2],b[2]); 
and a3(g[3],a[3],b[3]); 


and and0(w[0],p[0],ci);
or or0(cout[0],g[0],w[0]);

and and1(w[1],p[1],p[0],ci);
and and2(w[2],p[1],g[0]);
or or1(cout[1],g[1],w[2],w[1]);

and and3(w[3],p[2],p[1],p[0],ci);
and and4(w[4],p[2],p[1],g[0]);
and and5(w[5],p[2],g[1]);
or or2(cout[2],g[2],w[5],w[4],w[3]);

and and6(w[6],p[3],p[2],p[1],g[0]);
and and7(w[7],p[3],p[2],g[1]);
and and8(w[8],p[3],p[2],p[1],p[0],ci);
and and9(w[9],p[3],g[2]);
or or3(cout[3],g[3],w[9],w[8],w[7],w[6]);

and and10(co,cout[3],1);

// Calculation of Sum bits
xor xor0(sum[0],p[0],ci);
xor xor1(sum[1],p[1],cout[0]);
xor xor2(sum[2],p[2],cout[1]);
xor xor3(sum[3],p[3],cout[2]);

endmodule
