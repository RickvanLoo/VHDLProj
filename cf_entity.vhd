LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

 package filter_coefficients is
	type Coeficient_type is array (1 to 81) of std_logic_vector(16-1 downto 0);
	type shift_reg_type is array (0 to 81-1) of std_logic_vector(16-1 downto 0);
 end filter_coefficients;	

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE work.filter_coefficients.all; 

entity cf_entity is
generic (  
           input_width         : integer     :=16               ;-- set input width by user  
           output_width     	 : integer     :=32               ;-- set output width by user  
           coef_width          : integer     :=16               ;-- set coefficient width by user  
           tap                 : integer     :=81               ;-- set filter order  
           guard               : integer     :=0)               ;-- log2(tap)+1 
 port (
	DATA_L    : in std_logic_vector(input_width-1 downto 0);
	DATA_R    : in std_logic_vector(input_width-1 downto 0);
 	LR_CLK        : in  std_logic;
	reset        : in  std_logic;
	y_data     	 : out      std_logic_vector(output_width-1 downto 0);  
	DATA_RDY_L    : in std_logic;
	DATA_RDY_R    : in std_logic 
	);
end entity cf_entity;

architecture filterstructure of cf_entity is 
	component crossovercoef is
		port (
			coeficient	 : out				Coeficient_type);								
	end component crossovercoef;
	
	component FIR_RI is
		port(  
			DATA_L    : in std_logic_vector(input_width-1 downto 0);
			DATA_R    : in std_logic_vector(input_width-1 downto 0);
			LR_CLK        : in       std_logic                                             ;-- input i_clk  
			reset     	 : in       std_logic                                             ;-- input reset
			coeficient	 : in			Coeficient_type													;
			shift_reg 	 : out		shift_reg_type														;
			y_data     	 : out      std_logic_vector(output_width-1 downto 0))     			;-- output data  
	end component FIR_RI; 
	
	signal coeficient : Coeficient_type;
	signal shift_reg : shift_reg_type;
	USE work.filter_coefficients.all; 
	
	begin
	
	fir :	crossovercoef port map (coeficient);
	af  :	FIR_RI port map (DATA_L,DATA_R,LR_CLK,reset,coeficient,shift_reg,y_data);
	
end filterstructure;