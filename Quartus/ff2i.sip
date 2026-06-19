set_global_assignment -entity "ff2i" -library "lib_ff2i" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "ff2i" -library "lib_ff2i" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "ff2i" -library "lib_ff2i" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_ff2i" -name SPD_FILE [file join $::quartus(sip_path) "ff2i.spd"]

set_global_assignment -library "lib_ff2i" -name MISC_FILE [file join $::quartus(sip_path) "ff2i_sim/ff2i.vo"]
