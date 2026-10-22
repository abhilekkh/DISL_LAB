`timescale 1ns/1ns
`include "penc4to2.v"

module penc4to2_tb();

    reg [3:0] D;
    wire [1:0] Y;

    penc4to2 o(
        .D(D),
        .Y(Y)
    );

    initial begin
        $dumpfile("penc4to2.vcd");
        $dumpvars(0, penc4to2_tb);

        D = 4'b0000; #20;
        D = 4'b0001; #20;
        D = 4'b0010; #20;
        D = 4'b0011; #20;
        D = 4'b0100; #20;
        D = 4'b0101; #20;
        D = 4'b0110; #20;
        D = 4'b0111; #20;
        D = 4'b1000; #20;
        D = 4'b1001; #20;
        D = 4'b1010; #20;
        D = 4'b1011; #20;
        D = 4'b1100; #20;
        D = 4'b1101; #20;
        D = 4'b1110; #20;
        D = 4'b1111; #20;

        $display("Test Complete");
    end

endmodule

