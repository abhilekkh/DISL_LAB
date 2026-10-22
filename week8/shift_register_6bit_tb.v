`timescale 1ns/1ns

`include "shift_register_6bit.v"

module shift_register_6bit_tb;

reg clk;
reg reset;
reg serial_in;
wire [5:0] q;

shift_register_6bit uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("shift_register_6bit.vcd");
    $dumpvars(0, shift_register_6bit_tb);

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10;
    reset = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;

    $display("Test complete");
    $finish;
end

endmodule

