Library IEEE;

use IEEE.std_logic_1164.all;



entity Circuito_Combinacional_Sequencial is port (
		clock: in std_logic; 
		A: in std_logic;
		B: in std_logic;
		Q: out std_logic
		);
end Circuito_Combinacional_Sequencial;



architecture rtl of Circuito_Combinacional_Sequencial is 
	
	signal Q2, Q1, Porta_And, Out_x: std_logic;

		component Flip_Flop_D is port (clock : in std_logic; D: in std_logic;  Q: out std_logic); end component;
	
	begin 
	
				Porta_And <= A and B; -- Declaração Porta AND	
				
				FF0: Flip_Flop_D port map (clock, Porta_And, Out_x);
				
				Q <= Out_x; 
				
end rtl;	
			