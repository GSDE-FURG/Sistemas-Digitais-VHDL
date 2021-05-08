Library IEEE;

use IEEE.std_logic_1164.all;


entity tb_circuito_FF_Serie is 
	-- vazio
end tb_circuito_FF_Serie;



architecture rtl of tb_circuito_FF_Serie is 



	--DUT
	component Flip_Flop_Serie is port (clock: in std_logic; D: in std_logic; Q: out std_logic); end component;
	
	
	--Signal
	Signal clock_tb, D_tb, Q_tb: std_logic;

		begin 
		
		-- Instaciar FF_D
		FF_Serie: Flip_Flop_Serie port map (clock_tb, D_tb, Q_tb); 
		
			process
			
				begin 
				
				D_tb <= '0';
				clock_tb <= '1';
				
			   --wait;
				wait for 10 ns;
				
				D_tb <= '1';
				clock_tb <= '1';
				
				--Q_tb <= '0';
				
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '1';
				
				
				
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				
				
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				
				D_tb <= '1';
				clock_tb <= '1';
				
				
				
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				D_tb <= '0';
				clock_tb <= '0';
				
				
				
				wait for 10 ns;
				
				
			end process;
			
	end rtl;
				
				