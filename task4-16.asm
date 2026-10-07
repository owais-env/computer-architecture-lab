# Task 4-16
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t0, 5
    li $t1, 5
    beq $t0, $t1, TARGET
    addi $t2, $t3, 1     # Delay-slot instruction in the source concept
TARGET:
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 10
    syscall

.data
msg: .asciiz "Task 16: Branch delay-slot example\n"
