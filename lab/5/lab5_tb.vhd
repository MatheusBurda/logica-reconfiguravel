Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab5_tb is
end lab5_tb;

architecture arch_lab5_tb of lab5_tb is
-------------------------------------
--    	SIGNAL DEFINITIONS
-------------------------------------
	signal rst          : std_logic;
	signal clk          : std_logic;
    signal clk_read     : std_logic;
    signal fifo_usedw	: std_logic_vector (8 downto 0);
    signal fifo_empty   : std_logic;
    signal state_write 	: std_logic_vector(1 downto 0);
    signal state_read 	: std_logic_vector(1 downto 0);
    signal write_en     : std_logic; 
    signal read_en		: std_logic;
	signal Q_fifo 	    : std_logic_vector(7 downto 0);
    signal Q_bram_write : std_logic_vector(7 downto 0);
    signal Q_bram_read  : std_logic_vector(7 downto 0);


-------------------------------------
--   	  COMPONENT DEFINITIONS
-------------------------------------
    component lab5 is
        port (
            rst				: in std_logic;
            clk 			: in std_logic;
            clk_read_p		: out std_logic;	
            fifo_usedw_p	: out std_logic_vector (8 downto 0);
            fifo_empty_p	: out std_logic;
            state_write_p 	: out std_logic_vector(1 downto 0);
            state_read_p 	: out std_logic_vector(1 downto 0);
            write_en_p		: out std_logic;
            read_en_p		: out std_logic;
            Q_bram_write	: out std_logic_vector(7 downto 0);
            Q_bram_read		: out std_logic_vector(7 downto 0);
            Q_fifo			: out std_logic_vector(7 downto 0)
        );
    end component;

begin
-------------------------------------
--      PORT MAP DEFINITIONS
-------------------------------------
	UUT: lab5 port map (
        rst => rst,
        clk => clk,
        clk_read_p => clk_read,
        fifo_usedw_p => fifo_usedw,
        fifo_empty_p => fifo_empty,
        state_write_p => state_write,
        state_read_p => state_read,
        write_en_p => write_en,
        read_en_p => read_en,
        Q_bram_write => Q_bram_write,
        Q_bram_read => Q_bram_read,
        Q_fifo => Q_fifo
	);
	
-------------------------------------
--        PROCESS DEFINITIONS
-------------------------------------
--    CLK: sinal quadrado com THigt = 10 ns, TLow =10 nsc
	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;	

--	    RST: nível alto de 0 a 15 ns,
	process
	begin
		rst <= '1';
		wait for 5 ns;
		rst <= '0';
		wait;
	end process;	

end arch_lab5_tb;


