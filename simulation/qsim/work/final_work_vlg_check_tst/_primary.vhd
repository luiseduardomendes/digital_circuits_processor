library verilog;
use verilog.vl_types.all;
entity final_work_vlg_check_tst is
    port(
        cf_rem          : in     vl_logic;
        cg_ac           : in     vl_logic;
        cg_nz           : in     vl_logic;
        cg_pc           : in     vl_logic;
        cg_rdm          : in     vl_logic;
        cg_ri           : in     vl_logic;
        ctrl_rem        : in     vl_logic;
        inc_pc          : in     vl_logic;
        read            : in     vl_logic;
        write           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end final_work_vlg_check_tst;
