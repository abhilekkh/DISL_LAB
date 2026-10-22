module dec2to4(input [1:0]w,input En, output reg [3:0]S);
	always@(En or w)
	if(En==0)
		S=4'b0000;
	else if({En,w}==3'b100)
		S=4'b1000;
	else if({En,w}==3'b101)
		S=4'b0100;
	else if({En,w}==3'b110)
		S=4'b0010;	
	else 
		S=4'b0001;
endmodule	
