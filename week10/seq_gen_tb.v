`timescale 1ns/1ns
`include "seq_gen.v"
module seq_gen_tb;
    reg clk;
    reg rst;
    wire [2:0] q;

    seq_gen uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("seq_gen.vcd");
        $dumpvars(0, seq_gen_tb);

        clk = 0;
        rst = 1;
        #15;
        rst = 0;

        #200;
        $finish;
    end
endmodule
