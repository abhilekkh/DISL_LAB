`timescale 1ns/1ns
`include "mux16to1.v"
module mux16to1_tb();
	reg [15:0]a;
	reg [3:0]s;
	wire f;
	mux16to1 o(.a(a),.s(s),.f(f));
	initial begin 
		$dumpfile("mux16to1.vcd");
		$dumpvars(0,mux16to1_tb);
			
			a=16'd12;s=4'd3;#20; 
			a=16'd13;s=4'd2;#20;
			a=16'd14;s=4'd1;#20;
			a=16'd15;s=4'd0;#20;  
		
		$display("Test Complete");
		end
	endmodule

