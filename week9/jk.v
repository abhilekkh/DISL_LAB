module jk (
    input wire clk,
    input wire E,
    input wire x,
    output reg A,
    output reg B
);

    wire JA, KA;
    wire JB, KB;

    assign JB = E;
    assign KB = E;

    assign JA = E & (x ^ B);
    assign KA = E & (x ^ B);

    always @(posedge clk) begin
        if (JB == 0 && KB == 0)
            B <= B;
        else if (JB == 0 && KB == 1)
            B <= 1'b0;
        else if (JB == 1 && KB == 0)
            B <= 1'b1;
        else
            B <= ~B;
    end

    always @(posedge clk) begin
        if (JA == 0 && KA == 0)
            A <= A;
        else if (JA == 0 && KA == 1)
            A <= 1'b0;
        else if (JA == 1 && KA == 0)
            A <= 1'b1;
        else
            A <= ~A;
    end

endmodule
