set_global_assignment -entity "feq" -library "lib_feq" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "feq" -library "lib_feq" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "feq" -library "lib_feq" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_feq" -name SPD_FILE [file join $::quartus(sip_path) "feq.spd"]

set_global_assignment -library "lib_feq" -name MISC_FILE [file join $::quartus(sip_path) "feq_sim/feq.vo"]
