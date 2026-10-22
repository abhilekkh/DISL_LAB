`include "twoto1mux.v"
module fourto1mux(input [3:0]a,input [1:0]s,output f);
	wire [1:0]M;
	twoto1mux stage0(.a(a[1:0]),.s(s[0]),.f(M[0]));
	twoto1mux stage1(.a(a[3:2]),.s(s[0]),.f(M[1]));
	twoto1mux stage2(.a(M),.s(s[1]),.f(f));
endmodule
