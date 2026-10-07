# Task 4-14
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
X: .word 3, 4
Y: .word 5
.text
.globl main
main:
    la $t1, X
    la $t2, Y
    lw $t3, 0($t1)
    lw $t4, 0($t2)
    lw $t5, 4($t1)
    mul $t6, $t3, $t4
    add $t7, $t7, $t6
    li $v0, 1
    move $a0, $t7
    syscall
    li $v0, 10
    syscall
