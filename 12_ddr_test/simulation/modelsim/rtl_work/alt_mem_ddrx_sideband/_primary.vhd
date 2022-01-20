library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_sideband is
    generic(
        CFG_PORT_WIDTH_TYPE: integer := 3;
        CFG_DWIDTH_RATIO: integer := 2;
        CFG_REG_GRANT   : integer := 1;
        CFG_CTL_TBP_NUM : integer := 4;
        CFG_MEM_IF_CS_WIDTH: integer := 1;
        CFG_MEM_IF_CHIP : integer := 1;
        CFG_MEM_IF_BA_WIDTH: integer := 3;
        CFG_PORT_WIDTH_TCL: integer := 4;
        CFG_PORT_WIDTH_CS_ADDR_WIDTH: integer := 2;
        CFG_MEM_IF_CLK_PAIR_COUNT: integer := 2;
        CFG_RANK_TIMER_OUTPUT_REG: integer := 0;
        T_PARAM_ARF_TO_VALID_WIDTH: integer := 10;
        T_PARAM_ARF_PERIOD_WIDTH: integer := 13;
        T_PARAM_PCH_ALL_TO_VALID_WIDTH: integer := 10;
        T_PARAM_SRF_TO_VALID_WIDTH: integer := 10;
        T_PARAM_SRF_TO_ZQ_CAL_WIDTH: integer := 10;
        T_PARAM_PDN_TO_VALID_WIDTH: integer := 6;
        T_PARAM_PDN_PERIOD_WIDTH: integer := 16;
        T_PARAM_POWER_SAVING_EXIT_WIDTH: integer := 6;
        T_PARAM_MEM_CLK_ENTRY_CYCLES_WIDTH: integer := 4;
        BANK_TIMER_COUNTER_OFFSET: integer := 2
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        rfsh_req        : in     vl_logic;
        rfsh_chip       : in     vl_logic_vector;
        rfsh_ack        : out    vl_logic;
        self_rfsh_req   : in     vl_logic;
        self_rfsh_chip  : in     vl_logic_vector;
        self_rfsh_ack   : out    vl_logic;
        deep_powerdn_req: in     vl_logic;
        deep_powerdn_chip: in     vl_logic_vector;
        deep_powerdn_ack: out    vl_logic;
        power_down_ack  : out    vl_logic;
        stall_row_arbiter: out    vl_logic;
        stall_col_arbiter: out    vl_logic;
        stall_chip      : out    vl_logic_vector;
        sb_do_precharge_all: out    vl_logic_vector;
        sb_do_refresh   : out    vl_logic_vector;
        sb_do_self_refresh: out    vl_logic_vector;
        sb_do_power_down: out    vl_logic_vector;
        sb_do_deep_pdown: out    vl_logic_vector;
        sb_do_zq_cal    : out    vl_logic_vector;
        sb_tbp_precharge_all: out    vl_logic_vector;
        ctl_mem_clk_disable: out    vl_logic_vector;
        ctl_cal_req     : out    vl_logic;
        ctl_init_req    : out    vl_logic;
        ctl_cal_success : in     vl_logic;
        cmd_gen_chipsel : in     vl_logic_vector;
        tbp_chipsel     : in     vl_logic_vector;
        tbp_load        : in     vl_logic_vector;
        t_param_arf_to_valid: in     vl_logic_vector;
        t_param_arf_period: in     vl_logic_vector;
        t_param_pch_all_to_valid: in     vl_logic_vector;
        t_param_srf_to_valid: in     vl_logic_vector;
        t_param_srf_to_zq_cal: in     vl_logic_vector;
        t_param_pdn_to_valid: in     vl_logic_vector;
        t_param_pdn_period: in     vl_logic_vector;
        t_param_power_saving_exit: in     vl_logic_vector;
        t_param_mem_clk_entry_cycles: in     vl_logic_vector;
        tbp_empty       : in     vl_logic;
        tbp_bank_closed : in     vl_logic_vector;
        tbp_timer_ready : in     vl_logic_vector;
        row_grant       : in     vl_logic;
        col_grant       : in     vl_logic;
        afi_ctl_refresh_done: out    vl_logic_vector;
        afi_seq_busy    : in     vl_logic_vector;
        afi_ctl_long_idle: out    vl_logic_vector;
        cfg_cs_addr_width: in     vl_logic_vector;
        cfg_enable_dqs_tracking: in     vl_logic;
        cfg_user_rfsh   : in     vl_logic;
        cfg_type        : in     vl_logic_vector;
        cfg_tcl         : in     vl_logic_vector;
        cfg_regdimm_enable: in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_TYPE : constant is 1;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of CFG_REG_GRANT : constant is 1;
    attribute mti_svvh_generic_type of CFG_CTL_TBP_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CHIP : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_BA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_TCL : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_CS_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CLK_PAIR_COUNT : constant is 1;
    attribute mti_svvh_generic_type of CFG_RANK_TIMER_OUTPUT_REG : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_ARF_TO_VALID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_ARF_PERIOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_PCH_ALL_TO_VALID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_SRF_TO_VALID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_SRF_TO_ZQ_CAL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_PDN_TO_VALID_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_PDN_PERIOD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_POWER_SAVING_EXIT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_MEM_CLK_ENTRY_CYCLES_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of BANK_TIMER_COUNTER_OFFSET : constant is 1;
end alt_mem_ddrx_sideband;
