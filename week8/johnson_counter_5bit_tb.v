`timescale 1ns/1ns
`include "johnson_counter_5bit.v"

module johnson_counter_5bit_tb;

reg clk;
reg reset;
wire [4:0] q;

johnson_counter_5bit uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("johnson_counter_5bit.vcd");
    $dumpvars(0, johnson_counter_5bit_tb);

    clk = 0;
    reset = 1;

    #15;
    reset = 0;

    #120;

    $display("Test complete");
    $finish;
end

endmodule

