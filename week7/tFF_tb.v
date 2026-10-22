`timescale 1ns/1ns
`include "tFF.v"

module tFF_tb();
    reg T, clk, rst_n;
    wire Q;

    
    tFF f(.T(T), .clk(clk), .rst_n(rst_n), .Q(Q));

  
    always #5 clk = ~clk; 

    initial begin
        $dumpfile("tFF.vcd");
        $dumpvars(0, tFF_tb);
            
        clk = 0;
        T= 0;
        rst_n = 1; 

        #12 rst_n = 0; 
        #10 T= 1;
        #10 T = 0;
        #20 T = 1;
        #10 rst_n = 1; 
        #10 rst_n = 0;
        #20 
        $display("Test Complete!");
        $finish; 
    end
endmodule
