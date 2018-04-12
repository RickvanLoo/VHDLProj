---------------------------------------------------------------------------------
-- Engineer:      Rick van Loo

library ieee;
use ieee.std_logic_1164.all;

entity musicbuffer is 
-- width: How many bits (from MSB) are gathered from the serial I2S input
generic(width : integer := 16);

port(
	-- RESET
	RESET	 : in std_logic;
	
	-- clk
	CLK : in std_logic;
	
	-- input status ports
	DATA_RDY_L    : in std_logic;     --Falling edge means data is ready
	DATA_RDY_R    : in std_logic;      --Falling edge means data is ready
	
	-- Parallel ports
	DATA_L_IN    : in std_logic_vector(width-1 downto 0);
	DATA_R_IN    : in std_logic_vector(width-1 downto 0);
	DATA_L_OUT    : out std_logic_vector(width-1 downto 0);
	DATA_R_OUT    : out std_logic_vector(width-1 downto 0)
);
end musicbuffer;


architecture rtl of musicbuffer is
-- SIGNALS
	signal DATALSIG : std_logic_vector(width-1 downto 0);
	signal DATARSIG : std_logic_vector(width-1 downto 0);
		
begin

	-- Left Signal
	Leftsig: process(RESET, DATA_RDY_L)
	begin
		if(RESET = '0') then
			DATALSIG   <= (others => '0');
		elsif(falling_edge(DATA_RDY_L)) then
			DATALSIG <= DATA_L_IN;
		end if;
	end process Leftsig;
	
	-- Right Signal
	Rightsig: process(RESET, DATA_RDY_R)
	begin
		if(RESET = '0') then
			DATARSIG   <= (others => '0');
		elsif(falling_edge(DATA_RDY_R)) then
			DATARSIG <= DATA_R_IN;
		end if;
	end process Rightsig;
	
	-- Output on CLK
	AudioOut: process(clk)
	begin
		if(RESET = '0') then
			DATA_L_OUT   <= (others => '0');
			DATA_R_OUT   <= (others => '0');
		elsif(falling_edge(clk)) then
			DATA_L_OUT <= DATALSIG;
			DATA_R_OUT <= DATARSIG;
		end if;
	end process AudioOut;
	
end rtl;