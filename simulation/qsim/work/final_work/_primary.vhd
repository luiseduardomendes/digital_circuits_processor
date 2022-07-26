library verilog;
use verilog.vl_types.all;
entity final_work is
    port(
        bf              : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        k               : in     vl_logic_vector(2 downto 0);
        zf              : out    vl_logic;
        nf              : out    vl_logic;
        vf              : out    vl_logic;
        cf              : out    vl_logic;
        s               : out    vl_logic_vector(7 downto 0)
    );
end final_work;
