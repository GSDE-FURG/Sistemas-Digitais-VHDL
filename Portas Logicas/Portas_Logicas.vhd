-- CODIGO PORTA LOGICA AND

-- library
library ieee;
use ieee.std_logic_1164.all;
 
 
-- entity
entity Portas_Logicas is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    saida_And, saida_Nand, Saida_OR : out std_logic
    
	 );
end Portas_Logicas;
 
 
-- architecture
architecture comportamento_Portas_Logicas of Portas_Logicas is 
	
   signal x, k, z, w: std_logic;  -- sinais intermediarios
      
	component Porta_Nand -- buscando componente Porta_Nand no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	
	component Porta_And -- buscando componente Porta_And no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	
	component Porta_OR -- buscando componente Porta_OR no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	

begin

	U0: Porta_Nand port map (a, b, x); -- Porta NAND (U0)
	U1: Porta_And port map (a, b, k); -- Porta AND (U1)
	U2: Porta_OR port map (a, b, z); -- Porta OR (U2)
			
				
	saida_Nand <= x;
	saida_And <= k;
	saida_OR <= z;
	
	
  
  
end comportamento_Portas_Logicas;

