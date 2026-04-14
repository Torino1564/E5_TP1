MEMORY {
    ROM	(rx)  : ORIGIN = 0x10000000, LENGTH = 32K
    RAM (rwx) : ORIGIN = 0x00000000, LENGTH = 32K
}

SECTIONS {

    .text 	: { *(.text*) } 		> ROM			/* Code */
    .rodata 	: { *(.rodata*) } 		> ROM			/* Read only data */
    .bss 	: { *(.bss*) } 			> RAM 			/* Zero initialized global variables */
    .data 	: {
	 . = ALIGN(4);
	 *(.data*) 				
    	 *(.sdata*)
	 . = ALIGN(8);
         PROVIDE( __global_pointer$ = . + 0x800 ); 
     }						> RAM AT> ROM		/* Non zero initialized global variables. Loader finds them at ROM, then found in RAM at runtime */ 
    
    _heap_start = .;
}					

__bss_start = ADDR(.bss);
__bss_end = __bss_start + SIZEOF(.bss);

__data_load = LOADADDR(.data);
__data_start = ADDR(.data);
__data_end = __data_start + SIZEOF(.data);

_heap_end = ORIGIN(RAM) + LENGTH(RAM);

_stack_top = ORIGIN(RAM) + LENGTH(RAM);

ENTRY(_start);
_end = 0xFF;