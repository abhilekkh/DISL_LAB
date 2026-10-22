module n_bit_register #(parameter N = 8) (
    input wire clk,
    input wire reset,
    input wire [N-1:0] d,
    output reg [N-1:0] q
);

always @(posedge clk) begin
    if (reset)
        q <= {N{1'b0}};
    else
        q <= d;
end

endmodule

