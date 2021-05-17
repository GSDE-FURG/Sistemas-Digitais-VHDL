
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Porta_Inv is
  port 
	(
    a    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_Inv;
 
 
architecture comportamento_Porta_Inv of Porta_Inv is 
  
	--signal sinal_intermediario : std_logic; -- Sinal intermediario

begin
  
  y <= not a;
  
  
  
end comportamento_Porta_Inv;
