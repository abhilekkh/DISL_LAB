`timescale 1ns/1ns
`include "ring4.v"
module ring4_tb;
    reg clk;
    reg rst;
    wire [3:0] q;

    
    ring4 uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

  
    always #5 clk = ~clk;

    initial begin
       
        $dumpfile("ring4.vcd");
        $dumpvars(0, ring4_tb);

     
        clk = 0;
        rst = 1;
        #12;
        rst = 0;

      
        #100;
        $finish;
    end
endmodule
