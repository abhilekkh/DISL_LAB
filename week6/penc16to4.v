module penc16to4(
    input [15:0] D,
    output reg [3:0] Y
);

    integer k;
    reg found;

    always @(*) begin
        Y = 4'b0000;
        found = 1'b0;

        for (k = 15; k >= 0; k = k - 1) begin
            if ((D[k] == 1'b1) && (found == 1'b0)) begin
                Y = k;
                found = 1'b1;
            end
        end
    end

endmodule

