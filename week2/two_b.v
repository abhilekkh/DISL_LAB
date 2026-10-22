module two_b(a,b,c,d,f);
	input a,b,c,d;
	output f;
	not(a1,a);
	not(b1,b);
	not(c1,c);
	not(d1,d);
	
	or(g,a1,b1,c);
	or(h,a,b1,c1);
	or(i,a1,b,d);
	or(j,a1,b,c1);
	
	and(f,g,h,i,j);
endmodule
