module one_a_conti(a,b,c,d,f);
	input a,b,c,d;
	output f;
	assign f = ( (b & (~c) & (~d)) | (c &d ) | ((~a) & b) | ((~b) & c));
endmodule	
