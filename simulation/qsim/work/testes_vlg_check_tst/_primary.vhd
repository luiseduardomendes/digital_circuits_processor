library verilog;
use verilog.vl_types.all;
entity testes_vlg_check_tst is
    port(
        borrow          : in     vl_logic;
        carry           : in     vl_logic;
        negative        : in     vl_logic;
        overflow        : in     vl_logic;
        pc              : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end testes_vlg_check_tst;
