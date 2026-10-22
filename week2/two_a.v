module two_a(a,b,c,d,f);
	input a,b,c,d;
	output f;
	not(b1,b);
	
	or(g,b1,d);
	or(h,b,c);
	
	and(f,g,h);
endmodule
