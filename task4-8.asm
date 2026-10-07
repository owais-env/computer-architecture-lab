# Task 4-8
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
ptr: .word 0
value: .word 99
.text
.globl main
main:
    la $t2, value
    sw $t2, ptr
    lw $t0, 0($t2)
    nop
    lw $t3, 4($t0)
    # Demonstration of the load/base dependency.
    # Use a valid base for execution:
    la $t0, value
    lw $t3, 0($t0)
    li $v0, 1
    move $a0, $t3
    syscall
    li $v0, 10
    syscall
