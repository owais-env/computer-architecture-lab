# Task 4-7
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
value: .word 20
.text
.globl main
main:
    la $t2, value
    lw $t0, 0($t2)
    li $t1, 5
    li $t6, 12
    li $t7, 4
    sub $t5, $t6, $t7
    add $t3, $t0, $t1
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
