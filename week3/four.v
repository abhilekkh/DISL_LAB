module four(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nand(a1,a,a);
	nand(b1,b,b);
	nand(d1,d,d);
	
	nand(g,b1,d1);
	nand(h,a1,d);
	
	nand(f,g,h);
endmodule
