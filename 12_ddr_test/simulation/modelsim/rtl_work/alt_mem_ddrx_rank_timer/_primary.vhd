library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_rank_timer is
    generic(
        CFG_DWIDTH_RATIO: integer := 2;
        CFG_CTL_TBP_NUM : integer := 4;
        CFG_CTL_ARBITER_TYPE: string  := "ROWCOL";
        CFG_MEM_IF_CHIP : integer := 1;
        CFG_MEM_IF_CS_WIDTH: integer := 1;
        CFG_INT_SIZE_WIDTH: integer := 4;
        CFG_AFI_INTF_PHASE_NUM: integer := 2;
        CFG_REG_GRANT   : integer := 0;
        CFG_RANK_TIMER_OUTPUT_REG: integer := 0;
        CFG_PORT_WIDTH_BURST_LENGTH: integer := 5;
        T_PARAM_FOUR_ACT_TO_ACT_WIDTH: integer := 0;
        T_PARAM_ACT_TO_ACT_DIFF_BANK_WIDTH: integer := 0;
        T_PARAM_WR_TO_WR_WIDTH: integer := 0;
        T_PARAM_WR_TO_WR_DIFF_CHIP_WIDTH: integer := 0;
        T_PARAM_WR_TO_RD_WIDTH: integer := 0;
        T_PARAM_WR_TO_RD_BC_WIDTH: integer := 0;
        T_PARAM_WR_TO_RD_DIFF_CHIP_WIDTH: integer := 0;
        T_PARAM_RD_TO_RD_WIDTH: integer := 0;
        T_PARAM_RD_TO_RD_DIFF_CHIP_WIDTH: integer := 0;
        T_PARAM_RD_TO_WR_WIDTH: integer := 0;
        T_PARAM_RD_TO_WR_BC_WIDTH: integer := 0;
        T_PARAM_RD_TO_WR_DIFF_CHIP_WIDTH: integer := 0
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        cfg_burst_length: in     vl_logic_vector;
        t_param_four_act_to_act: in     vl_logic_vector;
        t_param_act_to_act_diff_bank: in     vl_logic_vector;
        t_param_wr_to_wr: in     vl_logic_vector;
        t_param_wr_to_wr_diff_chip: in     vl_logic_vector;
        t_param_wr_to_rd: in     vl_logic_vector;
        t_param_wr_to_rd_bc: in     vl_logic_vector;
        t_param_wr_to_rd_diff_chip: in     vl_logic_vector;
        t_param_rd_to_rd: in     vl_logic_vector;
        t_param_rd_to_rd_diff_chip: in     vl_logic_vector;
        t_param_rd_to_wr: in     vl_logic_vector;
        t_param_rd_to_wr_bc: in     vl_logic_vector;
        t_param_rd_to_wr_diff_chip: in     vl_logic_vector;
        bg_do_write     : in     vl_logic_vector;
        bg_do_read      : in     vl_logic_vector;
        bg_do_burst_chop: in     vl_logic_vector;
        bg_do_burst_terminate: in     vl_logic_vector;
        bg_do_activate  : in     vl_logic_vector;
        bg_do_precharge : in     vl_logic_vector;
        bg_to_chip      : in     vl_logic_vector;
        bg_effective_size: in     vl_logic_vector;
        bg_interrupt_ready: in     vl_logic;
        cmd_gen_chipsel : in     vl_logic_vector;
        tbp_chipsel     : in     vl_logic_vector;
        tbp_load        : in     vl_logic_vector;
        stall_chip      : in     vl_logic_vector;
        can_activate    : out    vl_logic_vector;
        can_precharge   : out    vl_logic_vector;
        can_read        : out    vl_logic_vector;
        can_write       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of CFG_CTL_TBP_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_CTL_ARBITER_TYPE : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CHIP : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_INT_SIZE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_AFI_INTF_PHASE_NUM : constant is 1;
    attribute mti_svvh_generic_type of CFG_REG_GRANT : constant is 1;
    attribute mti_svvh_generic_type of CFG_RANK_TIMER_OUTPUT_REG : constant is 1;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_BURST_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_FOUR_ACT_TO_ACT_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_ACT_TO_ACT_DIFF_BANK_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_WR_TO_WR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_WR_TO_WR_DIFF_CHIP_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_WR_TO_RD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_WR_TO_RD_BC_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_WR_TO_RD_DIFF_CHIP_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_RD_TO_RD_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_RD_TO_RD_DIFF_CHIP_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_RD_TO_WR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_RD_TO_WR_BC_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of T_PARAM_RD_TO_WR_DIFF_CHIP_WIDTH : constant is 1;
end alt_mem_ddrx_rank_timer;
