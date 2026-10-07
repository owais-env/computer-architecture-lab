# Task 4-11
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t1, 10
    li $t2, 20
    li $t3, 30
    li $t4, 40
    add $t5, $t1, $t2
    add $t6, $t3, $t4
    add $t7, $t5, $t6
    li $v0, 1
    move $a0, $t7
    syscall
    li $v0, 10
    syscall
