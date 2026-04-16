.section .text
.global _start

_start:
    addi x1, x0, 1        # x1 = 1 (should be skipped)

    jal x5, target        # jump to target, x5 = return address

    addi x1, x0, 2        # ❌ should NOT execute

target:
    addi x2, x0, 42       # x2 = 42 (should execute)

    # Check return address
    addi x3, x5, 0        # copy return addr to x3

loop:
    j loop                # infinite loop
