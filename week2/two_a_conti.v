module two_a_conti(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign f = (  ((~b) | d) & (b | c));
endmodule	
