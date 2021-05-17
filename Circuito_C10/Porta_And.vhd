
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Porta_And is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_And;
 
 
architecture comportamento_Porta_And of Porta_And is 
  
	signal sinal_intermediario : std_logic; -- Sinal intermediario

begin
  
  y <= a and b; 
  
end comportamento_Porta_And;
