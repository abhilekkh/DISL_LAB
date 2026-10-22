`include "dec3.v"
module dec4to16(input [3:0]w,input En,output [15:0]S);
	wire E1,E2;
	
	assign E1=~w[3]&En;
	assign E2=w[3]&En;
	
	dec3 d0(.W(w[2:0]),.En(E1),.Y(S[7:0]));
	dec3 d1(.W(w[2:0]),.En(E2),.Y(S[15:8]));
endmodule
