LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY top_BRAM IS
PORT ( 
	clock 		: IN STD_LOGIC;
	resetn 		: IN  STD_LOGIC;
	chipselect 	: IN  STD_LOGIC;
	writedata  	: IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
   write_en    : IN  STD_LOGIC;
   readdata   	: OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   add         : IN  STD_LOGIC_VECTOR( 1 DOWNTO 0);
   read_en     : IN  STD_LOGIC 
);
END top_BRAM;

ARCHITECTURE Y OF top_BRAM IS

	COMPONENT reg32
	PORT ( 		
		clock		: IN STD_LOGIC;
		resetn 	: IN STD_LOGIC;
		WE 		: IN STD_LOGIC;
		D 			: IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		Q 			: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
	END COMPONENT;

	COMPONENT bram IS
		PORT (
			address	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

	signal write_enable0, write_enable1, write_enable2 				: STD_LOGIC;
	signal r32_o_0, r32_o_1, r32_o_2 										: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal bram_data_out 														: STD_LOGIC_VECTOR(7 DOWNTO 0); 
	signal read_enable_reg_0, read_enable_reg_1, read_enable_reg_2 : STD_LOGIC;
	signal bram_read_enable, bram_write_enable 							: STD_LOGIC;

BEGIN

	write_enable0 <= write_en and chipselect  and (not add(1)) and (not add(0)); -- 00
	write_enable1 <= write_en and chipselect  and (not add(1)) and      add(0);  -- 01
	write_enable2 <= write_en and chipselect  and 		add(1)  and (not add(0)); -- 10
	bram_write_enable <= writedata(0) and write_enable2;


	bram_0 : bram
	port map (
		address 	=> r32_o_0(9 downto 0),
		clock		=> clock,
		data		=> r32_o_1(7 downto 0),
		wren		=> bram_write_enable,
		q			=> bram_data_out
	);

	r32_0 : reg32 -- Address
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      	=> write_enable0,
		D 			=> writedata,
		Q       	=> r32_o_0
	);
	
	r32_1 : reg32 -- Data
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE      	=> write_enable1,
		D 			=> writedata,
		Q 			=> r32_o_1
	);
	
	r32_2 : reg32 -- Control
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE       => write_enable2, 
		D 			=> writedata,
		Q 			=> r32_o_2 
	);
	
	readdata <= r32_o_0     															when read_enable_reg_0  = '1' else 
					r32_o_1     															when read_enable_reg_1  = '1' else
					(31 downto bram_data_out'length => '0') & bram_data_out 	when bram_read_enable 	= '1' else
					(others => 'Z');
													
	read_enable_reg_0    <= read_en and chipselect and (not add(1)) and (not add(0)); -- 00  -> Adress
	read_enable_reg_1    <= read_en and chipselect and (not add(1)) and      add(0) ; -- 01  -> Data
	read_enable_reg_2    <= read_en and chipselect and 	  add(1)  and (not add(0)); -- 10  -> Control
	bram_read_enable     <= read_en and chipselect and 	  add(1)  and      add(0) ; -- 11  -> Read BRAM

END Y;
