set_global_assignment -entity "fle" -library "lib_fle" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fle" -library "lib_fle" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fle" -library "lib_fle" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fle" -name SPD_FILE [file join $::quartus(sip_path) "fle.spd"]

set_global_assignment -library "lib_fle" -name MISC_FILE [file join $::quartus(sip_path) "fle_sim/fle.vo"]
