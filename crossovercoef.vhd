Library IEEE;  
 USE IEEE.Std_logic_1164.all;   
 USE IEEE.numeric_std.all;
 USE work.filter_coefficients.all; 
entity crossovercoef is
generic (  
           input_width         : integer     :=16               ;-- set input width by user  
           output_width     	 : integer     :=32               ;-- set output width by user  
           coef_width          : integer     :=16               ;-- set coefficient width by user  
           tap                 : integer     :=81               ;-- set filter order  
           guard               : integer     :=0)               ;
port (
	coeficient	 : out			Coeficient_type)						;
end crossovercoef;

architecture crossover of crossovercoef is
 type coefint is array (1 to tap) of integer;  
  constant LPcoeficient: coefint := (    
-92,
-36,
-42,
-47,
-52,
-55,
-57,
-56,
-54,
-48,
-40,
-28,
-12,
8,
33,
62,
97,
136,
180,
228,
281,
338,
399,
463,
530,
599,
669,
739,
809,
878,
944,
1008,
1067,
1122,
1171,
1214,
1250,
1278,
1299,
1312,
1316,
1312,
1299,
1278,
1250,
1214,
1171,
1122,
1067,
1008,
944,
878,
809,
739,
669,
599,
530,
463,
399,
338,
281,
228,
180,
136,
97,
62,
33,
8,
-12,
-28,
-40,
-48,
-54,
-56,
-57,
-55,
-52,
-47,
-42,
-36,
-92							
                                    ); 
 begin
 gen_coef:
  for i in 1 to tap generate
  begin
  coeficient(i) <= std_logic_vector(to_signed(LPcoeficient(i),16));
  end generate gen_coef;
 end crossover;