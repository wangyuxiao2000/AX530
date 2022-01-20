library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_dataid_manager is
    generic(
        CFG_DATA_ID_WIDTH: integer := 8;
        CFG_DRAM_WLAT_GROUP: integer := 1;
        CFG_LOCAL_WLAT_GROUP: integer := 1;
        CFG_BUFFER_ADDR_WIDTH: integer := 6;
        CFG_INT_SIZE_WIDTH: integer := 1;
        CFG_TBP_NUM     : integer := 4;
        CFG_BURSTCOUNT_TRACKING_WIDTH: integer := 7;
        CFG_PORT_WIDTH_BURST_LENGTH: integer := 5;
        CFG_DWIDTH_RATIO: integer := 2
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        cfg_burst_length: in     vl_logic_vector;
        cfg_enable_ecc  : in     vl_logic;
        cfg_enable_auto_corr: in     vl_logic;
        cfg_enable_no_dm: in     vl_logic;
        update_cmd_if_ready: out    vl_logic;
        update_cmd_if_valid: in     vl_logic;
        update_cmd_if_data_id: in     vl_logic_vector;
        update_cmd_if_burstcount: in     vl_logic_vector;
        update_cmd_if_tbp_id: in     vl_logic_vector;
        update_data_if_valid: in     vl_logic;
        update_data_if_data_id: in     vl_logic_vector;
        update_data_if_data_id_vector: in     vl_logic_vector;
        update_data_if_burstcount: in     vl_logic_vector;
        update_data_if_next_burstcount: in     vl_logic_vector;
        notify_data_if_valid: out    vl_logic;
        notify_data_if_burstcount: out    vl_logic_vector;
        notify_tbp_data_ready: out    vl_logic_vector;
        notify_tbp_data_partial_be: out    vl_logic;
        write_data_if_ready: out    vl_logic;
        write_data_if_valid: in     vl_logic;
        write_data_if_accepted: out    vl_logic;
        write_data_if_address: out    vl_logic_vector;
        write_data_if_partial_dm: in     vl_logic;
        read_data_if_valid: in     vl_logic_vector;
        read_data_if_data_id: in     vl_logic_vector;
        read_data_if_data_id_vector: in     vl_logic_vector;
        read_data_if_valid_first: in     vl_logic;
        read_data_if_data_id_first: in     vl_logic_vector;
        read_data_if_data_id_vector_first: in     vl_logic_vector;
        read_data_if_valid_first_vector: in     vl_logic_vector;
        read_data_if_valid_last: in     vl_logic;
        read_data_if_data_id_last: in     vl_logic_vector;
        read_data_if_data_id_vector_last: in     vl_logic_vector;
        read_data_if_address: out    vl_logic_vector;
        read_data_if_datavalid: out    vl_logic_vector;
        read_data_if_done: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_DATA_ID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DRAM_WLAT_GROUP : constant is 1;
    attribute mti_svvh_generic_type of CFG_LOCAL_WLAT_GROUP : constant is 1;
    attribute mti_svvh_generic_type of CFG_BUFFER_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_INT_SIZE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_TBP_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_BURSTCOUNT_TRACKING_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_BURST_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
end alt_mem_ddrx_dataid_manager;
