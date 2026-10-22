module two(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nor(a1,a,a);
	nor(b1,b,b);
	nor(c1,c,c);
	nor(d1,d,d);
	
	nor(g,a1,b1);
	nor(h,c1,d1);
	nor(i,b1,d);
	
	nor(f,g,h,i);
endmodule
