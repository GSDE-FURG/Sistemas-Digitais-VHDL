
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Portas_XOR is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_XOR;
 
 
architecture comportamento_Porta_XOR of Porta_XOR is 
  
	signal sinal_intermediario : std_logic; -- Sinal intermediario

begin
  
  y <= a xor b; 
  
end comportamento_Porta_XOR;
