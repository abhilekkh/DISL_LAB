`timescale 1ns/1ns
`include "fourto1mux.v"
module fourto1mux_tb();
	reg [3:0]a;
	reg [1:0]s;
	wire f;
	fourto1mux o(.a(a),.s(s),.f(f));
	initial begin 
		$dumpfile("fourto1mux.vcd");
		$dumpvars(0,fourto1mux_tb);
			
			a=4'b1010;s=2'b00;#20; 
			a=4'b1010;s=2'b01;#20;
			a=4'b1010;s=2'b10;#20;
			a=4'b1010;s=2'b11;#20;  
		
		$display("Test Complete");
		end
	endmodule

