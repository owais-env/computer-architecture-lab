# Task 4-5
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t0, 1
    li $t1, 2
    li $t2, 3
    li $t3, 4
    add $t0, $t0, $t1
    nop
    nop
    add $t0, $t0, $t2
    nop
    nop
    add $t0, $t0, $t3
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 10
    syscall
