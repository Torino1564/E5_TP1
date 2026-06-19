set_global_assignment -entity "fmadd" -library "lib_fmadd" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fmadd" -library "lib_fmadd" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fmadd" -library "lib_fmadd" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fmadd" -name SPD_FILE [file join $::quartus(sip_path) "fmadd.spd"]

set_global_assignment -library "lib_fmadd" -name MISC_FILE [file join $::quartus(sip_path) "fmadd_sim/fmadd.vo"]
