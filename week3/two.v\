module one(a,b,c,d,f);
	input a,b,c,d;
	output f;
	nand(a1,a,a);
	nand(c1,c,c);
	
	nand(g,a1,c1);
	nand(h,a1,d);
	nand(i,b,c1);
	nand(j,b,d);
	
	nand(f,g,h,i,j);
endmodule
