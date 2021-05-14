library ieee;  
 use ieee.std_logic_1164.all; 

 
 ENTITY Flip_Flop_D IS  
	port(  
      clock : in std_logic;  
      reset : in std_logic;  
      D_in : in std_logic;  
      Q : out std_logic  
 );  
 
 
 end Flip_Flop_D;  
 
 architecture RTL of Flip_Flop_D is  
 
 begin 
 
	process(clock,reset)  
	
	begin  
	
		 if (reset = '1') then     -- Pino de reset
				Q <= '0';  
		 
		 elsif rising_edge(clock) then  -- Semelhante ao (clock 'event and clock = '1')
		 
				Q <= D_in;  
			
		
		end if;  
 
 end process;
 
 end RTL;