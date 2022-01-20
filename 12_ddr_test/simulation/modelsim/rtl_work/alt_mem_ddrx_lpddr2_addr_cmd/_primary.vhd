library verilog;
use verilog.vl_types.all;
entity alt_mem_ddrx_lpddr2_addr_cmd is
    generic(
        CFG_PORT_WIDTH_OUTPUT_REGD: integer := 1;
        CFG_MEM_IF_CHIP : integer := 1;
        CFG_MEM_IF_CKE_WIDTH: integer := 1;
        CFG_MEM_IF_ADDR_WIDTH: integer := 20;
        CFG_MEM_IF_ROW_WIDTH: integer := 15;
        CFG_MEM_IF_COL_WIDTH: integer := 12;
        CFG_MEM_IF_BA_WIDTH: integer := 3;
        CFG_DWIDTH_RATIO: integer := 2
    );
    port(
        ctl_clk         : in     vl_logic;
        ctl_reset_n     : in     vl_logic;
        ctl_cal_success : in     vl_logic;
        cfg_output_regd : in     vl_logic_vector;
        cfg_enable_chipsel_for_sideband: in     vl_logic;
        do_write        : in     vl_logic;
        do_read         : in     vl_logic;
        do_auto_precharge: in     vl_logic;
        do_activate     : in     vl_logic;
        do_precharge    : in     vl_logic;
        do_precharge_all: in     vl_logic_vector;
        do_refresh      : in     vl_logic_vector;
        do_self_refresh : in     vl_logic_vector;
        do_power_down   : in     vl_logic_vector;
        do_lmr          : in     vl_logic;
        do_lmr_read     : in     vl_logic;
        do_refresh_1bank: in     vl_logic;
        do_burst_terminate: in     vl_logic;
        do_deep_pwrdwn  : in     vl_logic_vector;
        to_chip         : in     vl_logic_vector;
        to_bank         : in     vl_logic_vector;
        to_row          : in     vl_logic_vector;
        to_col          : in     vl_logic_vector;
        to_lmr          : in     vl_logic_vector(7 downto 0);
        lmr_opcode      : in     vl_logic_vector(7 downto 0);
        afi_cke         : out    vl_logic_vector;
        afi_cs_n        : out    vl_logic_vector;
        afi_addr        : out    vl_logic_vector;
        afi_rst_n       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CFG_PORT_WIDTH_OUTPUT_REGD : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CHIP : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_CKE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_ROW_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_COL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_MEM_IF_BA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CFG_DWIDTH_RATIO : constant is 1;
end alt_mem_ddrx_lpddr2_addr_cmd;
