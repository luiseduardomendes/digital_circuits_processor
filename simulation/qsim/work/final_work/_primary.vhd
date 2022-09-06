library verilog;
use verilog.vl_types.all;
entity final_work is
    port(
        cf_rem          : out    vl_logic;
        Ck              : in     vl_logic;
        Rst             : in     vl_logic;
        N               : in     vl_logic;
        Z               : in     vl_logic;
        instr           : in     vl_logic_vector(3 downto 0);
        ctrl_rem        : out    vl_logic;
        inc_pc          : out    vl_logic;
        cg_ac           : out    vl_logic;
        cg_ri           : out    vl_logic;
        cg_pc           : out    vl_logic;
        cg_rdm          : out    vl_logic;
        read            : out    vl_logic;
        cg_nz           : out    vl_logic;
        write           : out    vl_logic
    );
end final_work;
