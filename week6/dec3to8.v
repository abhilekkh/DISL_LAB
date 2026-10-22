`include "dec2to4.v"
module dec3to8(input [2:0]w,input En,output [7:0]S);
	wire E1,E2;
	
	assign E1=~w[2]&En;
	assign E2=w[2]&En;
	
	dec2to4 d0(.w(w[1:0]),.En(E1),.S(S[3:0]));
	dec2to4 d1(.w(w[1:0]),.En(E2),.S(S[7:4]));
endmodule
