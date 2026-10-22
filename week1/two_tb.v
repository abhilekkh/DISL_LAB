`timescale 1ns/1ns
`include "twoA.v" //Name of the Verilog file
module two_tb();
reg a, b, c, d; //Input
wire f,g; //Output

twoA ex2(a, b, c, d, f, g); //Instantiation of the module
initial
begin
	$dumpfile("two_tb.vcd");
	$dumpvars(0, two_tb);
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
