library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_rdata_path is
    generic(
        CFG_LOCAL_DATA_WIDTH: integer := 8;
        CFG_INT_SIZE_WIDTH: integer := 2;
        CFG_DATA_ID_WIDTH: integer := 3;
        CFG_LOCAL_ID_WIDTH: integer := 3;
        CFG_LOCAL_ADDR_WIDTH: integer := 32;
        CFG_BUFFER_ADDR_WIDTH: integer := 5;
        CFG_MEM_IF_CS_WIDTH: integer := 2;
        CFG_MEM_IF_BA_WIDTH: integer := 3;
        CFG_MEM_IF_ROW_WIDTH: integer := 13;
        CFG_MEM_IF_COL_WIDTH: integer := 10;
        CFG_MAX_READ_CMD_NUM_WIDTH: integer := 4;
        CFG_RDATA_RETURN_MODE: string  := "PASSTHROUGH";
        CFG_AFI_INTF_PHASE_NUM: integer := 2;
        CFG_ERRCMD_FIFO_ADDR_WIDTH: integer := 3;
        CFG_DWIDTH_RATIO: integer := 2;
        CFG_ECC_MULTIPLES: integer := 1;
        CFG_ECC_CODE_WIDTH: integer := 8;
        CFG_PORT_WIDTH_TYPE: integer := 3;
        CFG_PORT_WIDTH_ENABLE_ECC: integer := 1;
        CFG_PORT_WIDTH_ENABLE_AUTO_CORR: integer := 1;
        CFG_PORT_WIDTH_ENABLE_NO_DM: integer := 1;
        CFG_PORT_WIDTH_BURST_LENGTH: integer := 5;
        CFG_PORT_WIDTH_ADDR_ORDER: integer := 2;
        CFG_PORT_WIDTH_COL_ADDR_WIDTH: integer := 9;
        CFG_PORT_WIDTH_ROW_ADDR_WIDTH: integer := 12;
        CFG_PORT_WIDTH_BANK_ADDR_WIDTH: integer := 3;
        CFG_PORT_WIDTH_CS_ADDR_WIDTH: integer := 2;
        CFG_ERRCMD_FIFO_REG: integer := 1
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        cfg_type        : in     vl_logic_vector;
        cfg_enable_ecc  : in     vl_logic_vector;
        cfg_enable_auto_corr: in     vl_logic_vector;
        cfg_enable_no_dm: in     vl_logic_vector;
        cfg_burst_length: in     vl_logic_vector;
        cfg_addr_order  : in     vl_logic_vector;
        cfg_col_addr_width: in     vl_logic_vector;
        cfg_row_addr_width: in     vl_logic_vector;
        cfg_bank_addr_width: in     vl_logic_vector;
        cfg_cs_addr_width: in     vl_logic_vector;
        rdatap_free_id_valid: out    vl_logic;
        rdatap_free_id_dataid: out    vl_logic_vector;
        proc_busy       : in     vl_logic;
        proc_load       : in     vl_logic;
        proc_load_dataid: in     vl_logic;
        proc_read       : in     vl_logic;
        proc_size       : in     vl_logic_vector;
        proc_localid    : in     vl_logic_vector;
        read_data_valid : out    vl_logic;
        read_data       : out    vl_logic_vector;
        read_data_error : out    vl_logic;
        read_data_localid: out    vl_logic_vector;
        bg_do_read      : in     vl_logic_vector;
        bg_to_chipsel   : in     vl_logic_vector;
        bg_to_bank      : in     vl_logic_vector;
        bg_to_row       : in     vl_logic_vector;
        bg_to_column    : in     vl_logic_vector;
        bg_dataid       : in     vl_logic_vector;
        bg_localid      : in     vl_logic_vector;
        bg_size         : in     vl_logic_vector;
        bg_do_rmw_correct: in     vl_logic_vector;
        bg_do_rmw_partial: in     vl_logic_vector;
        ecc_rdata       : in     vl_logic_vector;
        ecc_rdatav      : in     vl_logic;
        ecc_sbe         : in     vl_logic_vector;
        ecc_dbe         : in     vl_logic_vector;
        ecc_code        : in     vl_logic_vector;
        errcmd_ready    : in     vl_logic;
        errcmd_valid    : out    vl_logic;
        errcmd_chipsel  : out    vl_logic_vector;
        errcmd_bank     : out    vl_logic_vector;
        errcmd_row      : out    vl_logic_vector;
        errcmd_column   : out    vl_logic_vector;
        errcmd_size     : out    vl_logic_vector;
        errcmd_localid  : out    vl_logic_vector;
        rdatap_rcvd_addr: out    vl_logic_vector;
        rdatap_rcvd_cmd : out    vl_logic;
        rdatap_rcvd_corr_dropped: out    vl_logic;
        rmwfifo_data_valid: out    vl_logic;
        rmwfifo_data    : out    vl_logic_vector;
        rmwfifo_ecc_dbe : out    vl_logic_vector;
        rmwfifo_ecc_code: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_LOCAL_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_INT_SIZE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DATA_ID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_LOCAL_ID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_LOCAL_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_BUFFER_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_BA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_ROW_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_COL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MAX_READ_CMD_NUM_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_RDATA_RETURN_MODE : constant is 1;
    attribute mti_svvh_generic_type of CFG_AFI_INTF_PHASE_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_ERRCMD_FIFO_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of CFG_ECC_MULTIPLES : constant is 1;
    attribute mti_svvh_generic_type of CFG_ECC_CODE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_TYPE : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_ENABLE_ECC : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_ENABLE_AUTO_CORR : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_ENABLE_NO_DM : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_BURST_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_ADDR_ORDER : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_COL_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_ROW_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_BANK_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_CS_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_ERRCMD_FIFO_REG : constant is 1;
end alt_mem_ddrx_rdata_path;