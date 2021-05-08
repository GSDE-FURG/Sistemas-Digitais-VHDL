Library IEEE;

use IEEE.std_logic_1164.all;


entity tb_Circuito_Combinacional_Sequencial is 
	-- vazio
end tb_Circuito_Combinacional_Sequencial;



architecture rtl of tb_Circuito_Combinacional_Sequencial is 



	--DUT
	component Circuito_Combinacional_Sequencial is port (clock: in std_logic; A: in std_logic; B: in std_logic; Q: out std_logic); end component;
	
	
	--Signal
	Signal clock_tb, A_tb, B_tb, Q_tb: std_logic;

		begin 
		
		-- Instaciar FF_D
		FF_Serie: Circuito_Combinacional_Sequencial port map (clock_tb, A_tb, B_tb, Q_tb); 
		
			process
			
				begin 
				
				A_tb <= '0';
				B_tb <= '0';
				clock_tb <= '0';
				
			   --wait;
				wait for 10 ns;
				
				A_tb <= '0';
				B_tb <= '0';
				clock_tb <= '1';
			
			wait for 10 ns;
				
				A_tb <= '0';
				B_tb <= '1';
				clock_tb <= '0';
			
			wait for 10 ns;
				
				A_tb <= '0';
				B_tb <= '1';
				clock_tb <= '1';
			
			wait for 10 ns;
				
				A_tb <= '1';
				B_tb <= '0';
				clock_tb <= '0';
			
			wait for 10 ns;
				
				A_tb <= '1';
				B_tb <= '0';
				clock_tb <= '1';
			
			wait for 10 ns;
				
				A_tb <= '1';
				B_tb <= '1';
				clock_tb <= '0';
			
			wait for 10 ns;
				
				A_tb <= '1';
				B_tb <= '1';
				clock_tb <= '1';
			
			
				
				
				wait for 10 ns;
				
				
			end process;
			
	end rtl;
				
				