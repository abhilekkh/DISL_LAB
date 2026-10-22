module one_b_conti(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign f = ( (b & (~c) & (~d)) |  ((~b) & c) | ((~b) & d));
endmodule	
