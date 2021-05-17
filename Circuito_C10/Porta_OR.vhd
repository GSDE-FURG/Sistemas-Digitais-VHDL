
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Porta_OR is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_OR;
 
 
architecture comportamento_Porta_OR of Porta_OR is 
  
	signal sinal_intermediario : std_logic; -- Sinal intermediario

begin
  
  y <= a or b; 
  
end comportamento_Porta_OR;
