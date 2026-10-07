# Task 4-3
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t4, 10
    li $t5, 5
    li $t7, 12
    li $t8, 3
    add $t1, $t4, $t5
    and $t2, $t7, $t8
    nop
    or $t3, $t1, $t2
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
