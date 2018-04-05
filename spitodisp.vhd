LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY spitodisp IS
  PORT (	SCLK 	: IN std_logic;
			RESET : IN std_logic;
			DIN      : in  std_logic_vector(7 downto 0);
			DIN_VLD  : in  std_logic;
			dig0, dig1 : OUT std_logic_vector(6 DOWNTO 0) -- show key pressed on display dig2 en dig3 (resp high & low).
		  );
END spitodisp;

ARCHITECTURE behav of spitodisp is
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
	
BEGIN
	PROCESS(RESET, SCLK)
	BEGIN
		if reset = '0' then
			dig0 <= hex2display("0000");
			dig1 <= hex2display("0000");

		elsif rising_edge(SCLK) then
			if DIN_VLD = '1' then		--IF DATA IS VALID
				dig0 <= hex2display(DIN(7 downto 4));
				dig1 <= hex2display(DIN(3 downto 0));
			end if;

		end if; 
	END PROCESS;
	
END behav;