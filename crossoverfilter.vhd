LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity crossoverfilter is 
generic (  
           input_width         : integer     :=16               ;-- set input width by user  
           output_width     	 : integer     :=32               ;-- set output width by user  
           coef_width          : integer     :=16               ;-- set coefficient width by user  
           tap                 : integer     :=81               ;-- set filter order  
           guard               : integer     :=0)               ;-- log2(tap)+1
port(
		LR_CLK    : in  std_logic;      --Left/Right indicator clock
		BIT_CLK   : in  std_logic;      --Bit clock
		DIN       : in  std_logic;      --Data Input
		RESET     : in  std_logic;      --Asynchronous Reset (Active Low)
		y_data     	 : out      std_logic_vector(output_width-1 downto 0) 
	 );
end crossoverfilter;

architecture connect of crossoverfilter is 
	component i2s_in is
	port(
	--  I2S ports
	LR_CLK    : in  std_logic;      --Left/Right indicator clock
	BIT_CLK   : in  std_logic;      --Bit clock
	DIN       : in  std_logic;      --Data Input
	
	-- Control ports
	RESET     : in  std_logic;      --Asynchronous Reset (Active Low)
	
	-- Parallel ports
	DATA_L    : out std_logic_vector(input_width-1 downto 0);
	DATA_R    : out std_logic_vector(input_width-1 downto 0);
	
	-- Output status ports
	DATA_RDY_L    : out std_logic;     --Falling edge means data is ready
	DATA_RDY_R    : out std_logic      --Falling edge means data is ready
	);
   end component i2s_in;
	
	component cf_entity is
	port (
	DATA_L    : in std_logic_vector(input_width-1 downto 0);
	DATA_R    : in std_logic_vector(input_width-1 downto 0);
 	LR_CLK        : in  std_logic;
	reset        : in  std_logic;
	y_data     	 : out      std_logic_vector(output_width-1 downto 0);  
	DATA_RDY_L    : in std_logic;
	DATA_RDY_R    : in std_logic 
	);
	end component cf_entity;
	
	signal DATA_L    : std_logic_vector(input_width-1 downto 0);
	signal DATA_R    : std_logic_vector(input_width-1 downto 0);
	signal DATA_RDY_L    : std_logic;
	signal DATA_RDY_R    : std_logic;
	
	begin
	
	i2s : i2s_in port map(LR_CLK,BIT_CLK,DIN,RESET,DATA_L,DATA_R,DATA_RDY_L,DATA_RDY_R);
	cf  : cf_entity port map(DATA_L,DATA_R,LR_CLK,reset,y_data,DATA_RDY_L,DATA_RDY_R);

end connect;
	
	

