module shift_register_6bit (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output wire [5:0] q
);

wire [5:0] d;

assign d[0] = serial_in;
assign d[1] = q[0];
assign d[2] = q[1];
assign d[3] = q[2];
assign d[4] = q[3];
assign d[5] = q[4];

d_ff ff0 (.clk(clk), .reset(reset), .d(d[0]), .q(q[0]));
d_ff ff1 (.clk(clk), .reset(reset), .d(d[1]), .q(q[1]));
d_ff ff2 (.clk(clk), .reset(reset), .d(d[2]), .q(q[2]));
d_ff ff3 (.clk(clk), .reset(reset), .d(d[3]), .q(q[3]));
d_ff ff4 (.clk(clk), .reset(reset), .d(d[4]), .q(q[4]));
d_ff ff5 (.clk(clk), .reset(reset), .d(d[5]), .q(q[5]));

endmodule

module d_ff (
    input wire clk,
    input wire reset,
    input wire d,
    output reg q
);

always @(posedge clk) begin
    if (reset)
        q <= 1'b0;
    else
        q <= d;
end

endmodule

