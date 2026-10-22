module fulladder(a,b,cin,sum,carry);
	input a,b,cin;
	output carry,sum;
	
	assign sum=a^b^cin;
	assign carry=a&b|b&cin|cin&a;
	
endmodule
