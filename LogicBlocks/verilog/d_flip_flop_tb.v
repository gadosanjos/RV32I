`timescale 1ns / 1ps

module tb_d_flip_flop;

    // Testbench signals
    reg clk;
    reg d;
    wire q;

    // Instantiate the D flip-flop
    d_flip_flop uut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test sequence
    initial begin
        $display("Testbench - D Flip Flop");
        // Initialize inputs
        d = 0;

        // Wait for a few clock cycles
        #10;

        // Test case 1: Set d to 1
        d = 1;
        #10; // Wait for one clock cycle

        // Test case 2: Set d to 0
        d = 0;
        #10; // Wait for one clock cycle

        // Test case 3: Set d to 1 again
        d = 1;
        #10; // Wait for one clock cycle

        // Test case 4: Set d to 0 again
        d = 0;
        #10; // Wait for one clock cycle

        // Finish the simulation
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time: %0dns, clk: %b, d: %b, q: %b", $time, clk, d, q);
    end

endmodule