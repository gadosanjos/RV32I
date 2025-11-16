
This project implements a basic RV32I (32-bit RISC-V) CPU in Logisim. 
It is inspired by the CS61C course lectures at UC Berkeley, and it incorporates ideas and designs from 
various other open-source repositories and academic papers. 
The goal is to create a functioning simulation of a simple RISC-V processor to help understand core architectural concepts.

I've broken down the implementation by iteratively copying the stages described in the CS61C lectures, 
Lecture 18.1 - Single-Cycle CPU Datapath I: RISC-V Processor Design as such there is a start version which only accepts R-type, 
and then add to it to accept more formats.

Single-cycle characteristics:

Each instruction executes in one clock cycle.

Limitation: The clock period must be as long as the slowest instruction (usually memory access).

Result: Simple, but inefficient — all functional units are idle most of the time.

Multi-cycle characteristics:

Each instruction is divided into multiple stages (Fetch, Decode, Execute, Memory, Write-back), each executed in a separate clock cycle.

Limitation: The clock period can be shorter, determined by the slowest stage rather than the slowest instruction.

Result: More efficient hardware utilization — functional units are reused across cycles, but overall CPI > 1 since each instruction takes several cycles.

Pipelined characteristics:

Multiple instructions are overlapped in execution, each occupying a different stage of the pipeline simultaneously.

Improvement: Increases instruction throughput — ideally one instruction completes every cycle once the pipeline is full.

Result: Significantly higher performance, but introduces complexity due to hazards (data, control, structural) that require forwarding, stalling, or prediction mechanisms to resolve.

Use the logisim in the folder to avoid errors with different versions.

# References
This project is based on and inspired by several resources:

CS61C Lectures (UC Berkeley): 
[Great Ideas in Computer Architecture](https://www.youtube.com/watch?v=VJ6tuX5bBf4&list=PL0j-r-omG7i0-mnsxN5T4UcVS1Di0isqf&ab_channel=CS61CDepartmental)

YouTube:

[Lecture by Sarah Harris](https://www.youtube.com/@sarahharris6912)

Articles:

[A RV32I Single Cycle CPU](https://www.bit-spinner.com/rv32i/rv32i-introduction)

[A RV32I Multi Cycle CPU](https://www.bit-spinner.com/rv32i-multi-cycle/rv32i-multi-cycle-introduction)

[Full Multicycle Datapath](https://taoxie.sdsu.edu/cs572/Lec10.pdf)

[Multi-cycle Processors](https://medium.com/%40s.ruban2000/multi-cycle-processors-33526b105b0b)

Research Paper:

RV32I Implementation Details (arXiv)
https://arxiv.org/pdf/2312.01455

Open-Source Repositories:

[mortie/rv32i-logisim-cpu](https://github.com/mortie/rv32i-logisim-cpu)

[meiniKi/RV32I_SC_Logisim](https://github.com/meiniKi/RV32I_SC_Logisim)

[eminfedar/rv32-im-cpu](https://github.com/eminfedar/rv32-im-cpu)

[PritomP25/RISCV-Multicycle-Processor](https://github.com/PritomP25/RISCV-Multicycle-Processor)