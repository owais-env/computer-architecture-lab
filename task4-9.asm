# Task 4-9
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
result: .word 0
.text
.globl main
main:
    li $t1, 10
    li $t2, 5
    add $t0, $t1, $t2
    la $t3, result
    sw $t0, 0($t3)
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 10
    syscall
