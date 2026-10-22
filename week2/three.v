module three(a,b,c,d,f);
	input a,b,c,d;
	output f;
	 
	and(h,a,b,c);
	and(i,a,b,d);
	and(j,a,c,d);
	and(k,b,c,d);
	
	or(f,h,i,j,k);
	 
endmodule
