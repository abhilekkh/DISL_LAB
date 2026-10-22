`timescale 1ns/1ns
`include "flipflopD.v"

module flipflopD_tb();
    reg D, Clk, rst;
    wire Q;

    
    flipflopD f(.D(D), .Clk(Clk), .rst(rst), .Q(Q));

  
    always #5 Clk = ~Clk; 

    initial begin
        $dumpfile("flipflopD.vcd");
        $dumpvars(0, flipflopD_tb);
            
        Clk = 0;
        D = 0;
        rst = 1; 

        #12 rst = 0; 
        #10 D = 1;
        #10 D = 0;
        #20 D = 1;
        #10 rst = 1; 
        #10 rst = 0;
        #20 
        $display("Test Complete!");
        $finish; 
    end
endmodule
