module halfadder(a,b,sum,carry);
	input a,b;
	output carry,sum;
	
	assign sum=a^b;
	assign carry=a&b;
	
endmodule
