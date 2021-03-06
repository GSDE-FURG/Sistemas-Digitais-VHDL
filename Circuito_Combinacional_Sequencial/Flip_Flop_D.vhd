Library IEEE;

use IEEE.std_logic_1164.all;



entity Flip_Flop_D is port (
		clock, D: in std_logic; 
		Q: out std_logic
		);
end Flip_Flop_D;



architecture rtl of Flip_Flop_D is 

begin 

		process (clock, D)
		
		begin
		
			if clock = '1' then 
				Q <= D;
			end if;
		end process;
	

end rtl;	
			