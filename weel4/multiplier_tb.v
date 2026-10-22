`timescale 1ns/1ns
`include "multiplier.v"

module multiplier_tb();
    reg [1:0] a, b;
    wire [3:0] f;

    // Fixed trailing comma after .f(f)
    multiplier o (
        .a(a),
        .b(b),
        .f(f)
    );

    initial begin
        $dumpfile("multiplier.vcd");
        $dumpvars(0, multiplier_tb);

        // --- MULTIPLICATION TESTS (Inputs: 0 to 3) ---

        // Test 1: 0 * 0 = 0
        a = 2'd0; b = 2'd0; #20;

        // Test 2: 1 * 2 = 2
        a = 2'd1; b = 2'd2; #20;

        // Test 3: 2 * 2 = 4
        a = 2'd2; b = 2'd2; #20;

        // Test 4: 2 * 3 = 6
        a = 2'd2; b = 2'd3; #20;

        // Test 5: 3 * 3 = 9 (Max 2-bit multiplication result)
        a = 2'd3; b = 2'd3; #20;

        $display("Test suite completed successfully.");
        $finish;
    end
endmodule
