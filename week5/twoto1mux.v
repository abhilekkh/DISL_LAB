module twoto1mux(input [1:0]a,input s,output reg f);
	always@(a or s)
	if(s==1'b0)
	   f=a[0];
	else
	   f=a[1];
endmodule	      

