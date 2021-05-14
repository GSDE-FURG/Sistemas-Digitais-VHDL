Library IEEE;

use IEEE.std_logic_1164.all;


entity tb_Flip_Flop_D_Em_Serie_VideoAula is 
	-- vazio
end tb_Flip_Flop_D_Em_Serie_VideoAula;



architecture rtl of tb_Flip_Flop_D_Em_Serie_VideoAula is 



	--DUT
	component  Flip_Flop_D_Em_Serie_VideoAula is port (clock: in std_logic; Reset: in std_logic; D_in: in std_logic; Q: out std_logic); end component;
	
	
	--Signal
	Signal clock_tb, D_tb, Q_tb, reset_tb: std_logic;

		begin 
		
		-- Instaciar FF_D
		FF_Serie:  Flip_Flop_D_Em_Serie_VideoAula port map (clock_tb, reset_tb, D_tb, Q_tb); 
		
			process
			
				begin 
				reset_tb <= '1';  --inicio 
				D_tb <= '0';
				clock_tb <= '0';
				
			   --wait;
				wait for 10 ns;
				
				reset_tb <= '0';   --
				D_tb <= '0';
				clock_tb <= '0';
				
			   --wait;
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida FFD armazena 1°
				clock_tb <= '1';
				D_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				
				reset_tb <= '0'; -- esperando proxima borda de subida do clock
				clock_tb <= '0';
				D_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida 2° FFD armazena do 1° FFD 
				clock_tb <= '1';
				D_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
					
				reset_tb <= '0'; -- esperando proxima borda de subida do clock
				clock_tb <= '0';
				D_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida 3° FFD armazena do 2° FFD 
				clock_tb <= '1';
				D_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				
			end process;
			
	end rtl;
				
				