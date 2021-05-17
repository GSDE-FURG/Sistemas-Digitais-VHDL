-- library
library ieee;
use ieee.std_logic_1164.all;
 
-- entity
entity ex_and is
  port 
(
    a    	: in  std_logic;
    b    	: in  std_logic;
    y 		: out std_logic
    
);
end entity ex_and;
 
-- architecture
architecture arq_and of entity ex_and is 
  
	signal sinal_intermediario : std_logic;

begin

  sinal_intermediario <= a and b; 
  
  y <= sinal_intermediario;
  
end architecture arq_and;