`timescale 1ns/1ps
module testbench;
// Declare testbench signals
    reg a;          // Test input a
    wire c;        // Output from the NOT gate

    // Instantiate the NOT gate
    not_gate uut (
        .a(a),
        .neg_a(c)
    );

    // Test sequence
    initial begin
        // Print a header
        $dumpfile("dump.vcd");   // name of the waveform file
        $dumpvars(0, testbench);  // dump all signals in this module

        // Display the header
        $display("A | Neg_a");
        $display("---------");
        // Test case 1: a = 0
        a = 0; #10; // Wait for 10 time units
        $display("%b | %b", a, c);

        // Test case 2: a = 1
        a = 1;  #10;
        $display("%b | %b", a, c);
        // End the simulation
        $finish;
    end
endmodule