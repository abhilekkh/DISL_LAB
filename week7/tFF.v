module tFF(input T, input clk, input rst_n,output reg Q);
	always@(negedge clk or negedge rst_n)begin
	if (!rst_n)
            Q <= 1'b0;      
        else if (T)
            Q <= ~Q;        
        else
            Q <= Q;
	end
endmodule
