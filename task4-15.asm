# Task 4-15
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t0, 10
    li $t1, 10
    beq $t0, $t1, TARGET
    li $t2, 999          # Sequential instruction; branch hazard demonstration
TARGET:
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 10
    syscall

.data
msg: .asciiz "Task 15: Branch completed\n"
