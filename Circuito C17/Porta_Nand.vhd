-- CODIGO PORTA LOGICA NAND

--- Lower: level entity -----

-- library
library ieee;
use ieee.std_logic_1164.all;
 
 
-- entity
entity Porta_NAND is
  port 
	(
    a    : in  std_logic;
    b    : in  std_logic;
    y : out std_logic
    
	 );
end Porta_NAND;
 
 
-- architecture
architecture comportamento_Porta_NAND of Porta_NAND is 
  
--signal sinal_intermediario : std_logic; -- Sinal intermediario

begin

  --sinal_intermediario <= 
  
  y <= a nand b; 
  
end comportamento_Porta_NAND;



-------
--Logical Operators
-- NAND    Logical NAND
-- or     Logical Or
-- nNAND   Logical NNAND
-- nor    Logical Nor
-- xor    Logical Xor
-- xnor   Logical Xnor
-------