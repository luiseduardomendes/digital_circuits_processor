library verilog;
use verilog.vl_types.all;
entity testes_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end testes_vlg_sample_tst;
