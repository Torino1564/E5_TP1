.global _start

_start:    
# -------------------------
    # Base address (RAM = 0x10000000)
    # -------------------------
    lui  x1, 0x10000        # x1 = 0x10000000
    addi x1, x1, 0x100      # x1 = 0x10000100 (safe offset)

    # -------------------------
    # Test 1: simple store/load
    # -------------------------
    lui  x2, 0x12345
    addi x2, x2, 0x678      # x2 = 0x12345678

    sw   x2, 0(x1)
    lw   x3, 0(x1)

    bne  x2, x3, fail

    # -------------------------
    # Test 2: overwrite
    # -------------------------
    lui  x2, 0xAAAAA
    addi x2, x2, 0x555      # x2 = 0xAAAAA555

    sw   x2, 4(x1)
    lw   x4, 4(x1)

    bne  x2, x4, fail

    # -------------------------
    # Test 3: multiple locations
    # -------------------------
    addi x5, x0, 1
    addi x6, x0, 2
    addi x7, x0, 3

    sw   x5, 8(x1)
    sw   x6, 12(x1)
    sw   x7, 16(x1)

    lw   x8, 8(x1)
    lw   x9, 12(x1)
    lw   x10,16(x1)

    bne  x5, x8, fail
    bne  x6, x9, fail
    bne  x7, x10, fail

    # -------------------------
    # PASS
    # -------------------------
pass:
    addi x20, x0, 1
    jal  x0, pass

    # -------------------------
    # FAIL
    # -------------------------
fail:
    addi x20, x0, -1
    jal  x0, fail
