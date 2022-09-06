library verilog;
use verilog.vl_types.all;
entity final_work_vlg_sample_tst is
    port(
        Ck              : in     vl_logic;
        instr           : in     vl_logic_vector(3 downto 0);
        N               : in     vl_logic;
        Rst             : in     vl_logic;
        Z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end final_work_vlg_sample_tst;
