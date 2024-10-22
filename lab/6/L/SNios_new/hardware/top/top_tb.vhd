Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity top_avalon_tb is
end entity;

Architecture X of top_avalon_tb is

component top_avalon is
   PORT(clock     : in  std_logic;        
        resetn       : in  std_logic;        
        chipselect        : in std_logic;           
        writedata : in  std_logic_vector(31 downto 0);
        readdata  : out std_logic_vector(31 downto 0);
        write_en  : in std_logic;           
        read_en   : in std_logic;            
        ADD       : in std_logic_vector(1 downto 0)
		  );
end component;
signal GND, VCC: std_logic; 
signal rst, clk, resetn: std_logic;
signal READDATA, WRITEDATA : std_logic_vector(31 downto 0);
signal ADD : std_logic_vector(1 downto 0);
TYPE state_type is (idle_st0,idle_st1, write_st0, write_st1, read_st0, read_st1);
signal state : state_type; 
signal INTERVAL_0, INTERVAL_1, counter, address : integer;
signal CS, WR_EN, RD_EN    : std_logic; 

begin  

INTERVAL_0 <= 10;
INTERVAL_1 <= 15;

GND <= '0';
VCC <= '1';

gera_rst:process 
begin 
	rst <= '1';
	wait for 15 ns;
	rst <= '0';
	wait;
end process;

gera_clk:process 
begin 
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process;

resetn <= not rst;

DUT:top_avalon
    port map
	   (clock      => clk      ,
  	    resetn     => resetn   ,
        chipselect => CS       , 
        writedata  => WRITEDATA, 
        readdata   => READDATA , 
        write_en   => WR_EN    , 
        read_en    => RD_EN    , 
        ADD        => ADD       
		);

gera_data_we_rd_add_cs : process (RST, CLK)
begin
	If RST = '1' then
--	   READDATA   <= (others => '0');
--	   WRITEDATA  <= (others => '0');
--	   WR_EN      <= '0';
--	   RD_EN      <= '0'; 
--	   CS         <= '0';
--	   ADD        <= (others => '0');
       counter    <= 0;		
	   state      <= idle_st0;
	Elsif CLK' event and CLK = '1' then
		counter <= counter + 1;
		case state is
			when idle_st0 => 
				if counter = INTERVAL_0 then 
					state <= write_st0;
					counter <= 0;
				end if;	
			when write_st0 =>     -- Escrever LOAD = 0x12 no REG 1
				state <= write_st1;
				counter <= 0;     
            when write_st1 =>     -- Escrever EN = '1', CLR = '0', LD = '0' no REG0  
				state <= idle_st1;
				counter <= 0;
			when idle_st1 => 
				if counter = INTERVAL_1 then 
					state <= read_st0;
					counter <= 0;
				end if;	
			when read_st0 => 
				state <= read_st1;
				counter <= 0;
			when read_st1 => 
				--if counter = INTERVAL_1 then 
					state <= idle_st0;
					counter <= 0;
				--end if;	
				address  <= address + 1;
        end case;    	
	end if;

End process;

process(state)
begin
		case state is
			when idle_st0 => 
--				READDATA   <= (others => '0');
				WRITEDATA  <= (others => '0');
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= (others => '0');
			when write_st0 => 
				WRITEDATA  <= x"00000012";
				WR_EN      <= '1';
				RD_EN      <= '0'; 
				CS         <= '1';
				ADD        <= "01";   --std_logic_vector(to_unsigned(address, ADD'length));
			when write_st1 => 
-- Escrever EN = '1', CLR = '0', LD = '0' no REG0
--   regs de ESCRITA 
--   reg 0: CLR, ENABLE, LD
--   33222222222211111111110000000000   
--   10987654321098765432109876543210
--   |                             ||                                
--   |                             |\---LD
--   |                             \----EN
--   |
--   |
--   |- SELF CLR            
				WRITEDATA  <= x"00000002";--0000 0000 0000 0000 0000 0000 0000 0010
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= "00";
			when idle_st1 => 
				WRITEDATA  <= (others => '0');
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= (others => '0');
			when read_st0 => 
				WRITEDATA  <= (others => '0');
				WR_EN      <= '0';
				RD_EN      <= '1'; 
				CS         <= '1';
				ADD        <= std_logic_vector(to_unsigned(address, ADD'length));
			when read_st1 => 
				WRITEDATA  <= (others => '0');
				WR_EN      <= '0';
				RD_EN      <= '0'; 
				CS         <= '0';
				ADD        <= std_logic_vector(to_unsigned(address, ADD'length));
        end case;    	
end process;	

End architecture;

