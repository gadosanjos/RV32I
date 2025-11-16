
module data_types (
    // 1-Net types used to represent connections between hardware components. 
    // They do not store values but instead reflect the values driven by other components.
    // The default net type is wire, which is automatically assigned to any net declared without an explicit type.
    wire a;       // A single wire
    wire [3:0] b; // A 4-bit wire
    tri a2; // wire that can be driven by multiple sources. It can be in one of three states: high, low, or high impedance

    // 2-Register Types are used to store values. Unlike nets, registers can hold their value until explicitly changed.
    wire c;       // A single reg
    reg [3:0] d;  // A 4-bit reg 
    // reg Represents a storage element. It can hold a value and is often used in procedural blocks (like always blocks).
    integer a;    // A 32-bit signed integer. Useful for counters and loop indices.
    real a;       // A floating-point number. Used for modeling analog behavior or for calculations requiring real numbers.

    // 3-Vector Types, Bit Vectors: Defined using the reg or wire types with a specified width.
    reg [7:0] byte_data;   // An 8-bit register
    wire [15:0] word_data; // A 16-bit wire
    reg signed [7:0] signed_data;       // A signed 8-bit register
    reg unsigned [7:0] unsigned_data;   // An unsigned 8-bit register

    // 4-User-Defined Types
    // typedef: Used to create new data types.
    typedef enum {RED, GREEN, BLUE} color_t; // Define an enumerated type
    color_t color;                           // Variable of type color_t
    // 5- Arrays
    //  One-Dimensional Arrays: Arrays can be created for both reg and wire.
    reg [7:0] memory [0:255]; // An array of 256 8-bit registers
    //  Multi-Dimensional Arrays: You can also create multi-dimensional arrays.
    reg [3:0] matrix [0:3][0:3]; // A 4x4 array of 4-bit registers
);

endmodule