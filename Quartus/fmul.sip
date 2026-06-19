set_global_assignment -entity "fmul" -library "lib_fmul" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fmul" -library "lib_fmul" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fmul" -library "lib_fmul" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fmul" -name SPD_FILE [file join $::quartus(sip_path) "fmul.spd"]

set_global_assignment -library "lib_fmul" -name MISC_FILE [file join $::quartus(sip_path) "fmul_sim/fmul.vo"]
