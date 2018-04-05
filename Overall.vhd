LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY Overall IS
  PORT (
		-- Main FPGA pins
		clk  				: IN std_logic;
      reset  			: IN std_logic;
	
		--  I2S ports
		LR_CLK    : in  std_logic;      --Left/Right indicator clock
		BIT_CLK   : in  std_logic;      --Bit clock
		DIN       : in  std_logic;      --Data Input
		
		-- SPI ports
		SCLK     : in  std_logic; -- SPI clock
      CS_N     : in  std_logic; -- SPI chip select, active in low
      MOSI     : in  std_logic; -- SPI serial data from master to slave
      MISO     : out std_logic; -- SPI serial data from slave to master
		
		-- DISPLAY
		dig0, dig1		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display

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

component SPI_SLAVE is
    Port (
        CLK      : in  std_logic; -- system clock
        RST      : in  std_logic; -- high active synchronous reset
        -- SPI SLAVE INTERFACE
        SCLK     : in  std_logic; -- SPI clock
        CS_N     : in  std_logic; -- SPI chip select, active in low
        MOSI     : in  std_logic; -- SPI serial data from master to slave
        MISO     : out std_logic; -- SPI serial data from slave to master
        -- USER INTERFACE
        DIN      : in  std_logic_vector(7 downto 0); -- input data for SPI master
        DIN_VLD  : in  std_logic; -- when DIN_VLD = 1, input data are valid
        READY    : out std_logic; -- when READY = 1, valid input data are accept
        DOUT     : out std_logic_vector(7 downto 0); -- output data from SPI master
        DOUT_VLD : out std_logic  -- when DOUT_VLD = 1, output data are valid
    );
end component SPI_SLAVE;

component spitodisp IS
  PORT (	SCLK 	: IN std_logic;
			RESET : IN std_logic;
			DIN      : in  std_logic_vector(7 downto 0);
			DIN_VLD  : in  std_logic;
			dig0, dig1 : OUT std_logic_vector(6 DOWNTO 0) -- show key pressed on display dig2 en dig3 (resp high & low).
		  );
END component spitodisp;
  
	SIGNAL AUDIOL, AUDIOR : std_logic_vector(15 downto 0);
	SIGNAL DataOut : std_LOGIC_vector(7 downto 0);
	SIGNAL DataValid : std_logic;
	-- Disable DIN
	Signal ReadyValid1, ReadyValid2 : std_logic; 
	SIGNAL DataIn : std_LOGIC_vector(7 downto 0);
	

	BEGIN
	
	ReadyValid1 <= '0';
	ReadyValid2 <= '0';
	DataIn <= "00000000";
	
	 i2sin: i2s_in PORT MAP (LR_CLK,BIT_CLK,DIN,reset,AUDIOL,AUDIOR, open, open);
	 audioout : audio_interface PORT MAP (AUDIOL,AUDIOR,clk,reset,INIT_FINISH,OPEN,OPEN,AUD_MCLK,AUD_BCLK,'0',AUD_DACDAT,AUD_DACLRCK,'0',I2C_SDAT,I2C_SCLK,OPEN);	
	 
	 spislave: SPI_SLAVE PORT MAP(clk,reset,SCLK,CS_N,MOSI,MISO,DataIn,ReadyValid1,ReadyValid2,DataOut, DataValid);
	 spidisp: spitodisp PORT MAP (SCLK,reset,DataOut,Datavalid,dig0,dig1);
	

end structure;
