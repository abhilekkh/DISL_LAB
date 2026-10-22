`timescale 1ns/1ns

`include "n_bit_register.v"

module n_bit_register_tb;

parameter N = 8;

reg clk;
reg reset;
reg [N-1:0] d;
wire [N-1:0] q;

n_bit_register #(N) uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("n_bit_register.vcd");
    $dumpvars(0, n_bit_register_tb);

    clk = 0;
    reset = 1;
    d = 0;

    #10;
    reset = 0;

    d = 8'b10101010; #10;
    d = 8'b11001100; #10;
    d = 8'b11110000; #10;
    d = 8'b00001111; #10;

    $display("Test complete");
    $finish;
end

endmodule

