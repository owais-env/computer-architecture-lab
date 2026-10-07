# Task 4-6
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
    nop
    add $t3, $t0, $t1
    # $t1 is initialized to 5 below
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
