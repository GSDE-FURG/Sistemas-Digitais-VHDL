Library IEEE;

use IEEE.std_logic_1164.all;



entity Flip_Flop_D_Em_Serie_VideoAula is port (
		clock, Reset, D_in: in std_logic; 
		Q: out std_logic
		);
end Flip_Flop_D_Em_Serie_VideoAula ;



architecture rtl of Flip_Flop_D_Em_Serie_VideoAula  is 
	
	signal Q2, Q1: std_logic;

		component Flip_Flop_D is port (clock : in std_logic; Reset: in std_logic;  D_in: in std_logic;  Q: out std_logic); end component;
	
	begin 
		
	 ---process
				--D2 <= D;
				FF2: Flip_Flop_D port map (clock, Reset, D_in, Q2);
				FF1: Flip_Flop_D port map (clock, Reset, Q2, Q1);
				FF0: Flip_Flop_D port map (clock, Reset, Q1, Q);
				
				--Q <= Q0;
				
		-- end process;
		
	
end rtl;	
			