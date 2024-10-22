Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab5 is
	port (
		rst				: in  std_logic;
		clk 			: in  std_logic;
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
end lab5;

architecture arch_lab5 of lab5 is
-------------------------------------
--   	  COMPONENT DEFINITIONS
-------------------------------------
	component bram is
		port (
			address		: in  std_logic_vector(9 downto 0);
			data		: in  std_logic_vector (7 downto 0);
			clock		: in  std_logic;
			wren		: in  std_logic;
			q			: out std_logic_vector (7 downto 0)
		);
	end component;

	component fifo is
		port (
			data		: in  std_logic_vector (7 DOWNTO 0);
			rdclk		: in  std_logic ;
			rdreq		: in  std_logic ;
			wrclk		: in  std_logic ;
			wrreq		: in  std_logic ;
			q			: out std_logic_vector (7 DOWNTO 0);
			rdempty		: out std_logic ;
			wrfull		: out std_logic ;
			wrusedw		: out std_logic_vector (8 DOWNTO 0)
		);
	end component;

-------------------------------------
--    	SIGNAL DEFINITIONS
-------------------------------------
	-- BRAM
	signal addr_write, addr_read	: std_logic_vector(9 downto 0):="0000000000";
	signal data_write				: std_logic_vector(7 downto 0):="00000000";
	signal q_write					: std_logic_vector(7 downto 0):="00000000";

	-- State machine
	signal state_write, state_read 	: std_logic_vector(1 downto 0):= "00";

	-- FIFO
	signal fifo_usedw				: std_logic_vector(8 downto 0):="000000000";
	signal write_en, read_en		: std_logic:='0';
	signal fifo_empty, fifo_full	: std_logic:='0';
	signal fifo_out					: std_logic_vector(7 downto 0):="00000000";

	-- CLK READ
	signal clk_read					: std_logic:='0';
	signal clk_read_count			: integer:=0;

	-- ETC
	signal ONE						: std_logic:='1';
	signal ZERO						: std_logic:='0';

begin
-------------------------------------
--      PORT MAP DEFINITIONS
-------------------------------------
	bram_write: bram port map (
		address => addr_write,
		clock => CLK,
		data => data_write,
		wren => ZERO,		-- Always disabled
		q => q_write
	);

	bram_read: bram port map (
		address => addr_read,
		clock => CLK,
		data => fifo_out,
		wren => read_en,		-- Always disabled
		q => Q_bram_read
	);

	fifo_uut: fifo port map (
		data => q_write,
		rdclk => clk_read,
		rdreq => read_en,
		wrclk => clk,
		wrreq => write_en,
		q => fifo_out,
		rdempty => fifo_empty,
		wrfull => fifo_full,
		wrusedw => fifo_usedw
	);

-------------------------------------
--        PROCESS DEFINITIONS
-------------------------------------
-- State Machine WRITE
--	00 -> Reset
--  01 -> WR_FIFO
--  10 -> WR_WAIT
-------------------------------------
	process (clk, rst) 
	begin
		if rst = '1' then
			addr_write 	<= "0000000000";
			state_write <= "00";
		elsif clk'event and clk = '1' then
			
			-- WRITE STATE MACHINE
			if state_write = "00" then
				state_write <= "01";
				write_en <= '1';

			elsif state_write = "01" then
				if unsigned(fifo_usedw) > 383 then  -- 75% of 512
					state_write <= "10";
					write_en <= '0';
				else
					addr_write <= std_logic_vector(unsigned(addr_write)+1);
				end if;

			elsif state_write = "10" then
				if unsigned(fifo_usedw) < 256 then  -- 50% of 512
					state_write <= "01";
					write_en <= '1';
				end if;
			end if;
			
			clk_read_count <= clk_read_count + 1;
			if clk_read_count > 4 then
				clk_read_count <= 0;
				clk_read <= not clk_read;
			end if;

		end if;
	end process;
-------------------------------------
-- State Machine READ
--	00 -> Reset
--  01 -> RD_FIFO
--  10 -> RD_WAIT
-------------------------------------
	process (clk_read, rst)
	begin
		if rst = '1' then

			addr_read 	<= "0000000000";
			state_read 	<= "00";
		elsif clk_read'event and clk_read = '1' then
			if state_read = "00" then	
				if fifo_empty = '0' then	-- read fifo fifo_empty
					state_read <= "01";
					read_en <= '1';
				else
					state_read <= "10";
					read_en <= '0';
				end if;
			elsif state_read = "01" then
				if fifo_empty = '1' then
					state_read <= "10";
					read_en <= '0';
				else
					addr_read <= std_logic_vector(unsigned(addr_read)+1);
				end if;
			elsif state_read = "10" then
				if fifo_empty = '0' then
					state_read <= "01";
					read_en <= '1';
				end if;
			end if;
		end if;
	end process;
	
	Q_fifo <= fifo_out;
	Q_bram_write <= q_write;

	state_write_p <= state_write; 
	state_read_p <= state_read; 	
	
	write_en_p <= write_en; 
	read_en_p <= read_en;		

	fifo_usedw_p <= fifo_usedw;
	fifo_empty_p <= fifo_empty;
	
	clk_read_p <= clk_read;

end arch_lab5;

