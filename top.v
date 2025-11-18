module top(
    input btnU,
    input btnC,
    output [6:0] led
    );
    
    ripple c1(
        .count(1'b1),
        .clock(btnC),
        .out(led[2:0]),
        .reset(btnU)
        );
        
    mod c2(
        .enable(1'b1),
        .clock(btnC),
        .rst(btnU),
        .out(led[5:3]),
        .mainOut(led[6])
        );
    
endmodule
    