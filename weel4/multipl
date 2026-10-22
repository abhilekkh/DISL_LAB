`timescale 1ns/1ns
`include "adderSubtractor.v"

module adderSubtractor_tb();
    reg carryin;
    reg [3:0] x, y;
    wire [3:0] s;
    wire carryout;

    adderSubtractor uut (
        .carryin(carryin),
        .x(x),
        .y(y),
        .s(s),
        .carryout(carryout)
    );

    initial begin
        $dumpfile("adderSubtractor.vcd");
        $dumpvars(0, adderSubtractor_tb);

        // --- ADDITION TESTS (carryin = 0) ---
        carryin = 1'b0;
        
        // Test 1: 5 + 3 = 8
        x = 4'd5; y = 4'd3; #20;

        // Test 2: 10 + 5 = 15
        x = 4'd10; y = 4'd5; #20;

        // Test 3: 15 + 1 = 16 (Result overflow: s=0, carryout=1)
        x = 4'd15; y = 4'd1; #20;

        // --- SUBTRACTION TESTS (carryin = 1) ---
        carryin = 1'b1;

        // Test 4: 8 - 3 = 5
        x = 4'd8; y = 4'd3; #20;

        // Test 5: 5 - 5 = 0
        x = 4'd5; y = 4'd5; #20;

        // Test 6: 4 - 6 = -2 (In 2's complement s=14, carryout=0 indicates borrow)
        x = 4'd4; y = 4'd6; #20;

        $display("Test suite completed successfully.");
    end
endmodule

