# Task 4-17
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.text
.globl main
main:
    li $t4, 1
    sub $t4, $t4, 1
    beq $t4, $zero, EXIT
    nop
EXIT:
    li $v0, 4
    la $a0, msg
    syscall
    li $v0, 10
    syscall

.data
msg: .asciiz "Task 17: NOP delay-slot fallback\n"
