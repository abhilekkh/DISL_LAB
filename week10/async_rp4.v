module async_up4 (
    input clk,
    input rst,
    output [3:0] q
);
    reg [3:0] q_reg;

    // Ripple counter stages using negative edge triggering for an up-counter
    always @(negedge clk or posedge rst) begin
        if (rst) q_reg[0] <= 1'b0;
        else     q_reg[0] <= ~q_reg[0];
    end

    always @(negedge q_reg[0] or posedge rst) begin
        if (rst) q_reg[1] <= 1'b0;
        else     q_reg[1] <= ~q_reg[1];
    end

    always @(negedge q_reg[1] or posedge rst) begin
        if (rst) q_reg[2] <= 1'b0;
        else     q_reg[2] <= ~q_reg[2];
    end

    always @(negedge q_reg[2] or posedge rst) begin
        if (rst) q_reg[3] <= 1'b0;
        else     q_reg[3] <= ~q_reg[3];
    end

    assign q = q_reg;
endmodule
