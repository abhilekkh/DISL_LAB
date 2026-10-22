`timescale 1ns/1ns
`include "comparator.v"
module comparator_tb();
	reg [3:0]a,b;
	wire AgtB,AltB,AeqB;
	comparator o(.a(a),.b(b),.AgtB(AgtB),.AltB(AltB),.AeqB(AeqB));
	initial begin 
		$dumpfile("comparator.vcd");
		$dumpvars(0,comparator_tb);
			
			a=4'b1000;b=4'b0011;#20; // Greater 
			a=4'b1000;b=4'b1011;#20; // Lesser
			a=4'b1000;b=4'b1000;#20; // Equality
		
		$display("Test Complete");
		end
	endmodule

