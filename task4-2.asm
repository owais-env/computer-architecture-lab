# Task 4-2
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t1, 10
    li $t2, 5
    li $t5, 2
    add $t0, $t1, $t2
    nop
    nop
    sub $t3, $t0, $t5
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
