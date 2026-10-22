`include "mux8to1.v"
`include "twoto1mux.v"
module mux16(input [15:0]a,input [3:0]s,output f);
	wire [1:0]M;
	mux8to1 m0(.a(a[7:0]),.s(s[2:0]),.f(M[0]));
	mux8to1 m1(.a(a[15:8]),.s(s[2:0]),.f(M[1]));
	twoto1mux m2(.a(M),.s(s[3]),.f(f));
endmodule
