Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lab4_tb is
end lab4_tb;

architecture arch_lab4_tb of lab4_tb is
-------------------------------------
--    	SIGNAL DEFINITIONS
-------------------------------------
	signal rst:				std_logic;
	signal clk:				std_logic;
	signal number_input: 	std_logic_vector(3 downto 0);
	signal count_for: 		std_logic_vector(2 downto 0);
	signal count_while: 	std_logic_vector(2 downto 0);
	signal count_case:  	std_logic_vector(2 downto 0);
	signal count_if: 		std_logic_vector(2 downto 0);
	signal count_sum: 	std_logic_vector(2 downto 0);


-------------------------------------
--   	  COMPONENT DEFINITIONS
-------------------------------------
	component lab4 is
		port (
			RST			: in std_logic;
			CLK 		: in std_logic;
			input		: in std_logic_vector(3 downto 0);
			count_for 	: out std_logic_vector(2 downto 0);
			count_while : out std_logic_vector(2 downto 0);
			count_case  : out std_logic_vector(2 downto 0);
			count_if 	: out std_logic_vector(2 downto 0);
			count_sum	: out std_logic_vector(2 downto 0)
		);
	end component;

begin
-------------------------------------
--      PORT MAP DEFINITIONS
-------------------------------------
	lab: lab4 port map (
		RST 		=> rst,
		clk 		=> clk,
		input 		=> number_input,
      	count_for 	=> count_for,
      	count_while => count_while,
      	count_case 	=> count_case,
      	count_sum 	=> count_sum,
      	count_if 	=> count_if
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

--	    RST: nível alto de 0 a 15 ns,
	process
	begin
		number_input <= "0000";
		wait for 25 ns;
		number_input <= "0001";
		wait for 20 ns;
		number_input <= "0010";
		wait for 20 ns;
		number_input <= "0011";
		wait for 20 ns;
		number_input <= "0100";
		wait for 20 ns;
		number_input <= "0101";
		wait for 20 ns;
		number_input <= "0110";
		wait for 20 ns;
		number_input <= "0111";
		wait for 20 ns;
		number_input <= "1000";
		wait for 20 ns;
		number_input <= "1001";
		wait for 20 ns;
		number_input <= "1010";
		wait for 20 ns;
		number_input <= "1011";
		wait for 20 ns;
		number_input <= "1100";
		wait for 20 ns;
		number_input <= "1101";
		wait for 20 ns;
		number_input <= "1110";
		wait for 20 ns;
		number_input <= "1111";
		wait;
	end process;	



end arch_lab4_tb;


