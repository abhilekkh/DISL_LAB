module one(a,b,c,d,f);
	input a,b,c,d;
	output f;
	and(p,a,b);
	or(q,p,c);
	not(q1,q);
	and(r,q1,d);
	or(s,q,d);
	and(f,s,r);
endmodule	
