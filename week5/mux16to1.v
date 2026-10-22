`include "mux4to1.v"
module mux16to1(input [15:0]a,input [3:0]s,output f);
	wire [3:0]M;
	mux4to1 m0(.a(a[3:0]),.s(s[1:0]),.f(M[0]));
	mux4to1 m1(.a(a[7:4]),.s(s[1:0]),.f(M[1]));
	mux4to1 m2(.a(a[11:8]),.s(s[1:0]),.f(M[2]));
	mux4to1 m3(.a(a[15:12]),.s(s[1:0]),.f(M[3]));
	mux4to1 m4(.a(M[3:0]),.s(s[3:2]),.f(f));
endmodule
