`timescale 1ns/1ns
`include "dec2to4.v"
module dec2to4_tb();
	reg En;
	reg [1:0]w;
	wire [3:0]S;
	dec2to4 o(.En(En),.w(w),.S(S));
		initial begin
			$dumpfile("dec2to4.vcd");
			$dumpvars(0,dec2to4_tb);
				w=0;En=1;
				#20
				w=1;En=1;
				#20;
				w=2;En=1;
				#20;
				w=3;En=1;
				#20;
			$display("test Complete");
		end
	endmodule	
