module tff(
    input T,
    input clk,
    input rst,
    output reg Q,
    output reg nQ
);

    initial begin
        Q = 0;
        nQ = 1;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;        // guaranteed start
        end else if (T)
            Q <= ~Q;
    end

    always @(*) begin
        nQ = ~Q;
    end

endmodule