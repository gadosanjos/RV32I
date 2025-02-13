To test codes follow these steps:

## Step 1: Install RISC-V GCC Toolchain
To compile(Linux) C code into RV32I assembly:
    sudo apt install gcc-riscv64-unknown-elf
For Windows Download and install the prebuilt RISC-V toolchain from SiFive:
https://www.sifive.com/software

## Step 2: Compile C Code to Assembly
Explanation of Compilation Flags:
    riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 -S -o program.s input.c
        -march=rv32i → Specifies RV32I architecture.
        -mabi=ilp32 → Uses 32-bit integer calling convention.
        -S → Generates assembly instead of machine code.
        -o output.s → Output assembly file.
This command only converts C to assembly (.s file). It does not generate an executable.

## Step 3: Assemble into Machine Code
Convert .s (assembly) into an object file (.o):
    riscv64-unknown-elf-as -march=rv32i -mabi=ilp32 -o program.o program.s
        riscv64-unknown-elf-as → The assembler, converts assembly (.s) into machine code (.o).

Convert the .o object file into a raw binary file (.bin) for Logisim:
    riscv64-unknown-elf-objcopy -O binary program.o program.bin
        riscv64-unknown-elf-objcopy → Extracts the raw machine code from the object file.
        -O binary → Converts it into pure binary format (no ELF headers or metadata).

## Step 4: Extract Instructions and Data
Logisim separates instruction memory (imem) and data memory (dmem).
Since RISC-V binaries contain both instructions and data, we need to split them before loading into Logisim.

Extract Instructions (imem)
    riscv64-unknown-elf-objcopy -O binary --only-section=.text program.o imem.bin
        --only-section=.text → Extracts only executable instructions.
Extract Data (dmem)
    riscv64-unknown-elf-objcopy -O binary --only-section=.data program.o dmem.bin
        --only-section=.data → Extracts only data, which will be stored in RAM.

## Step 5: Convert to Logisim-Compatible Format
Logisim does not directly support RISC-V binaries, you need to manually load the machine code into Logisim’s instruction memory.
convert machine code with a Python Script to Convert Binary to Logisim Format.
the python notebook reads the binary file in 4-byte (32-bit) chunks, converts each word to little-endian hex, outputs a Logisim-compatible memory file.

## Step 6: Load into Logisim
copy logisim_imem.txt to ROM
copy logisim_dmem.txt to RAM

Use objdump to Check Offsets
    riscv64-unknown-elf-objdump -d program.o
