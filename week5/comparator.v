module comparator(input [3:0]a,input [3:0]b,output  AgtB,output  AltB, output  AeqB);
	wire [3:0]i;
	
	assign i=~(a^b);
	assign AeqB= &i;
	assign AgtB=(a[3]&(~b[3]))|(i[3]&a[2]&(~b[2]))|(i[3]&i[2]&a[1]&(~b[1]))|			(i[3]&i[2]&i[1]&a[0]&(~b[0]));
	assign AltB=~(AeqB|AgtB);
endmodule
