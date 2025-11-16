.data               # In RISC-V global variables are declared under the .data directive. This represents the data segment
n:                  # n is the name of the variable
    .word 12        # .word means that the size of the data is one word, 12 is the value that is assigned to n
                    # In logisim we need to write in memory ourselves, so type 12 as directives are not supported or some othher number you want to test
.text               # .text directive. Everything under this directive is our code.
main:
    add t0, x0, x0  # curr_fib = 0
    addi t1, x0, 1  # next_fib = 1
    la t3, n        # load the address of the label n                                       in c t3 = &n;
    lw t3, 0(t3)    # get the value that is stored at the adddress denoted by the label n   in c t3 = *t3;
fib:
    beq t3, x0, finish # exit loop once we have completed n iterations
    add t2, t1, t0  # new_fib = curr_fib + next_fib;
    mv t0, t1       # curr_fib = next_fib;
    mv t1, t2       # next_fib = new_fib;
    addi t3, t3, -1 # decrement counter
    j fib           # loop
finish:
    addi a0, x0, 1  # argument to ecall to execute print integer
    addi a1, t0, 0  # argument to ecall, the value to be printed
    ecall           # print integer ecall
    la t3, n
    sw t0, 4(t3)    # Store value in mem
    addi a0, x0, 10 # argument to ecall to terminate
    ecall           # terminate ecall