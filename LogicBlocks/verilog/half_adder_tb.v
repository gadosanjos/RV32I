`timescale 1ns/1ps
module half_adder_tb;
  reg a, b;       // inputs are regs so we can assign to them
  wire s, c;      // outputs are wires, driven by DUT

  // Instantiate the module under test (DUT)
  half_adder uut (
    .a(a),
    .b(b),
    .s(s),
    .c(c)
  );

  initial begin
    // Print a header
    $dumpfile("dump.vcd");   // name of the waveform file
    $dumpvars(0, half_adder_tb);  // dump all signals in this module
    
    $display("Testbench - Half Adder");

    // Test case 1
    a = 0; b = 0; #1;
    $display("a = %b, b = %b, c = %b, s = %b", a, b, c, s);

    // Test case 2
    a = 0; b = 1; #1;
    $display("a = %b, b = %b, c = %b, s = %b", a, b, c, s);

    // Test case 3
    a = 1; b = 0; #1;
    $display("a = %b, b = %b, c = %b, s = %b", a, b, c, s);

    // Test case 4
    a = 1; b = 1; #1;
    $display("a = %b, b = %b, c = %b, s = %b", a, b, c, s);

    // End message
    $display("Success!");
    $finish;
  end
endmodule
