# Task 4-18
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t0, 3
LOOP:
    addi $t0, $t0, -1
    bgtz $t0, LOOP
    nop
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 10
    syscall

.data
msg: .asciiz "Task 18: Unconditional/loop jump delay example\n"
