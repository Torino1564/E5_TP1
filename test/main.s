.globl _start

_start:

# ----------------------------------------
# 1. Basic BEQ (taken)
# ----------------------------------------
    addi x1, x0, 5
    addi x2, x0, 5
    beq  x1, x2, beq_taken   # should branch

    addi x3, x0, 1           # should be flushed if pipeline is correct

beq_taken:
    addi x3, x0, 2           # expected result: x3 = 2

# ----------------------------------------
# 2. BNE (not taken)
# ----------------------------------------
    addi x4, x0, 10
    addi x5, x0, 10
    bne  x4, x5, bne_taken   # should NOT branch

    addi x6, x0, 3           # expected path

    jal  x0, bne_end         # skip taken path

bne_taken:
    addi x6, x0, 99          # should NOT execute

bne_end:

# ----------------------------------------
# 3. Data hazard into branch
# ----------------------------------------
    addi x7, x0, 1
    addi x7, x7, 1           # x7 = 2 (depends on forwarding)
    beq  x7, x2, hazard_fail # x2 = 5, should NOT branch

    addi x8, x0, 4           # expected

    jal  x0, hazard_end

hazard_fail:
    addi x8, x0, 99          # incorrect if reached

hazard_end:

# ----------------------------------------
# 4. Back-to-back branches
# ----------------------------------------
    addi x9,  x0, 7
    addi x10, x0, 7

    beq x9, x10, bb1         # taken
    addi x11, x0, 1          # should be flushed

bb1:
    bne x9, x10, bb_fail     # not taken
    addi x11, x0, 2          # expected

    jal x0, bb_end

bb_fail:
    addi x11, x0, 99

bb_end:

# ----------------------------------------
# 5. JAL test (link register)
# ----------------------------------------
    jal x12, jump_target     # x12 = return address

    addi x13, x0, 1          # should execute after return
    jal x0, jal_end

jump_target:
    addi x13, x0, 42         # executed first
    jalr x0, x12, 0          # return

jal_end:

# ----------------------------------------
# 6. JALR alignment / indirect jump
# ----------------------------------------
    la   x14, indirect_target
    jalr x15, x14, 0         # jump via register

    addi x16, x0, 1          # should execute after return
    jal x0, done

indirect_target:
    addi x16, x0, 55
    jalr x0, x15, 0

# ----------------------------------------
# 7. Infinite loop (end marker)
# ----------------------------------------
done:
    beq x0, x0, done
