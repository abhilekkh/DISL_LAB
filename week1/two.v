module two(a,b,c,d,f,g);
	input a,b,c,d;
	output f,g;
	nand(x,a,b);
	xor(f,x,d,c);
	nor(g,b,c,d);
endmodule	
