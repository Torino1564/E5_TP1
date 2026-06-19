set_global_assignment -entity "fdiv" -library "lib_fdiv" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fdiv" -library "lib_fdiv" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fdiv" -library "lib_fdiv" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fdiv" -name SPD_FILE [file join $::quartus(sip_path) "fdiv.spd"]

set_global_assignment -library "lib_fdiv" -name MISC_FILE [file join $::quartus(sip_path) "fdiv_sim/fdiv_memoryC0_uid112_invTables_lutmem.hex"]
set_global_assignment -library "lib_fdiv" -name MISC_FILE [file join $::quartus(sip_path) "fdiv_sim/fdiv_memoryC0_uid113_invTables_lutmem.hex"]
set_global_assignment -library "lib_fdiv" -name MISC_FILE [file join $::quartus(sip_path) "fdiv_sim/fdiv_memoryC1_uid116_invTables_lutmem.hex"]
set_global_assignment -library "lib_fdiv" -name MISC_FILE [file join $::quartus(sip_path) "fdiv_sim/fdiv_memoryC2_uid120_invTables_lutmem.hex"]
set_global_assignment -library "lib_fdiv" -name MISC_FILE [file join $::quartus(sip_path) "fdiv_sim/fdiv.vo"]
