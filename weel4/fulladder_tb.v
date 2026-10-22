`timescale 1ns/1ns
`include "fulladder.v" 

module fulladder_tb();
	reg a,b,cin;
	wire sum,carry;
	fulladder o(a,b,cin,sum,carry);
		initial begin
			$dumpfile("fulladder.vcd");
			$dumpvars(0,fulladder_tb);
				a = 1'b0; b = 1'b0; cin = 1'b0; 
				#20;
      		  		a = 1'b0; b = 1'b0; cin = 1'b1; 
      		  		#20;
        			a = 1'b0; b = 1'b1; cin = 1'b0; 
        			#20;
        			a = 1'b0; b = 1'b1; cin = 1'b1; 
        			#20;
        
        			a = 1'b1; b = 1'b0; cin = 1'b0; 
        			#20;
        			a = 1'b1; b = 1'b0; cin = 1'b1; 
        			#20;
        			a = 1'b1; b = 1'b1; cin = 1'b0;
        			#20;
        			a = 1'b1; b = 1'b1; cin = 1'b1; 
        			#20;
			$display("Test complete");
		end
	endmodule
