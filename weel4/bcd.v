
module bcd(a,b,corrected_sum);
	input [3:0]a,b;
	output [4:0]corrected_sum;
	
	wire [4:0]sum;
	assign sum=a+b;
	
	assign corrected_sum = (sum > 5'b01001) ? (sum + 5'b00110) : sum;
	
endmodule
