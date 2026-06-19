set_global_assignment -entity "fadd" -library "lib_fadd" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fadd" -library "lib_fadd" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fadd" -library "lib_fadd" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fadd" -name SPD_FILE [file join $::quartus(sip_path) "fadd.spd"]

set_global_assignment -library "lib_fadd" -name MISC_FILE [file join $::quartus(sip_path) "fadd_sim/fadd.vo"]
