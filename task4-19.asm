# Task 4-19
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
data1: .word 50
.text
.globl main
main:
    la $t2, data1
    lw $t0, 0($t2)
    add $t3, $t4, $t5
    sub $t6, $t7, $t8
    and $t9, $t3, $t6
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 10
    syscall
