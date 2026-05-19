MEMORY {
    ROM (rx)  : ORIGIN = 0x00000000, LENGTH = 32K
    RAM (rwx) : ORIGIN = 0x10000000, LENGTH = 32K
}

SECTIONS {

    .text :
    {
        KEEP(*(.text.start))
        *(.text*)
    } > ROM

    .rodata :
    {
        *(.rodata*)
    } > ROM

    .data :
    {
        . = ALIGN(4);

        __data_start = .;

        *(.data*)
        *(.sdata*)

        . = ALIGN(8);

        PROVIDE(__global_pointer$ = . + 0x800);

        __data_end = .;
    } > RAM AT> ROM

    .bss :
    {
        . = ALIGN(4);

        __bss_start = .;

        *(.bss*)
        *(COMMON)

        . = ALIGN(4);

        __bss_end = .;
    } > RAM

    _end = .;
    _heap_start = .;
}

__data_load = LOADADDR(.data);

_heap_end = ORIGIN(RAM) + LENGTH(RAM);

_stack_top = ORIGIN(RAM) + LENGTH(RAM);

ENTRY(_start)