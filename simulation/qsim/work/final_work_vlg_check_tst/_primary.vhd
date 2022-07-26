library verilog;
use verilog.vl_types.all;
entity final_work_vlg_check_tst is
    port(
        bf              : in     vl_logic;
        cf              : in     vl_logic;
        nf              : in     vl_logic;
        s               : in     vl_logic_vector(7 downto 0);
        vf              : in     vl_logic;
        zf              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end final_work_vlg_check_tst;
