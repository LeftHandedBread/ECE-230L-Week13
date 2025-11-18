module add(
    input A,
    input B,
    input Cin, // Carry In
    output Y,
    output Cout // Carry Out
);

    assign Y = (A ^ B ^ Cin); // Sum
    assign Cout = (A & B) | (B & Cin) | (A & Cin); // Carry

endmodule