module flipflopD(input D,input Clk,input rst,output reg Q);
	always@(posedge Clk or posedge rst)begin
	if(rst)
		Q<=1'b0;
	else
		Q<=D;
	end
endmodule
