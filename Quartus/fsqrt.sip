set_global_assignment -entity "fsqrt" -library "lib_fsqrt" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fsqrt" -library "lib_fsqrt" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fsqrt" -library "lib_fsqrt" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fsqrt" -name SPD_FILE [file join $::quartus(sip_path) "fsqrt.spd"]

set_global_assignment -library "lib_fsqrt" -name MISC_FILE [file join $::quartus(sip_path) "fsqrt_sim/fsqrt_memoryC0_uid62_sqrtTables_lutmem.hex"]
set_global_assignment -library "lib_fsqrt" -name MISC_FILE [file join $::quartus(sip_path) "fsqrt_sim/fsqrt_memoryC1_uid65_sqrtTables_lutmem.hex"]
set_global_assignment -library "lib_fsqrt" -name MISC_FILE [file join $::quartus(sip_path) "fsqrt_sim/fsqrt_memoryC2_uid68_sqrtTables_lutmem.hex"]
set_global_assignment -library "lib_fsqrt" -name MISC_FILE [file join $::quartus(sip_path) "fsqrt_sim/fsqrt.vo"]
