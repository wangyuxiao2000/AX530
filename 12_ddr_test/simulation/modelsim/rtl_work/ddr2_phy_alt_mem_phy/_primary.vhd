library verilog;
use verilog.vl_types.all;
entity ddr2_phy_alt_mem_phy is
    generic(
        FAMILY          : string  := "CYCLONEIII";
        MEM_IF_MEMTYPE  : string  := "DDR2";
        LEVELLING       : integer := 0;
        SPEED_GRADE     : string  := "C6";
        DLL_DELAY_BUFFER_MODE: string  := "HIGH";
        DLL_DELAY_CHAIN_LENGTH: integer := 8;
        DQS_DELAY_CTL_WIDTH: integer := 6;
        DQS_OUT_MODE    : string  := "DELAY_CHAIN2";
        DQS_PHASE       : integer := 9000;
        DQS_PHASE_SETTING: integer := 2;
        DWIDTH_RATIO    : integer := 4;
        MEM_IF_DWIDTH   : integer := 64;
        MEM_IF_ADDR_WIDTH: integer := 13;
        MEM_IF_BANKADDR_WIDTH: integer := 3;
        MEM_IF_CS_WIDTH : integer := 2;
        MEM_IF_DM_WIDTH : integer := 8;
        MEM_IF_DM_PINS_EN: integer := 1;
        MEM_IF_DQ_PER_DQS: integer := 8;
        MEM_IF_DQS_WIDTH: integer := 8;
        MEM_IF_OCT_EN   : integer := 0;
        MEM_IF_CLK_PAIR_COUNT: integer := 3;
        MEM_IF_CLK_PS   : integer := 4000;
        MEM_IF_CLK_PS_STR: string  := "4000 ps";
        MEM_IF_MR_0     : integer := 0;
        MEM_IF_MR_1     : integer := 0;
        MEM_IF_MR_2     : integer := 0;
        MEM_IF_MR_3     : integer := 0;
        MEM_IF_PRESET_RLAT: integer := 0;
        PLL_STEPS_PER_CYCLE: integer := 24;
        SCAN_CLK_DIVIDE_BY: integer := 4;
        REDUCE_SIM_TIME : integer := 0;
        CAPABILITIES    : integer := 0;
        TINIT_TCK       : integer := 40000;
        TINIT_RST       : integer := 100000;
        DBG_A_WIDTH     : integer := 13;
        SEQ_STRING_ID   : string  := "seq_name";
        MEM_IF_CS_PER_RANK: integer := 1;
        MEM_IF_RANKS_PER_SLOT: integer := 1;
        MEM_IF_RDV_PER_CHIP: integer := 0;
        GENERATE_ADDITIONAL_DBG_RTL: integer := 0;
        CAPTURE_PHASE_OFFSET: integer := 0;
        MEM_IF_ADDR_CMD_PHASE: integer := 0;
        DLL_EXPORT_IMPORT: string  := "NONE";
        MEM_IF_DQSN_EN  : integer := 1;
        RANK_HAS_ADDR_SWAP: integer := 0
    );
    port(
        pll_ref_clk     : in     vl_logic;
        global_reset_n  : in     vl_logic;
        soft_reset_n    : in     vl_logic;
        reset_request_n : out    vl_logic;
        ctl_clk         : out    vl_logic;
        ctl_reset_n     : out    vl_logic;
        ctl_dqs_burst   : in     vl_logic_vector;
        ctl_wdata_valid : in     vl_logic_vector;
        ctl_wdata       : in     vl_logic_vector;
        ctl_dm          : in     vl_logic_vector;
        ctl_wlat        : out    vl_logic_vector(4 downto 0);
        ctl_addr        : in     vl_logic_vector;
        ctl_ba          : in     vl_logic_vector;
        ctl_cas_n       : in     vl_logic_vector;
        ctl_cke         : in     vl_logic_vector;
        ctl_cs_n        : in     vl_logic_vector;
        ctl_odt         : in     vl_logic_vector;
        ctl_ras_n       : in     vl_logic_vector;
        ctl_we_n        : in     vl_logic_vector;
        ctl_rst_n       : in     vl_logic_vector;
        ctl_mem_clk_disable: in     vl_logic_vector;
        ctl_doing_rd    : in     vl_logic_vector;
        ctl_rdata       : out    vl_logic_vector;
        ctl_rdata_valid : out    vl_logic_vector;
        ctl_rlat        : out    vl_logic_vector(4 downto 0);
        ctl_cal_req     : in     vl_logic;
        ctl_cal_byte_lane_sel_n: in     vl_logic_vector;
        ctl_cal_success : out    vl_logic;
        ctl_cal_fail    : out    vl_logic;
        ctl_cal_warning : out    vl_logic;
        mem_addr        : out    vl_logic_vector;
        mem_ba          : out    vl_logic_vector;
        mem_cas_n       : out    vl_logic;
        mem_cke         : out    vl_logic_vector;
        mem_cs_n        : out    vl_logic_vector;
        mem_dm          : out    vl_logic_vector;
        mem_odt         : out    vl_logic_vector;
        mem_ras_n       : out    vl_logic;
        mem_we_n        : out    vl_logic;
        mem_clk         : inout  vl_logic_vector;
        mem_clk_n       : inout  vl_logic_vector;
        mem_reset_n     : out    vl_logic;
        mem_dq          : inout  vl_logic_vector;
        mem_dqs         : inout  vl_logic_vector;
        mem_dqs_n       : inout  vl_logic_vector;
        aux_half_rate_clk: out    vl_logic;
        aux_full_rate_clk: out    vl_logic;
        dbg_clk         : in     vl_logic;
        dbg_reset_n     : in     vl_logic;
        dbg_addr        : in     vl_logic_vector;
        dbg_wr          : in     vl_logic;
        dbg_rd          : in     vl_logic;
        dbg_cs          : in     vl_logic;
        dbg_wr_data     : in     vl_logic_vector(31 downto 0);
        dbg_rd_data     : out    vl_logic_vector(31 downto 0);
        dbg_waitrequest : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FAMILY : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_MEMTYPE : constant is 1;
    attribute mti_svvh_generic_type of LEVELLING : constant is 1;
    attribute mti_svvh_generic_type of SPEED_GRADE : constant is 1;
    attribute mti_svvh_generic_type of DLL_DELAY_BUFFER_MODE : constant is 1;
    attribute mti_svvh_generic_type of DLL_DELAY_CHAIN_LENGTH : constant is 1;
    attribute mti_svvh_generic_type of DQS_DELAY_CTL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DQS_OUT_MODE : constant is 1;
    attribute mti_svvh_generic_type of DQS_PHASE : constant is 1;
    attribute mti_svvh_generic_type of DQS_PHASE_SETTING : constant is 1;
    attribute mti_svvh_generic_type of DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DWIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_BANKADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_CS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DM_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DM_PINS_EN : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DQ_PER_DQS : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DQS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_OCT_EN : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_CLK_PAIR_COUNT : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_CLK_PS : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_CLK_PS_STR : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_MR_0 : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_MR_1 : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_MR_2 : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_MR_3 : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_PRESET_RLAT : constant is 1;
    attribute mti_svvh_generic_type of PLL_STEPS_PER_CYCLE : constant is 1;
    attribute mti_svvh_generic_type of SCAN_CLK_DIVIDE_BY : constant is 1;
    attribute mti_svvh_generic_type of REDUCE_SIM_TIME : constant is 1;
    attribute mti_svvh_generic_type of CAPABILITIES : constant is 1;
    attribute mti_svvh_generic_type of TINIT_TCK : constant is 1;
    attribute mti_svvh_generic_type of TINIT_RST : constant is 1;
    attribute mti_svvh_generic_type of DBG_A_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of SEQ_STRING_ID : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_CS_PER_RANK : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_RANKS_PER_SLOT : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_RDV_PER_CHIP : constant is 1;
    attribute mti_svvh_generic_type of GENERATE_ADDITIONAL_DBG_RTL : constant is 1;
    attribute mti_svvh_generic_type of CAPTURE_PHASE_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_ADDR_CMD_PHASE : constant is 1;
    attribute mti_svvh_generic_type of DLL_EXPORT_IMPORT : constant is 1;
    attribute mti_svvh_generic_type of MEM_IF_DQSN_EN : constant is 1;
    attribute mti_svvh_generic_type of RANK_HAS_ADDR_SWAP : constant is 1;
end ddr2_phy_alt_mem_phy;
