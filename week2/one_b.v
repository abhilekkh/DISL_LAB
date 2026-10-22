module one_b(a,b,c,d,f);
	input a,b,c,d;
	output f;
	not(b1,b);
	not(c1,c);
	not(d1,d);
	
	and(g,b,c1,d1);
	and(h,b1,c);
	and(i,b1,d);
	
	or(f,g,h,i);
endmodule
