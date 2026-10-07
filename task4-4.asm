# Task 4-4
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t3, 10
    li $t4, 5
    li $t5, 7
    li $t6, 3
    add $t0, $t3, $t4
    add $t1, $t5, $t6
    nop
    nop
    add $t2, $t0, $t1
    li $v0, 1
    move $a0, $t2
    syscall
    li $v0, 10
    syscall
