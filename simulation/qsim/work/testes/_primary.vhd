library verilog;
use verilog.vl_types.all;
entity testes is
    port(
        zero            : out    vl_logic;
        rst             : in     vl_logic;
        clock           : in     vl_logic;
        negative        : out    vl_logic;
        overflow        : out    vl_logic;
        carry           : out    vl_logic;
        borrow          : out    vl_logic;
        pc              : out    vl_logic_vector(7 downto 0);
        s               : out    vl_logic_vector(7 downto 0)
    );
end testes;
