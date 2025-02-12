
This project implements a basic RV32I (32-bit RISC-V) CPU in Logisim. 
It is inspired by the CS61C course lectures at UC Berkeley, and it incorporates ideas and designs from 
various other open-source repositories and academic papers. 
The goal is to create a functioning simulation of a simple RISC-V processor to help understand core architectural concepts.

I've broken down the implementation by iteratively copying the stages described in the CS61C lectures, 
Lecture 18.1 - Single-Cycle CPU Datapath I: RISC-V Processor Design as such there is a start version which only accepts R-type, 
and then add to it to accept more formats.

References
This project is based on and inspired by several resources:

CS61C Lectures (UC Berkeley): 
Great Ideas in Computer Architecture
https://www.youtube.com/watch?v=VJ6tuX5bBf4&list=PL0j-r-omG7i0-mnsxN5T4UcVS1Di0isqf&ab_channel=CS61CDepartmental

Research Paper:
RV32I Implementation Details (arXiv)
https://arxiv.org/pdf/2312.01455

Open-Source Repositories:

[mortie/rv32i-logisim-cpu](https://github.com/mortie/rv32i-logisim-cpu)
[meiniKi/RV32I_SC_Logisim](https://github.com/meiniKi/RV32I_SC_Logisim)
[eminfedar/rv32-im-cpu](https://github.com/eminfedar/rv32-im-cpu)