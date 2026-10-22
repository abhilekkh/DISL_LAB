`timescale 1ns/1ns
`include "bcd.v"

module bcd_tb();
    reg [3:0] a, b;
    wire [4:0] corrected_sum;

    // Fixed trailing comma after .f(f)
    bcd o (
        .a(a),
        .b(b),
        .corrected_sum(corrected_sum)
    );

    initial begin
        $dumpfile("bcd.vcd");
        $dumpvars(0, bcd_tb);

        // --- BCD TESTS (Inputs: 0 to 3) ---

        // Test 1: 1+6 = 7
        a = 4'd1; b = 4'd6; #20;

        // Test 2: 1+ 9 = 10
        a = 4'd1; b = 4'd9; #20;

        // Test 3: 9 + 9 = 18
        a = 4'd9; b = 4'd9; #20;


        $display("Test suite completed successfully.");
        $finish;
    end
endmodule

