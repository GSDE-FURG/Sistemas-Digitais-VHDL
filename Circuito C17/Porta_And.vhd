-- CODIGO PORTA LOGICA AND

--- Lower: level entity -----

-- library
library ieee;
use ieee.std_logic_1164.all;
 
 
-- entity
entity Porta_And is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_And;
 
 
-- architecture
architecture comportamento_Porta_And of Porta_And is 
  
	--signal sinal_intermediario : std_logic; -- Sinal intermediario

begin

  --sinal_intermediario <= 
  
  y <= a and b; 
  
end comportamento_Porta_And;



-------
--Logical Operators
-- and    Logical And
-- or     Logical Or
-- nand   Logical Nand
-- nor    Logical Nor
-- xor    Logical Xor
-- xnor   Logical Xnor
-------