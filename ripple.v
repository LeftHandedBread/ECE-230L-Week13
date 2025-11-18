module ripple(
    input count,
    input reset,
    input clock,
    output [2:0] out
    );
    
    tff a(
        .T(count),
        .clk(clock),
        .rst(reset),
        .Q(out[0])
        );

    tff b(
        .T(count),
        .clk(a.nQ),
        .rst(reset),
        .Q(out[1])
        );

    tff c(
        .T(count),
        .clk(b.nQ),
        .rst(reset),
        .Q(out[2])
        );

endmodule