`timescale 1ns/1ns
`include "jk.v"

module jk_tb;

    reg clk;
    reg E;
    reg x;

    wire A;
    wire B;

    jk uut (
        .clk(clk),
        .E(E),
        .x(x),
        .A(A),
        .B(B)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("jk.vcd");
        $dumpvars(0, jk_tb);

        E = 0;
        x = 0;

        uut.A = 0;
        uut.B = 0;

        $monitor("Time=%0t | E=%b | x=%b | State AB=%b%b",
                 $time, E, x, A, B);

        #10;
        E = 0;
        x = 1;

        #30;

        E = 1;
        x = 1;

        #50;

        x = 0;

        #50;

        E = 0;

        #30;

        $display("TEST COMPLETE!");
        $finish;
    end

endmodule
