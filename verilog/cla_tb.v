module CarryLAS_tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
reg clk;
wire [3:0] sumout;
wire [3:0] sumout_ff;
wire [13:0] dum;
wire of; //overflow
wire co;
wire [3:0]input_1;
wire [3:0]input_2;
integer i;


initial	begin
		$dumpfile("CarryLAS_tb.vcd");
		$dumpvars(0,CarryLAS_tb);
	end
   
d_flipflop dff1(a[0],clk,input_1[0], dum[0]);
d_flipflop dff2(b[0],clk,input_2[0], dum[1]);
d_flipflop dff3(a[1],clk,input_1[1], dum[2]);
d_flipflop dff4(b[1],clk,input_2[1], dum[3]);
d_flipflop dff5(a[2],clk,input_1[2], dum[4]);
d_flipflop dff6(b[2],clk,input_2[2], dum[5]);
d_flipflop dff7(a[3],clk,input_1[3], dum[6]);
d_flipflop dff8(b[3],clk,input_2[3], dum[7]);
d_flipflop dff13(cin,clk,ci, dum[12]);


CarryLA_4 CLA(input_1,input_2,ci,sumout,co1);


d_flipflop dff9(sumout[0],clk,sumout_ff[0], dum[8]);
d_flipflop dff10(sumout[1],clk,sumout_ff[1], dum[9]);
d_flipflop dff11(sumout[2],clk,sumout_ff[2], dum[10]);
d_flipflop dff12(sumout[3],clk,sumout_ff[3], dum[11]);
d_flipflop dff14(co1,clk,co, dum[13]);

initial clk = 0;
always #10 clk = ~clk;



initial 
begin
assign cin =0; 
assign a=4'b0101;
assign b=4'b0111;


#20
assign a=4'b1000;
assign b=4'b0111;


#20
assign a=4'b0101;
assign b=4'b0001;
#60
$finish;
end


endmodule


