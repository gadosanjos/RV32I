module not_gate (
    input wire a,
    output wire neg_a
);

    assign neg_a = ~a; 

endmodule