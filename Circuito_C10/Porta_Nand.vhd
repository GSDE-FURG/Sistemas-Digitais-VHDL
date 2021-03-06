
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Porta_Nand is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_Nand;
 
 
architecture comportamento_Porta_Nand of Porta_Nand is 
  
	signal sinal_intermediario : std_logic; -- Sinal intermediario

begin
  
  y <= a nand b; 
  
end comportamento_Porta_Nand;
