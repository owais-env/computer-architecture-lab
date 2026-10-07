# Task 4-1
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t1, 10
    li $t2, 5
    li $t5, 2
    add $t0, $t1, $t2       # Producer: R1 = R2 + R3
    sub $t3, $t0, $t5       # Consumer: uses producer result
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
