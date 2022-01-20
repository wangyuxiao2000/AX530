library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_arbiter is
    generic(
        CFG_DWIDTH_RATIO: integer := 4;
        CFG_CTL_TBP_NUM : integer := 4;
        CFG_CTL_ARBITER_TYPE: string  := "ROWCOL";
        CFG_REG_GRANT   : integer := 0;
        CFG_REG_REQ     : integer := 0;
        CFG_MEM_IF_CHIP : integer := 1;
        CFG_MEM_IF_CS_WIDTH: integer := 1;
        CFG_MEM_IF_BA_WIDTH: integer := 3;
        CFG_MEM_IF_ROW_WIDTH: integer := 13;
        CFG_MEM_IF_COL_WIDTH: integer := 10;
        CFG_LOCAL_ID_WIDTH: integer := 10;
        CFG_DATA_ID_WIDTH: integer := 10;
        CFG_INT_SIZE_WIDTH: integer := 4;
        CFG_AFI_INTF_PHASE_NUM: integer := 2;
        CFG_DISABLE_PRIORITY: integer := 1
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        stall_row_arbiter: in     vl_logic;
        stall_col_arbiter: in     vl_logic;
        sb_do_precharge_all: in     vl_logic_vector;
        sb_do_refresh   : in     vl_logic_vector;
        sb_do_self_refresh: in     vl_logic_vector;
        sb_do_power_down: in     vl_logic_vector;
        sb_do_deep_pdown: in     vl_logic_vector;
        sb_do_zq_cal    : in     vl_logic_vector;
        row_req         : in     vl_logic_vector;
        col_req         : in     vl_logic_vector;
        act_req         : in     vl_logic_vector;
        pch_req         : in     vl_logic_vector;
        rd_req          : in     vl_logic_vector;
        wr_req          : in     vl_logic_vector;
        row_grant       : out    vl_logic_vector;
        col_grant       : out    vl_logic_vector;
        act_grant       : out    vl_logic_vector;
        pch_grant       : out    vl_logic_vector;
        rd_grant        : out    vl_logic_vector;
        wr_grant        : out    vl_logic_vector;
        log2_row_grant  : out    vl_logic_vector;
        log2_col_grant  : out    vl_logic_vector;
        log2_act_grant  : out    vl_logic_vector;
        log2_pch_grant  : out    vl_logic_vector;
        log2_rd_grant   : out    vl_logic_vector;
        log2_wr_grant   : out    vl_logic_vector;
        or_row_grant    : out    vl_logic;
        or_col_grant    : out    vl_logic;
        tbp_activate    : in     vl_logic_vector;
        tbp_precharge   : in     vl_logic_vector;
        tbp_read        : in     vl_logic_vector;
        tbp_write       : in     vl_logic_vector;
        tbp_chipsel     : in     vl_logic_vector;
        tbp_bank        : in     vl_logic_vector;
        tbp_row         : in     vl_logic_vector;
        tbp_col         : in     vl_logic_vector;
        tbp_size        : in     vl_logic_vector;
        tbp_localid     : in     vl_logic_vector;
        tbp_dataid      : in     vl_logic_vector;
        tbp_ap          : in     vl_logic_vector;
        tbp_burst_chop  : in     vl_logic_vector;
        tbp_rmw_correct : in     vl_logic_vector;
        tbp_rmw_partial : in     vl_logic_vector;
        tbp_age         : in     vl_logic_vector;
        tbp_priority    : in     vl_logic_vector;
        can_activate    : in     vl_logic_vector;
        can_precharge   : in     vl_logic_vector;
        can_write       : in     vl_logic_vector;
        can_read        : in     vl_logic_vector;
        arb_do_write    : out    vl_logic_vector;
        arb_do_read     : out    vl_logic_vector;
        arb_do_burst_chop: out    vl_logic_vector;
        arb_do_burst_terminate: out    vl_logic_vector;
        arb_do_auto_precharge: out    vl_logic_vector;
        arb_do_rmw_correct: out    vl_logic_vector;
        arb_do_rmw_partial: out    vl_logic_vector;
        arb_do_activate : out    vl_logic_vector;
        arb_do_precharge: out    vl_logic_vector;
        arb_do_precharge_all: out    vl_logic_vector;
        arb_do_refresh  : out    vl_logic_vector;
        arb_do_self_refresh: out    vl_logic_vector;
        arb_do_power_down: out    vl_logic_vector;
        arb_do_deep_pdown: out    vl_logic_vector;
        arb_do_zq_cal   : out    vl_logic_vector;
        arb_do_lmr      : out    vl_logic_vector;
        arb_to_chipsel  : out    vl_logic_vector;
        arb_to_chip     : out    vl_logic_vector;
        arb_to_bank     : out    vl_logic_vector;
        arb_to_row      : out    vl_logic_vector;
        arb_to_col      : out    vl_logic_vector;
        arb_localid     : out    vl_logic_vector;
        arb_dataid      : out    vl_logic_vector;
        arb_size        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of CFG_CTL_TBP_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_CTL_ARBITER_TYPE : constant is 1;
    attribute mti_svvh_generic_type of CFG_REG_GRANT : constant is 1;
    attribute mti_svvh_generic_type of CFG_REG_REQ : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CHIP : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_BA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_ROW_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_COL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_LOCAL_ID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DATA_ID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_INT_SIZE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_AFI_INTF_PHASE_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_DISABLE_PRIORITY : constant is 1;
end alt_mem_ddrx_arbiter;
