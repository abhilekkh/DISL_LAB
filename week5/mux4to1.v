module mux4to1(input [3:0]a,input [1:0]s,output f);
	assign f= s[1]?(s[0]?a[3]:a[2]):(s[0]?a[1]:a[0]);
endmodule
