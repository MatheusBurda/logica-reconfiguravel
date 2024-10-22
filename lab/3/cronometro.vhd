library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cronometro is
	port(   
		CLK:  					         IN  std_logic;
		BOTAO1:   					      IN std_logic;
		BOTAO2:  				         IN std_logic;
		SWITCH:								IN std_logic;
		SAIDA_DEC_SEG, SAIDA_UNI_SEG: OUT std_logic_vector(6 downto 0);
		SAIDA_DEC_CS, SAIDA_UNI_CS:   OUT std_logic_vector(6 downto 0)
    );
end entity;

architecture a_cronometro of cronometro is
	component cont60 is
		port( 
			RST:  					IN  std_logic;
			CLK:  					IN  std_logic;
			EN:   					IN std_logic;
			CLR:  					IN std_logic;
			SAIDA_UNI,SAIDA_DEC:	OUT std_logic_vector(3 downto 0)
		);
	 end component;
	 
	component cont100 is
		port( 
			RST:  					IN  std_logic;
			CLK:  					IN  std_logic;
			EN:   					IN std_logic;
			CLR:  					IN std_logic;
			SAIDA_UNI,SAIDA_DEC:	OUT std_logic_vector(3 downto 0)
		);
	end component;
 
	component decoder_7seg is
		 port (
			  input  : IN std_logic_vector(3 downto 0);
			  output : OUT std_logic_vector(6 downto 0)
		 );
	end component; 
		
	component clk_10ms is
		port( 
			clk	   : IN std_logic;
			clk_out	: OUT std_logic
		);
	end component;

     signal clock, seg_enable:			    							std_logic;
     signal clear, enable:                     						std_logic := '0';
	  signal contador_unidades_seg, contador_dezenas_seg:	      std_logic_vector(3 downto 0);
	  signal contador_unidades_ms, contador_dezenas_ms:			std_logic_vector(3 downto 0);
	  signal cont_botao_1, cont_botao_2:								std_logic_vector(3 downto 0);
	  signal saida_botao_1, saida_botao_2:								std_logic;
	  signal state:															std_logic_vector(1 downto 0):= "00";

Begin

	process(SWITCH, CLK)
	begin
		if (SWITCH='1') then
			state <= "00";
		elsif(CLK'event and CLK='1') then
			if (state = "00") then
                if (BOTAO1='0') then
                    state <= "01";
                end if;
			elsif (state = "01") then
                if (BOTAO1 = '0') then
                    state <= "10";
                end if;
			elsif (state = "10" or state="11") then
				 if (BOTAO1 = '0') then
					  state <= "01";
				 elsif (BOTAO2 = '0') then
					  state <= "11";
				 end if;
			end if;
		end if;
	end process;
		
	enable <= 
		'1' when state = "01" else
		'0';
		
	clear <= 
		'1' when state = "11" else
		'0';
		
	 seg_enable <= '1' when contador_unidades_ms="1001" and contador_dezenas_ms = "1001"
					else '0';

	clockzada : clk_10ms port map(
		clk   => CLK,
		clk_OUT => clock
	);

	contador_segundos : cont60 port map(
		CLK => clock,
		RST => SWITCH,
		EN => seg_enable,
		CLR => clear,
		SAIDA_UNI => contador_unidades_seg,
		SAIDA_DEC => contador_dezenas_seg
	);
 
	 contador_milisegundos : cont100 port map(
		   CLK => clock,
         RST => SWITCH,
         EN => enable,
         CLR => clear,
		   SAIDA_UNI => contador_unidades_ms,
		   SAIDA_DEC => contador_dezenas_ms
	 );
	 
	 dec7seg_unidades_seg : decoder_7seg port map(
			input => contador_unidades_seg,
			output => SAIDA_UNI_SEG
	 );
	 
	 dec7seg_dezenas_seg : decoder_7seg port map(
			input => contador_dezenas_seg,
			output => SAIDA_DEC_SEG
	 );
	 
	 dec7seg_unidades_ms : decoder_7seg port map(
			input => contador_unidades_ms,
			output => SAIDA_UNI_CS
	 );
	 
	 dec7seg_dezenas_ms : decoder_7seg port map(
			input => contador_dezenas_ms,
			output => SAIDA_DEC_CS
	 );
	

end architecture;

