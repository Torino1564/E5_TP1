set_global_assignment -entity "flt" -library "lib_flt" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "flt" -library "lib_flt" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "flt" -library "lib_flt" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_flt" -name SPD_FILE [file join $::quartus(sip_path) "flt.spd"]

set_global_assignment -library "lib_flt" -name MISC_FILE [file join $::quartus(sip_path) "flt_sim/flt.vo"]
