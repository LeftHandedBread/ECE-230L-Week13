module mod(
    input enable,
    input clock,
    input rst,
    output [2:0] out,
    output mainOut
    );

    wire [2:0] addToDff;
    wire [1:0] carry;
    wire tffOut;
    wire compare;
    wire intrst;
    

    
    add a1(
        .A(enable),
        .B(out[0]),
        .Cin(1'b0),
        .Y(addToDff[0]),
        .Cout(carry[0])
    );
        
    dff d1(
        .Default(1'b0),
        .D(addToDff[0]),
        .clk(clock),
        .reset(intrst),
        .Q(out[0])
        );
        
    add a2(
        .A(out[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(addToDff[1]),
        .Cout(carry[1])
    );

    dff d2(
        .Default(1'b0),
        .D(addToDff[1]),
        .clk(clock),
        .reset(intrst),
        .Q(out[1])
        );
        
    add a3(
        .A(out[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(addToDff[2])
    );

    dff d3(
        .Default(1'b0),
        .D(addToDff[2]),
        .clk(clock),
        .reset(intrst),
        .Q(out[2])
        );
        
    assign compare = (~out[0] & out[1] & out[2]);
    
    tff compareTff(
         .T(out[2]),
        .clk(compare),
        .Q(tffOut)
        );
        
    dff dOut(
        .Default(1'b0),
        .D(tffOut),
        .clk(clock),
        .reset(intrst),
        .Q(mainOut)
    );
    
    
    assign intrst = compare || rst;

        
        

endmodule