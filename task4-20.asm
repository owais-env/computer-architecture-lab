# Task 4-20
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
value: .word 0
msg: .asciiz "Task 20: Load-use plus branch hazard example\n"

.text
.globl main
main:
    la $t2, value
    lw $t0, 0($t2)
    nop
    nop
    beq $t0, $zero, TARGET
    nop
TARGET:
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 10
    syscall
