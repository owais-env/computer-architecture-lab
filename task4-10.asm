# Task 4-10
# Runnable MIPS/MARS version
# Based on the supplied Pipeline Hazards Task 4 document.
.data
source: .word 25
destination: .word 0
.text
.globl main
main:
    la $t0, source
    lw $t1, 0($t0)
    la $t2, destination
    sw $t1, 0($t2)
    li $v0, 1
    move $a0, $t1
    syscall
    li $v0, 10
    syscall
