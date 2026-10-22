module adderSubtractor(carryin, x,y,s, carryout);
	input carryin;
	input [3:0]x,y;
	output carryout;
	output [3:0]s;
	wire [3:1]c;
	wire [3:0]y1;
	xor(y1[0],y[0],carryin);
	xor(y1[1],y[1],carryin);
	xor(y1[2],y[2],carryin);
	xor(y1[3],y[3],carryin);
	fulladd stage0 (carryin, x[0], y1[0], s[0], c[1]);
	fulladd stage1 (c[1], x[1], y1[1], s[1], c[2]);
	fulladd stage2 (c[2], x[2], y1[2], s[2], c[3]);
	fulladd stage3 (c[3], x[3], y1[3], s[3], carryout);
endmodule

module fulladd (Cin, x, y, s, Cout);
	input Cin, x, y;
	output s, Cout;
	assign s = x ^ y ^ Cin;
	assign Cout = (x & y) | (x & Cin) | (y & Cin);
endmodule

