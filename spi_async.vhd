LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY spi_async IS
  PORT (	SCLK 	: IN std_logic;
			RESET : IN std_logic;
			SDATA 	: IN std_logic; 
			CS		: IN std_logic;
			BYTE0 : OUT std_logic_vector(7 downto 0);
			dig0, dig1 : OUT std_logic_vector(6 DOWNTO 0) -- show key pressed on display dig2 en dig3 (resp high & low).
		  );
END spi_async;

ARCHITECTURE behav of spi_async is
FUNCTION hex2display (n:std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
    VARIABLE res : std_logic_vector(6 DOWNTO 0);
  BEGIN
    CASE n IS          --        gfedcba; low active
	    WHEN "0000" => RETURN NOT "0111111";
	    WHEN "0001" => RETURN NOT "0000110";
	    WHEN "0010" => RETURN NOT "1011011";
	    WHEN "0011" => RETURN NOT "1001111";
	    WHEN "0100" => RETURN NOT "1100110";
	    WHEN "0101" => RETURN NOT "1101101";
	    WHEN "0110" => RETURN NOT "1111101";
	    WHEN "0111" => RETURN NOT "0000111";
	    WHEN "1000" => RETURN NOT "1111111";
	    WHEN "1001" => RETURN NOT "1101111";
	    WHEN "1010" => RETURN NOT "1110111";
	    WHEN "1011" => RETURN NOT "1111100";
	    WHEN "1100" => RETURN NOT "0111001";
	    WHEN "1101" => RETURN NOT "1011110";
	    WHEN "1110" => RETURN NOT "1111001";
	    WHEN OTHERS => RETURN NOT "1110001";			
    END CASE;
  END hex2display;
  
  
	signal SDATA_register : std_logic_vector(7 downto 0);

	
BEGIN
	PROCESS(RESET, SCLK, CS)
		variable byte0_reg : std_logic_vector(7 downto 0);
	BEGIN
		if reset = '0' then
			SDATA_register <= (others => '0');
			BYTE0 <= (others => '0');
			byte0_reg := (others => '0');
			dig0 <= hex2display("0000");
			dig1 <= hex2display("0000");

			
		elsif CS = '1' then
			byte0_reg := SDATA_register(7 downto 0);
			dig0 <= hex2display(byte0_reg(3 downto 0));
			dig1 <= hex2display(byte0_reg(7 downto 4));
			BYTE0 <= byte0_reg;

			

		elsif rising_edge(SCLK) then
			if CS = '0' then		--Only get SDATA when slave is selected (Active low)
				SDATA_register <= SDATA_register(6 downto 0) & SDATA; --Shift register 16 bytes
			end if;

		end if; 
	END PROCESS;

	
END behav;