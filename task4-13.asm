# Task 4-13
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
array: .word 10, 20
.text
.globl main
main:
    la $t2, array
    lw $t3, 0($t2)
    lw $t4, 4($t2)
    sw $t3, 4($t2)
    sw $t4, 0($t2)
    li $v0, 10
    syscall
