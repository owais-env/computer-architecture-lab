# Task 4-12
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
A: .word 10
B: .word 20
.text
.globl main
main:
    la $t4, A
    lw $t1, 0($t4)
    lw $t6, 4($t4)
    # The second load is used as the latency-filling instruction.
    # For this standalone program use separate valid values:
    la $t4, A
    la $t5, B
    lw $t1, 0($t4)
    lw $t6, 0($t5)
    add $t2, $t1, $t3
    add $t7, $t6, $t8
    li $v0, 10
    syscall
