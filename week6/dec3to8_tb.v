`timescale 1ns/1ns
`include "dec3to8.v"
module dec3to8_tb();
	reg En;
	reg [2:0]w;
	wire [7:0]S;
	dec3to8 o(.En(En),.w(w),.S(S));
		initial begin
			$dumpfile("dec3to8.vcd");
			$dumpvars(0,dec3to8_tb);
				 	En = 1;
					w = 3'b000; #20;
					w = 3'b001; #20;
					w = 3'b010; #20;
					w = 3'b011; #20;
					w = 3'b100; #20;
					w = 3'b101; #20;
					w = 3'b110; #20;
					w = 3'b111; #20;
			$display("Test Complete");
		end
	endmodule	
