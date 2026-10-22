module dec2lowoutput(input [1:0]w,input En, output reg [3:0]S);
	always@(En or w)
	case({En,w})
	3'b100:S=4'b0111;
	3'b101:S=4'b1011;
	3'b110:S=4'b1101;
	3'b111: S=4'b1110;
	default: S=4'b1111;
	endcase
endmodule	
