module adder(
    // Declare your A/B inputs
    input A,
    input B, 
    output Y,
    output Cout
    // Declare Y output
    // Declare carry output
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Cout = A & B;

endmodule