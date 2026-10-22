`include "dec2lowoutput.v"
module dec4lowoutput(input [3:0]w,input En,output [15:0]S);
	wire [3:0]E;
	
	dec2lowoutput d0(.w(w[3:2]),.En(En),.S(E[3:0]));
	dec2lowoutput d1(.w(w[1:0]),.En(E[3]),.S(S[3:0]));
	dec2lowoutput d2(.w(w[1:0]),.En(E[2]),.S(S[7:4]));
	dec2lowoutput d3(.w(w[1:0]),.En(E[1]),.S(S[11:8]));
	dec2lowoutput d4(.w(w[1:0]),.En(E[0]),.S(S[15:12]));
	
endmodule
