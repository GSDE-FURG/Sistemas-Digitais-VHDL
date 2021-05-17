
-- library
library ieee;
use ieee.std_logic_1164.all;
 
 

entity Circuit_C10 is
  port 
	(
    G1gat    : in  std_logic;
    G2gat    : in  std_logic;
	 G3gat    : in  std_logic;
	 G4gat    : in  std_logic;
    G5gat    : in  std_logic;
	 G6gat    : in  std_logic;
    G7gat    : in  std_logic;
	 G8gat    : in  std_logic;
    Saida_x : out std_logic
    
	 );
end Circuit_C10;
 
 
architecture comportamento_Circuit_C10 of Circuit_C10 is 
  
	signal sinal_intermediario : std_logic; -- Sinal intermediario
	
  	signal m_U0, m_U2, m_U1, m_U4, m_U3, m_U5, m_U6, m_U7, m_U8: std_logic;  -- sinais intermediarios
	
	component Porta_Nand -- buscando componente POrta_Nand no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	
	component Porta_And -- buscando componente POrta_Nand no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	
	component Porta_OR -- buscando componente POrta_Nand no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;
	
	component Porta_Inv -- buscando componente POrta_Nand no projeto
	
		port (a    : in  std_logic;  y : out std_logic );
	
	end component;

begin -- começa o processo de composição lógica 


	U0: Porta_Nand port map (G1gat, G2gat, m_U0); -- Porta NAND (U0)
	U2: Porta_Inv port map (G5gat, m_U2); -- Porta NAND (U2)
	
	U3: Porta_Inv port map (G8gat, m_U3); -- INV
	
	
	-- Próximo nivel de porta logica
	
	U4: Porta_Nand port map (m_U0, m_U2, m_U4); -- Porta NAND
	U1: Porta_Nand port map (G3gat, G4gat, m_U1); -- Porta NAND
	U5: Porta_And port map (G6gat, G7gat, m_U5); -- Porta NAND
	U6: Porta_And port map (G7gat, m_U3, m_U6); -- Porta NAND
	
	-- Próximo nivel de porta logica
	
	U8: Porta_And port map (m_U4, m_U1, m_U8); -- Porta AND
	U7: Porta_Nand port map (m_U5, m_U6, m_U7); -- Porta AND
	
	
	-- Próximo nivel de porta logica
	
	U9: Porta_OR port map (m_U8, m_U7, Saida_x); -- Porta AND

	
	end comportamento_Circuit_C10;
