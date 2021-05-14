library ieee;  
 use ieee.std_logic_1164.all; 

 
 ENTITY Flip_Flop_D_Serie IS  
	port(  
      clock : in std_logic;  --pino de entrada
      reset : in std_logic;  -- pino de entrada
      D_in :  in std_logic;  -- pino de entrada
		Q_out : out std_logic; -- pino de saida
		Q: buffer std_logic_vector (3 downto 0) --buffer não conta como pino
 );  
 
 
 end Flip_Flop_D_Serie;  
 
 architecture RTL of Flip_Flop_D_Serie is  

 
 begin 
 
		Q_out <= Q(0);   -- Saida da barreira dos Flip Flops(FFD), Q_out recebe a saida do 4° FFD
	
	process(clock,reset)  
	
	begin  
	
		 if (reset = '1') then     -- Pino de reset
					
					Q <= "0000";
		 
		 elsif rising_edge(clock) then 
		 
				Q(3) <= D_in;  -- 1° Flip Flop (FFD) recebe entrada D
				Q(2) <= Q(3);  -- 2° Flip Flop recebe saida do 1° FFD
				Q(1) <= Q(2);  -- 3° Flip Flop recebe saida do 2° FFD
				Q(0) <= Q(1);  -- 4° Flip Flop recebe saida do 3° FFD
		
		end if;  
 
 end process;
 
 end RTL;