.global _start

_start:
    # -------------------------
    # Setup values
    # -------------------------
    addi x1, x0, 5          # x1 = 5
    addi x2, x0, 5          # x2 = 5
    addi x3, x0, 10         # x3 = 10
    addi x4, x0, -1         # x4 = -1 (0xFFFFFFFF)

    # -------------------------
    # BEQ (should branch)
    # -------------------------
    beq x1, x2, beq_taken
    addi x10, x0, 1         # FAIL if executed

beq_taken:
    addi x10, x0, 2         # PASS

    # -------------------------
    # BNE (should NOT branch)
    # -------------------------
    bne x1, x2, bne_taken
    addi x11, x0, 2         # PASS
    jal x0, bne_end

bne_taken:
    addi x11, x0, 1         # FAIL

bne_end:

    # -------------------------
    # BLT (signed) → 5 < 10 (true)
    # -------------------------
    blt x1, x3, blt_taken
    addi x12, x0, 1         # FAIL

blt_taken:
    addi x12, x0, 2         # PASS

    # -------------------------
    # BGE (signed) → 10 >= 5 (true)
    # -------------------------
    bge x3, x1, bge_taken
    addi x13, x0, 1         # FAIL

bge_taken:
    addi x13, x0, 2         # PASS

    # -------------------------
    # BLTU (unsigned)
    # x4 = 0xFFFFFFFF (large unsigned)
    # x1 = 5
    # → x4 < x1 is FALSE
    # -------------------------
    bltu x4, x1, bltu_taken
    addi x14, x0, 2         # PASS
    jal x0, bltu_end

bltu_taken:
    addi x14, x0, 1         # FAIL

bltu_end:

    # -------------------------
    # BGEU (unsigned)
    # x4 >= x1 → TRUE
    # -------------------------
    bgeu x4, x1, bgeu_taken
    addi x15, x0, 1         # FAIL

bgeu_taken:
    addi x15, x0, 2         # PASS

    # -------------------------
    # Done (infinite loop)
    # -------------------------
end:
    jal x0, end
