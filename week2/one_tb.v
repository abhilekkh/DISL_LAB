`timescale 1ns/1ns
`include "one_b_conti.v"

module one_tb();
	reg a,b,c,d;
	wire f;
	
	one_b_conti o(a,b,c,d,f);
	
	initial begin
		$dumpfile("one_b_conti.vcd");
		$dumpvars(0,one_tb);
		
	a=1'b0; b=1'b0; c=1'b0; d=1'b0;
	#20;
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#20;
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#20;
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b1;
	#20;
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#20;
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b1;
	#20;
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b0;
	#20;
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b1;
	#20;
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#20;
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b1;
	#20;
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b0;
	#20;
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b1;
	#20;
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
	#20;
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b1;
	#20;
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b0;
	#20;
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b1;
	#20;
	
	$display("Test complete");
end

endmodule
