`timescale 1ns/1ns
`include "async_up4.v"

module async_up4_tb;
    reg clk;
    reg rst;
    wire [3:0] q;

    async_up4 uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("async_up4.vcd");
        $dumpvars(0, async_up4_tb);

        clk = 0;
        rst = 1;
        #15;
        rst = 0;

        #300;
        $finish;
    end
endmodule
