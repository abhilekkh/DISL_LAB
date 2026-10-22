`include "halfadder.v"
module multiplier(a,b,f);
	input [1:0]a,b;
	output [3:0]f;
	wire [3:1]m;
	wire carry;
	
	and(f[0],a[0],b[0]);
	and(m[1],a[1],b[0]);
	and(m[2],a[0],b[1]);
	and(m[3],a[1],b[1]);
	
	halfadder ha1(m[1],m[2],f[1],carry);
	halfadder ha2(m[3],carry,f[2],f[3]);
	
endmodule
