`timescale 1ns/1ns
`include "jkFF.v"

module jkFF_tb();
    reg j, k, clk, rst;
    wire Q;

    jkFF uut (
        .j(j), 
        .k(k), 
        .clk(clk), 
        .rst(rst), 
        .Q(Q)
    );

    always #5 clk = ~clk; 

    initial begin
        $dumpfile("jkFF.vcd");
        $dumpvars(0, jkFF_tb);

        clk = 0;
        j = 0;
        k = 0;
        rst = 1;

        #12 rst = 0;

        #10 j = 1; k = 0; 
        #10 j = 0; k = 0; 
        #10 j = 0; k = 1; 
        #10 j = 1; k = 1; 
        #20;

        #2 rst = 1;  
        #15 rst = 0; 

        #20;
        $display("Test Complete!");
        $finish;
    end

    initial begin
        $monitor("Time=%0t | rst=%b | j=%b | k=%b | Q=%b", $time, rst, j, k, Q);
    end

endmodule
