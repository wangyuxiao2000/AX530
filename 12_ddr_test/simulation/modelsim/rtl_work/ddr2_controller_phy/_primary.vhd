library verilog;
use verilog.vl_types.all;
entity ddr2_controller_phy is
    port(
        dqs_delay_ctrl_import: in     vl_logic_vector(5 downto 0);
        dqs_offset_delay_ctrl: in     vl_logic_vector(5 downto 0);
        global_reset_n  : in     vl_logic;
        hc_scan_ck      : in     vl_logic;
        hc_scan_din     : in     vl_logic_vector(1 downto 0);
        hc_scan_enable_access: in     vl_logic;
        hc_scan_enable_dm: in     vl_logic_vector(1 downto 0);
        hc_scan_enable_dq: in     vl_logic_vector(15 downto 0);
        hc_scan_enable_dqs: in     vl_logic_vector(1 downto 0);
        hc_scan_enable_dqs_config: in     vl_logic_vector(1 downto 0);
        hc_scan_update  : in     vl_logic_vector(1 downto 0);
        local_address   : in     vl_logic_vector(24 downto 0);
        local_autopch_req: in     vl_logic;
        local_be        : in     vl_logic_vector(3 downto 0);
        local_burstbegin: in     vl_logic;
        local_multicast_req: in     vl_logic;
        local_read_req  : in     vl_logic;
        local_refresh_chip: in     vl_logic;
        local_refresh_req: in     vl_logic;
        local_self_rfsh_chip: in     vl_logic;
        local_self_rfsh_req: in     vl_logic;
        local_size      : in     vl_logic_vector(2 downto 0);
        local_wdata     : in     vl_logic_vector(31 downto 0);
        local_write_req : in     vl_logic;
        oct_ctl_rs_value: in     vl_logic_vector(13 downto 0);
        oct_ctl_rt_value: in     vl_logic_vector(13 downto 0);
        pll_phasecounterselect: in     vl_logic_vector(3 downto 0);
        pll_phasestep   : in     vl_logic;
        pll_phaseupdown : in     vl_logic;
        pll_reconfig    : in     vl_logic;
        pll_reconfig_counter_param: in     vl_logic_vector(2 downto 0);
        pll_reconfig_counter_type: in     vl_logic_vector(3 downto 0);
        pll_reconfig_data_in: in     vl_logic_vector(8 downto 0);
        pll_reconfig_enable: in     vl_logic;
        pll_reconfig_read_param: in     vl_logic;
        pll_reconfig_soft_reset_en_n: in     vl_logic;
        pll_reconfig_write_param: in     vl_logic;
        pll_ref_clk     : in     vl_logic;
        soft_reset_n    : in     vl_logic;
        aux_full_rate_clk: out    vl_logic;
        aux_half_rate_clk: out    vl_logic;
        aux_scan_clk    : out    vl_logic;
        aux_scan_clk_reset_n: out    vl_logic;
        dll_reference_clk: out    vl_logic;
        dqs_delay_ctrl_export: out    vl_logic_vector(5 downto 0);
        ecc_interrupt   : out    vl_logic;
        hc_scan_dout    : out    vl_logic_vector(15 downto 0);
        local_init_done : out    vl_logic;
        local_power_down_ack: out    vl_logic;
        local_rdata     : out    vl_logic_vector(31 downto 0);
        local_rdata_valid: out    vl_logic;
        local_ready     : out    vl_logic;
        local_refresh_ack: out    vl_logic;
        local_self_rfsh_ack: out    vl_logic;
        mem_addr        : out    vl_logic_vector(12 downto 0);
        mem_ba          : out    vl_logic_vector(2 downto 0);
        mem_cas_n       : out    vl_logic;
        mem_cke         : out    vl_logic_vector(0 downto 0);
        mem_clk         : inout  vl_logic_vector(0 downto 0);
        mem_clk_n       : inout  vl_logic_vector(0 downto 0);
        mem_cs_n        : out    vl_logic_vector(0 downto 0);
        mem_dm          : out    vl_logic_vector(1 downto 0);
        mem_dq          : inout  vl_logic_vector(15 downto 0);
        mem_dqs         : inout  vl_logic_vector(1 downto 0);
        mem_dqsn        : inout  vl_logic_vector(1 downto 0);
        mem_odt         : out    vl_logic_vector(0 downto 0);
        mem_ras_n       : out    vl_logic;
        mem_reset_n     : out    vl_logic;
        mem_we_n        : out    vl_logic;
        phy_clk         : out    vl_logic;
        pll_phase_done  : out    vl_logic;
        pll_reconfig_busy: out    vl_logic;
        pll_reconfig_clk: out    vl_logic;
        pll_reconfig_data_out: out    vl_logic_vector(8 downto 0);
        pll_reconfig_reset: out    vl_logic;
        reset_phy_clk_n : out    vl_logic;
        reset_request_n : out    vl_logic
    );
end ddr2_controller_phy;
