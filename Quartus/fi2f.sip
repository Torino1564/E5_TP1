set_global_assignment -entity "fi2f" -library "lib_fi2f" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "fi2f" -library "lib_fi2f" -name IP_TOOL_VERSION "25.1"
set_global_assignment -entity "fi2f" -library "lib_fi2f" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_fi2f" -name SPD_FILE [file join $::quartus(sip_path) "fi2f.spd"]

set_global_assignment -library "lib_fi2f" -name MISC_FILE [file join $::quartus(sip_path) "fi2f_sim/fi2f.vo"]
