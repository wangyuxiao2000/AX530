# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: sd_ddr_vga.tcl
# Generated on: Tue Aug 25 09:44:49 2015

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "sd_ddr_vga"]} {
		puts "Project sd_ddr_vga is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists sd_ddr_vga]} {
		project_open -revision sd_ddr_vga sd_ddr_vga
	} else {
		project_new -revision sd_ddr_vga sd_ddr_vga
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE15F23C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 12.1
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "09:51:58  AUGUST 20, 2015"
	set_global_assignment -name LAST_QUARTUS_VERSION 12.1
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE stp1.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VERILOG_FILE rtl/sd/SD_TOP.v
	set_global_assignment -name VERILOG_FILE rtl/sd/SD_read.v
	set_global_assignment -name VERILOG_FILE rtl/sd/SD_initial.v
	set_global_assignment -name VERILOG_FILE rtl/ddr_ctrl.v
	set_global_assignment -name SIGNALTAP_FILE stp1.stp
	set_global_assignment -name VERILOG_FILE rtl/mem_burst_v2.v
	set_global_assignment -name VERILOG_FILE ip_core/ddr/ddr2_example_top.v
	set_global_assignment -name QIP_FILE ip_core/ddr/ddr2.qip
	set_global_assignment -name VERILOG_FILE rtl/ddr_2fifo_top.v
	set_global_assignment -name VERILOG_FILE rtl/dcfifo_ctrl.v
	set_global_assignment -name QIP_FILE ip_core/fifo/wrfifo.qip
	set_global_assignment -name QIP_FILE ip_core/fifo/rdfifo.qip
	set_global_assignment -name VERILOG_FILE rtl/sd_ddr_vga.v
	set_global_assignment -name VERILOG_FILE rtl/system_ctrl.v
	set_global_assignment -name QIP_FILE ip_core/pll/pll.qip
	set_global_assignment -name VERILOG_FILE rtl/vga_disp.v
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
	set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA0_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DATA1_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_FLASH_NCE_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name RESERVE_DCLK_AFTER_CONFIGURATION "USE AS REGULAR IO"
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
	set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=1024" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=284" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=284" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=876" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_CRC_LOWORD=63615" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_CRC_HIWORD=61004" -section_id auto_signaltap_0
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_odt[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_clk[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_clk_n[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cs_n[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cke[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_ba[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_ba[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_ba[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_ras_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_cas_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_we_n
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[2]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[3]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[4]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[5]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[6]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[7]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[8]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[9]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[10]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[11]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[12]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[13]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dq[15]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dqs[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dqs[1]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dm[0]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_dm[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to rst_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to source_clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to err
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[14]
	set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to mem_addr[13]
	set_location_assignment PIN_T16 -to mem_addr[14]
	set_location_assignment PIN_T10 -to mem_addr[13]
	set_location_assignment PIN_R15 -to mem_addr[12]
	set_location_assignment PIN_T9 -to mem_addr[11]
	set_location_assignment PIN_U14 -to mem_addr[10]
	set_location_assignment PIN_R14 -to mem_addr[9]
	set_location_assignment PIN_U10 -to mem_addr[8]
	set_location_assignment PIN_R16 -to mem_addr[7]
	set_location_assignment PIN_U8 -to mem_addr[6]
	set_location_assignment PIN_U15 -to mem_addr[5]
	set_location_assignment PIN_U7 -to mem_addr[4]
	set_location_assignment PIN_T14 -to mem_addr[3]
	set_location_assignment PIN_V7 -to mem_addr[2]
	set_location_assignment PIN_U13 -to mem_addr[1]
	set_location_assignment PIN_V6 -to mem_addr[0]
	set_location_assignment PIN_V15 -to mem_ba[2]
	set_location_assignment PIN_W15 -to mem_ba[1]
	set_location_assignment PIN_Y17 -to mem_ba[0]
	set_location_assignment PIN_AB10 -to mem_cas_n
	set_location_assignment PIN_AB3 -to mem_cke[0]
	set_location_assignment PIN_AA17 -to mem_clk[0]
	set_location_assignment PIN_AB17 -to mem_clk_n[0]
	set_location_assignment PIN_Y6 -to mem_cs_n[0]
	set_location_assignment PIN_V5 -to mem_dm[1]
	set_location_assignment PIN_AA7 -to mem_dm[0]
	set_location_assignment PIN_AA5 -to mem_dq[15]
	set_location_assignment PIN_Y3 -to mem_dq[14]
	set_location_assignment PIN_W8 -to mem_dq[13]
	set_location_assignment PIN_W7 -to mem_dq[12]
	set_location_assignment PIN_W6 -to mem_dq[11]
	set_location_assignment PIN_V8 -to mem_dq[10]
	set_location_assignment PIN_U9 -to mem_dq[9]
	set_location_assignment PIN_Y7 -to mem_dq[8]
	set_location_assignment PIN_AA8 -to mem_dq[7]
	set_location_assignment PIN_AB7 -to mem_dq[6]
	set_location_assignment PIN_Y10 -to mem_dq[5]
	set_location_assignment PIN_V11 -to mem_dq[4]
	set_location_assignment PIN_W10 -to mem_dq[3]
	set_location_assignment PIN_AA9 -to mem_dq[2]
	set_location_assignment PIN_Y8 -to mem_dq[1]
	set_location_assignment PIN_AB8 -to mem_dq[0]
	set_location_assignment PIN_V10 -to mem_dqs[1]
	set_location_assignment PIN_AB9 -to mem_dqs[0]
	set_location_assignment PIN_AB5 -to mem_odt[0]
	set_location_assignment PIN_AA4 -to mem_ras_n
	set_location_assignment PIN_AA3 -to mem_we_n
	set_location_assignment PIN_B19 -to rst_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_odt[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_clk[0]
	set_instance_assignment -name PAD_TO_CORE_DELAY 0 -to mem_clk[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_clk_n[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cs_n[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cke[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_ba[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_ba[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_ba[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_ras_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_cas_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_we_n
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[2]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[3]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[4]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[5]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[6]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[7]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[8]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[9]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[10]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[11]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[12]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[14]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dq[15]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dqs[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dqs[1]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dm[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to mem_dm[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[2]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[3]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[4]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[5]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[6]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[7]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[8]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[9]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[10]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[11]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[12]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[13]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[14]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dq[15]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[2]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[3]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[4]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[5]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[6]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[7]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[8]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[9]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[10]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[11]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[12]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[13]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[14]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dq[15]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dqs[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dqs[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dqs[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dqs[1]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dm[0]
	set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to mem_dm[1]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dm[0]
	set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to mem_dm[1]
	set_instance_assignment -name CKN_CK_PAIR ON -from mem_clk_n[0] -to mem_clk[0]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[13]
	set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to mem_addr[14]
	set_location_assignment PIN_T21 -to clk
	set_location_assignment PIN_E11 -to vga_blue[4]
	set_location_assignment PIN_C7 -to vga_blue[3]
	set_location_assignment PIN_F8 -to vga_blue[2]
	set_location_assignment PIN_G10 -to vga_blue[1]
	set_location_assignment PIN_G8 -to vga_blue[0]
	set_location_assignment PIN_B5 -to vga_green[5]
	set_location_assignment PIN_A5 -to vga_green[4]
	set_location_assignment PIN_D6 -to vga_green[3]
	set_location_assignment PIN_C6 -to vga_green[2]
	set_location_assignment PIN_E7 -to vga_green[1]
	set_location_assignment PIN_B4 -to vga_green[0]
	set_location_assignment PIN_F10 -to vga_hs
	set_location_assignment PIN_C3 -to vga_red[4]
	set_location_assignment PIN_A4 -to vga_red[3]
	set_location_assignment PIN_A3 -to vga_red[2]
	set_location_assignment PIN_C4 -to vga_red[1]
	set_location_assignment PIN_B3 -to vga_red[0]
	set_location_assignment PIN_H11 -to vga_vs
	set_location_assignment PIN_C17 -to key1
	set_location_assignment PIN_D20 -to SD_clk
	set_location_assignment PIN_C21 -to SD_cs
	set_location_assignment PIN_B21 -to SD_datain
	set_location_assignment PIN_C20 -to SD_dataout
	set_location_assignment PIN_E12 -to led[3]
	set_location_assignment PIN_C15 -to led[2]
	set_location_assignment PIN_G13 -to led[1]
	set_location_assignment PIN_D15 -to led[0]
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|mem_clk" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to "SD_TOP:u_SD_TOP|SD_initial:SD_initial_inst|init_o" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[15] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[16] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[17] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[18] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[19] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[20] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[21] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[22] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[23] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[24] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[25] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[26] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[27] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[28] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[29] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[30] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[31] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[32] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[33] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_rd_ack" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[34] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_rd_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[35] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wr_ack" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[36] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wr_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[37] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[38] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[39] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[40] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[41] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[42] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[43] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[44] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[45] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[46] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[47] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[48] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[49] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[50] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[51] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[52] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[53] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[54] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[55] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[56] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[57] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[58] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[59] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[60] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[61] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[62] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[63] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[64] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[65] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[66] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[67] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[68] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[69] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[70] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[71] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[72] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[73] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[74] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[75] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[76] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[77] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[78] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[79] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[80] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[81] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[82] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[83] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[84] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[85] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[86] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[87] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[88] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[89] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[90] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[91] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[92] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[93] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[94] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[95] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[96] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[97] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[98] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[99] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[100] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[101] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[102] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[103] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[104] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[105] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[106] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[107] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[108] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[109] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[110] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[111] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[112] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[113] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_wrreq" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[114] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[115] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[116] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[117] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[118] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[119] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[120] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[121] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[122] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[123] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|local_ready" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[124] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[125] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[126] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[127] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[128] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[129] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[130] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[131] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[132] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[133] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[134] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[135] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[136] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[137] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[138] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[139] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[140] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[141] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[142] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[143] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[144] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[145] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[146] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[147] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[148] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[149] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[150] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[151] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[152] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[153] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[154] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[155] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[156] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[157] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[158] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[159] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[160] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[161] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[162] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[163] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[164] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[165] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[166] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[167] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[168] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[169] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[170] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[171] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[172] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[173] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[174] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[175] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[176] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[177] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[178] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[179] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[180] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[181] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[182] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[183] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[184] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[185] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[186] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[187] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[188] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[189] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[190] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[191] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data_valid" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[192] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_finish" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[193] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[194] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[195] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[196] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[197] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[198] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[199] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[200] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[201] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[202] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[203] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[204] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[205] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[206] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[207] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[208] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[209] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[210] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[211] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[212] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[213] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[214] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|state.MEM_READ" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[215] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|state.MEM_READ_WAIT" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[216] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[217] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[218] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[219] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[220] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[221] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[222] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[223] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[224] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[225] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[226] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[227] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[228] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[229] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[230] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[231] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[232] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[233] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[234] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[235] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[236] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[237] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[238] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[239] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[240] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[241] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[242] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[243] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[244] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[245] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[246] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[247] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[248] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[249] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[250] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[251] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[252] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[253] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[254] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[255] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[256] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[257] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[258] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[259] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[260] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[261] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[262] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[263] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[264] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[265] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[266] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[267] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[268] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[269] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[270] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[271] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[272] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[273] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[274] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[275] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[276] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[277] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[278] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[279] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[280] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_rd" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[281] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_we" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[282] -to vga_hs -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[283] -to vga_vs -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to "SD_TOP:u_SD_TOP|SD_initial:SD_initial_inst|init_o" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_din[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_rd_ack" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_rd_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wr_ack" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wr_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[45] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[46] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[47] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[48] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[49] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[50] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[51] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[52] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[53] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[54] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[55] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[56] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[57] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[58] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[59] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[60] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[61] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|ddr_wraddr[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[62] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[63] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[64] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[65] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[66] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[67] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[68] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[69] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[70] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|rdfifo:u_rdfifo|wrusedw[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[71] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[72] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[73] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[74] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[75] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[76] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[77] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[78] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[79] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[80] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wr_length[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[81] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[82] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[83] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[84] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[85] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[86] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[87] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[88] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[89] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[90] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[91] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[92] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[93] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[94] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[95] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[96] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[97] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[98] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[99] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[100] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[101] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[102] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[103] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[104] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[105] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[106] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[107] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[108] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[109] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[110] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[111] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[112] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_din[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[113] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrf_wrreq" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[114] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[115] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[116] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[117] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[118] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[119] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[120] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[121] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[122] -to "ddr_2fifo_top:ddr_2fifo_top_inst|dcfifo_ctrl:u_dcfifo_ctrl|wrfifo:u_wrfifo|rdusedw[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[123] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|local_ready" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[124] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[125] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[126] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[127] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[128] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[129] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[130] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[131] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[132] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[133] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_addr_cnt[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[134] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[135] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[136] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[137] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[138] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[139] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[140] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[141] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[142] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[143] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[144] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[145] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[146] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[147] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[148] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[149] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[150] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[151] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[152] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[153] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[154] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[155] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[156] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[157] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[158] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_addr[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[159] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[160] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[161] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[162] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[163] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[164] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[165] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[166] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[167] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[168] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[169] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[170] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[171] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[172] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[173] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[174] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[175] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[176] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[177] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[178] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[179] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[180] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[181] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[182] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[183] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[184] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[185] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[186] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[187] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[188] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[189] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[190] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[191] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_data_valid" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[192] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_finish" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[193] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[194] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[195] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[196] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[197] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[198] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[199] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[200] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[201] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[202] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_len[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[203] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_burst_req" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[204] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[205] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[206] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[207] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[208] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[209] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[210] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[211] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[212] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[213] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|rd_data_cnt[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[214] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|state.MEM_READ" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[215] -to "ddr_2fifo_top:ddr_2fifo_top_inst|ddr_ctrl:ddr_ctrl_inst|mem_burst_v2:mem_burst_m0|state.MEM_READ_WAIT" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[216] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[217] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[218] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[219] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[220] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[221] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[222] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[223] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[224] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[225] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[226] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[227] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[228] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[229] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[230] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[231] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[232] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[233] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[234] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[235] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[236] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[237] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[238] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[239] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[240] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[241] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[242] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[243] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[244] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[245] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[246] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[247] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_in[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[248] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[249] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[250] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[251] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[252] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[253] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[254] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[255] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[256] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[257] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[258] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[259] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[260] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[261] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[262] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[263] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[264] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[265] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[266] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[267] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[268] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[269] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[270] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[271] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[272] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[273] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[274] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[275] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[276] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[277] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[278] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[279] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_data_out[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[280] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_rd" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[281] -to "ddr_2fifo_top:ddr_2fifo_top_inst|sys_we" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[282] -to vga_hs -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[283] -to vga_vs -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
