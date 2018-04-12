---------------------------------------------------------------------------------
-- Engineer:      Rick van Loo

library ieee;
use ieee.std_logic_1164.all;

entity PreOutBuffer is 
-- width: How many bits (from MSB) are gathered from the serial I2S input
generic(width : integer := 16);

port(
	-- RESET
	RESET	 : in std_logic;
	
	-- clk
	LR_CLK : in std_logic;
	
	-- Parallel ports
	DATA_L_IN    : in std_logic_vector(width-1 downto 0);
	DATA_R_IN    : in std_logic_vector(width-1 downto 0);
	DATA_L_OUT    : out std_logic_vector(width-1 downto 0);
	DATA_R_OUT    : out std_logic_vector(width-1 downto 0)
);
end PreOutBuffer;


architecture rtl of PreOutBuffer is
-- SIGNALS
	signal DATALSIG : std_logic_vector(width-1 downto 0);
	signal DATARSIG : std_logic_vector(width-1 downto 0);
		
begin

	-- Left Signal
	thesigs: process(RESET, LR_CLK)
	begin
		if(RESET = '0') then
			DATA_L_OUT   <= (others => '0');
			DATA_R_OUT   <= (others => '0');
		elsif(falling_edge(LR_CLK)) then
			DATA_L_OUT <= DATA_L_IN;
			DATA_R_OUT <= DATA_R_IN;
		end if;
	end process thesigs;

	
end rtl;