`include "t_ff.v"
module seq_gen (
    input clk,
    input rst,
    output [2:0] q
);
    wire [2:0] t;
    wire [2:0] q_out;

    assign t[2] = q_out[1] & q_out[0];
    assign t[1] = q_out[0];
    assign t[0] = (~q_out[2] & ~q_out[1] & ~q_out[0]) | 
                  (q_out[2] & q_out[1] & q_out[0])  | 
                  (q_out[1] & ~q_out[0]);

    t_ff ff2 (.clk(clk), .rst(rst), .t(t[2]), .q(q_out[2]));
    t_ff ff1 (.clk(clk), .rst(rst), .t(t[1]), .q(q_out[1]));
    t_ff ff0 (.clk(clk), .rst(rst), .t(t[0]), .q(q_out[0]));

    assign q = q_out;
endmodule
