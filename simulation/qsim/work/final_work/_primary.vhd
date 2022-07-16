library verilog;
use verilog.vl_types.all;
entity final_work is
    port(
        cf              : out    vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(2 downto 0);
        nf              : out    vl_logic;
        bf              : out    vl_logic;
        zf              : out    vl_logic;
        vf              : out    vl_logic;
        s               : out    vl_logic_vector(7 downto 0)
    );
end final_work;
