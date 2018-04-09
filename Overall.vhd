LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Overall IS
  PORT (
		-- Main FPGA pins
		clk  				: IN std_logic;
      reset  			: IN std_logic;
		
		-- TEST SWITCH
		switch : IN std_logic;
	
		--  I2S ports
		LR_CLK    : in  std_logic;      --Left/Right indicator clock
		BIT_CLK   : in  std_logic;      --Bit clock
		DIN       : in  std_logic;      --Data Input
		
		-- SPI SHIT
		SCLK 	: IN std_logic;
		SDATA 	: IN std_logic;
		CS		: IN std_logic;
		dig0, dig1 : OUT std_logic_vector(6 DOWNTO 0); -- show key pressed on display dig2 en dig3 (resp high & low).
		 

		-- audio codec in and outputs
		init_finish		: out std_logic; --lights ledg[0] when init is finished (for debugging)
		AUD_MCLK			: out std_logic; --audio master clock
	   AUD_BCLK 		: in std_logic; -- Digital Audio bit clock
		AUD_DACDAT 		: out std_logic; -- DAC data line
	   AUD_DACLRCK		: in std_logic; -- DAC data left/right select
		I2C_SDAT 		: out std_logic; -- serial interface data line
		I2C_SCLK 		: out std_logic  -- serial interface clock
);		
END ENTITY Overall;

ARCHITECTURE structure OF Overall IS

		COMPONENT audio_interface IS
		PORT (
		LDATA, RDATA		: IN std_logic_vector(15 downto 0); -- parallel external data inputs
		clk, Reset 	: IN std_logic; 
		INIT_FINISH 		: OUT std_logic;
		adc_full 			: OUT std_logic;
		data_over 			: OUT std_logic; -- sample sync pulse
		AUD_MCLK 			: OUT std_logic; -- Codec master clock OUTPUT
		AUD_BCLK 			: IN std_logic; -- Digital Audio bit clock
		AUD_ADCDAT 			: IN std_logic;
		AUD_DACDAT 			: OUT std_logic; -- DAC data line
		AUD_DACLRCK			: IN std_logic; -- DAC data left/right select
		AUD_ADCLRCK 		: IN std_logic; -- DAC data left/right select
		I2C_SDAT 			: OUT std_logic; -- serial interface data line
		I2C_SCLK 			: OUT std_logic;  -- serial interface clock
		ADCDATA 				: OUT std_logic_vector(31 downto 0)
    );
	 
  END COMPONENT audio_interface;	
  
  
  COMPONENT i2s_in is 
-- width: How many bits (from MSB) are gathered from the serial I2S input
generic(width : integer := 16);

port(
	--  I2S ports
	LR_CLK    : in  std_logic;      --Left/Right indicator clock
	BIT_CLK   : in  std_logic;      --Bit clock
	DIN       : in  std_logic;      --Data Input
	
	-- Control ports
	RESET     : in  std_logic;      --Asynchronous Reset (Active Low)
	
	-- Parallel ports
	DATA_L    : out std_logic_vector(width-1 downto 0);
	DATA_R    : out std_logic_vector(width-1 downto 0);
	
	-- Output status ports
	DATA_RDY_L    : out std_logic;     --Falling edge means data is ready
	DATA_RDY_R    : out std_logic      --Falling edge means data is ready
);
end COMPONENT i2s_in;

component spi_async IS
  PORT (	SCLK 	: IN std_logic;
			RESET : IN std_logic;
			SDATA 	: IN std_logic;
			CS		: IN std_logic;
			BYTE0 : OUT std_logic_vector(7 downto 0);
			dig0, dig1 : OUT std_logic_vector(6 DOWNTO 0) -- show key pressed on display dig2 en dig3 (resp high & low).
		  );
END component spi_async;

component volume_control IS 
	GENERIC (clk_div	: integer := 1000000);
	PORT
	(
		reset				: IN std_logic;
		music_L			: IN std_logic_vector(15 DOWNTO 0);
		music_R			: IN std_logic_vector(15 DOWNTO 0);
		speak				: IN std_logic;
		clock				: IN std_logic;
		volume			: IN integer RANGE 0 TO 100;
		
		vol				: OUT integer RANGE 0 TO 100;
		scaled_music_L	: OUT std_logic_vector(15 DOWNTO 0);
		scaled_music_R	: OUT std_logic_vector(15 DOWNTO 0)
	);
END component volume_control;


  
	SIGNAL AUDIOL, AUDIOR : std_logic_vector(15 downto 0);
	SIGNAL AudioLAfterVol, AudioRAfterVol : std_logic_vector(15 downto 0);
	SIGNAL VolumeData : std_logic_vector(7 downto 0);
	
	

	BEGIN
	
	 i2sin: i2s_in PORT MAP (LR_CLK,BIT_CLK,DIN,reset,AUDIOL,AUDIOR, open, open);
	 audioout : audio_interface PORT MAP (AudioLafterVol,AudioRafterVol,clk,reset,INIT_FINISH,OPEN,OPEN,AUD_MCLK,AUD_BCLK,'0',AUD_DACDAT,AUD_DACLRCK,'0',I2C_SDAT,I2C_SCLK,OPEN);	
	 spi: spi_async PORT MAP (SCLK, reset, SDATA, CS, VolumeData, dig0, dig1);
	 volume: volume_control PORT MAP(reset, AUDIOL, AUDIOR, switch, clk, to_integer(signed(VolumeData)), open, AudioLafterVol, AudioRafterVol);
	 
end structure;
