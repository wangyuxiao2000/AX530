library verilog;
use verilog.vl_types.all;
entity ddr2_example_top_tb is
    generic(
        gMEM_CHIPSELS   : integer := 1;
        gMEM_CS_PER_RANK: integer := 1;
        gMEM_NUM_RANKS  : integer := 1;
        gMEM_BANK_BITS  : integer := 3;
        gMEM_ROW_BITS   : integer := 13;
        gMEM_COL_BITS   : integer := 10;
        gMEM_ADDR_BITS  : integer := 13;
        gMEM_DQ_PER_DQS : integer := 8;
        DM_DQS_WIDTH    : integer := 2;
        gLOCAL_DATA_BITS: integer := 32;
        gLOCAL_IF_DWIDTH_AFTER_ECC: integer := 32;
        gNUM_CLOCK_PAIRS: integer := 1;
        RTL_ROUNDTRIP_CLOCKS: real    := 0.000000;
        CLOCK_TICK_IN_PS: integer := 5998;
        REGISTERED_DIMM : vl_logic := Hi0;
        BOARD_DQS_DELAY : integer := 0;
        BOARD_CLK_DELAY : integer := 0;
        DWIDTH_RATIO    : integer := 2;
        TINIT_CLOCKS    : integer := 33334;
        REF_CLOCK_TICK_IN_PS: integer := 20000;
        gMEM_TQHS_PS    : integer := 450;
        gMEM_TAC_PS     : integer := 600;
        gMEM_TDQSQ_PS   : integer := 350;
        gMEM_IF_TRCD_NS : real    := 15.000000;
        gMEM_IF_TWTR_CK : integer := 2;
        gMEM_TDSS_CK    : real    := 0.200000;
        gMEM_IF_TRFC_NS : real    := 105.000000;
        gMEM_IF_TRP_NS  : real    := 15.000000;
        gMEM_IF_TRCD_PS : vl_notype;
        gMEM_IF_TWTR_PS : vl_notype;
        gMEM_IF_TRFC_PS : vl_notype;
        gMEM_IF_TRP_PS  : vl_notype;
        CLOCK_TICK_IN_NS: vl_notype;
        gMEM_TDQSQ_NS   : vl_notype;
        gMEM_TDSS_NS    : vl_notype;
        RTL_DELAYS      : integer := 1;
        USE_GENERIC_MEMORY_MODEL: vl_logic := Hi0;
        D90_DEG_DELAY   : integer := 0;
        GATE_BOARD_DQS_DELAY: vl_notype;
        GATE_BOARD_CLK_DELAY: vl_notype;
        gMEM_CLK_PHASE_EN: string  := "false";
        gMEM_CLK_PHASE  : real    := 0.000000e+000;
        MEM_CLK_RATIO   : real;
        MEM_CLK_DELAY   : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of gMEM_CHIPSELS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_CS_PER_RANK : constant is 1;
    attribute mti_svvh_generic_type of gMEM_NUM_RANKS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_BANK_BITS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_ROW_BITS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_COL_BITS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_ADDR_BITS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_DQ_PER_DQS : constant is 1;
    attribute mti_svvh_generic_type of DM_DQS_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of gLOCAL_DATA_BITS : constant is 1;
    attribute mti_svvh_generic_type of gLOCAL_IF_DWIDTH_AFTER_ECC : constant is 1;
    attribute mti_svvh_generic_type of gNUM_CLOCK_PAIRS : constant is 1;
    attribute mti_svvh_generic_type of RTL_ROUNDTRIP_CLOCKS : constant is 1;
    attribute mti_svvh_generic_type of CLOCK_TICK_IN_PS : constant is 1;
    attribute mti_svvh_generic_type of REGISTERED_DIMM : constant is 1;
    attribute mti_svvh_generic_type of BOARD_DQS_DELAY : constant is 1;
    attribute mti_svvh_generic_type of BOARD_CLK_DELAY : constant is 1;
    attribute mti_svvh_generic_type of DWIDTH_RATIO : constant is 1;
    attribute mti_svvh_generic_type of TINIT_CLOCKS : constant is 1;
    attribute mti_svvh_generic_type of REF_CLOCK_TICK_IN_PS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_TQHS_PS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_TAC_PS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_TDQSQ_PS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_IF_TRCD_NS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_IF_TWTR_CK : constant is 1;
    attribute mti_svvh_generic_type of gMEM_TDSS_CK : constant is 1;
    attribute mti_svvh_generic_type of gMEM_IF_TRFC_NS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_IF_TRP_NS : constant is 1;
    attribute mti_svvh_generic_type of gMEM_IF_TRCD_PS : constant is 3;
    attribute mti_svvh_generic_type of gMEM_IF_TWTR_PS : constant is 3;
    attribute mti_svvh_generic_type of gMEM_IF_TRFC_PS : constant is 3;
    attribute mti_svvh_generic_type of gMEM_IF_TRP_PS : constant is 3;
    attribute mti_svvh_generic_type of CLOCK_TICK_IN_NS : constant is 3;
    attribute mti_svvh_generic_type of gMEM_TDQSQ_NS : constant is 3;
    attribute mti_svvh_generic_type of gMEM_TDSS_NS : constant is 3;
    attribute mti_svvh_generic_type of RTL_DELAYS : constant is 1;
    attribute mti_svvh_generic_type of USE_GENERIC_MEMORY_MODEL : constant is 1;
    attribute mti_svvh_generic_type of D90_DEG_DELAY : constant is 1;
    attribute mti_svvh_generic_type of GATE_BOARD_DQS_DELAY : constant is 3;
    attribute mti_svvh_generic_type of GATE_BOARD_CLK_DELAY : constant is 3;
    attribute mti_svvh_generic_type of gMEM_CLK_PHASE_EN : constant is 1;
    attribute mti_svvh_generic_type of gMEM_CLK_PHASE : constant is 2;
    attribute mti_svvh_generic_type of MEM_CLK_RATIO : constant is 4;
    attribute mti_svvh_generic_type of MEM_CLK_DELAY : constant is 3;
end ddr2_example_top_tb;
