module three(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nor(a1,a,a);
	nor(c1,c,c);
	nor(d1,d,d);
	
	nor(g,a1,c1);
	
	nor(f,g,d1);
endmodule
