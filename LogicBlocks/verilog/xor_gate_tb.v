module xor_gate_tb;
    // Declare testbench signals
    reg a;          // Test input a
    reg b;          // Test input b
    wire c;        // Output from the XOR gate

    // Instantiate the XOR gate
    xor_gate uut (
        .a(a),
        .b(b),
        .c(c)
    );

    // Test sequence
    initial begin
        // Display the header
        $display("A B | C");
        $display("---------");

        // Test case 1: a = 0, b = 0
        a = 0; b = 0; #10; // Wait for 10 time units
        $display("%b %b | %b", a, b, c);

        // Test case 2: a = 0, b = 1
        a = 0; b = 1; #10;
        $display("%b %b | %b", a, b, c);

        // Test case 3: a = 1, b = 0
        a = 1; b = 0; #10;
        $display("%b %b | %b", a, b, c);

        // Test case 4: a = 1, b = 1
        a = 1; b = 1; #10;
        $display("%b %b | %b", a, b, c);

        // End the simulation
        $finish;
    end
endmodule