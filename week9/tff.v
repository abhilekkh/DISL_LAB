module tff (
    input wire clk,
    input wire x,
    output reg A,
    output reg B
);

    wire TA;
    wire TB;

    assign TA = B & (~x | ~A);
    assign TB = (x & ~A & B) | (~x & (A | ~B));

    always @(posedge clk) begin
        if (TA)
            A <= ~A;
        else
            A <= A;
    end

    always @(posedge clk) begin
        if (TB)
            B <= ~B;
        else
            B <= B;
    end

endmodule
