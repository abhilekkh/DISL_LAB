`timescale 1ns/1ns
`include "tff.v"

module tff_tb;

    reg clk;
    reg x;

    wire A;
    wire B;

    tff uut (
        .clk(clk),
        .x(x),
        .A(A),
        .B(B)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("tff.vcd");
        $dumpvars(0, tff_tb);

        x = 1;
        uut.A = 0;
        uut.B = 0;

        $monitor("Time=%0t | x=%b | State AB=%b%b",
                 $time, x, A, B);

        #40;

        x = 0;

        #40;

        x = 1;

        #40;

        $display("TEST COMPLETE!");
        $finish;
    end

endmodule
