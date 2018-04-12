Library IEEE;  
 USE IEEE.Std_logic_1164.all;   
 USE IEEE.Std_logic_signed.all;
 USE work.filter_coefficients.all; 
 
 entity FIR_RI is  -- VHDL projects
 generic (  
           input_width         : integer     :=16               ;-- set input width by user  
           output_width     	 : integer     :=32               ;-- set output width by user  
           coef_width          : integer     :=16               ;-- set coefficient width by user  
           tap                 : integer     :=81               ;-- set filter order  
           guard               : integer     :=0)               ;-- log2(tap)+1 
 port(  
	   DATA_L    : in std_logic_vector(input_width-1 downto 0);
	   DATA_R    : in std_logic_vector(input_width-1 downto 0); 
      LR_CLK        : in       std_logic                                             ;-- input LR_CLK  
      reset     	 : in       std_logic                                             ;-- input reset
		coeficient	 : in			Coeficient_type													;
		shift_reg 	 : buffer	shift_reg_type														;
      y_data     	 : out      std_logic_vector(output_width-1 downto 0))     			;-- output data  
 end FIR_RI; 
 
 architecture behaivioral of FIR_RI is  
 -- N bit Register  
 component N_bit_Reg   
   generic (  
           input_width          : integer     :=16  
           );  
   port(  
    Q : out std_logic_vector(input_width-1 downto 0);     
    LR_CLK :in std_logic;    
    reset :in std_logic;   
    D :in std_logic_vector(input_width-1 downto 0)    
   );  
 end component;
                               
 type mult_type is array (0 to tap-1) of std_logic_vector(input_width+coef_width-1 downto 0);  
 signal mult : mult_type;  
 type ADD_type is array (0 to tap-1) of std_logic_vector(input_width+coef_width-1 downto 0);  
 signal ADD: ADD_type;  
 begin  
			  shift_reg(0)     <= DATA_L + DATA_R;  
           mult(0)<= (DATA_L + DATA_R)*coeficient(1);  
           ADD(0)<= (DATA_L + DATA_R)*coeficient(1);  
           GEN_FIR:  
           for i in 0 to tap-2 generate  
           begin  
                 -- N-bit reg unit  
                 N_bit_Reg_unit : N_bit_Reg generic map (input_width => 16)   
                 port map ( 			LR_CLK => LR_CLK,   
                                    reset => reset,  
                                    D => shift_reg(i),  
                                    Q => shift_reg(i+1)  
                                    );       
                -- filter multiplication  
                mult(i+1) <= shift_reg(i+1)*coeficient(i+2);  
                -- filter conbinational addition  
                ADD(i+1) <= ADD(i)+mult(i+1);  
           end generate GEN_FIR;  
           y_data <= ADD(tap-1);  
 end Architecture;  

 Library IEEE;  
 USE IEEE.Std_logic_1164.all;  
 
 entity N_bit_Reg is   
 generic (  
           input_width          : integer     := 16  
           );  
   port(  
    Q : out std_logic_vector(input_width-1 downto 0);    
    LR_CLK :in std_logic;    
    reset :in std_logic;  
    D :in std_logic_vector(input_width-1 downto 0)    
   );  
 end N_bit_Reg;  
 
 architecture Behavioral of N_bit_Reg is   
 begin   
      process(LR_CLK,reset)  
      begin   
           if (reset = '0') then  
                Q <= (others => '0');  
        elsif ( falling_edge(LR_CLK) ) then  
                Q <= D;   
       end if;      
      end process;   
 end Behavioral;