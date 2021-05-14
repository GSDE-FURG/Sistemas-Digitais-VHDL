library ieee;  
 use ieee.std_logic_1164.all;  
 
 entity tb_Flip_Flop_D is  
 end entity tb_Flip_Flop_D;  

 architecture tb of tb_Flip_Flop_D is  
 
  signal  clock_tb      : std_logic 		 := '0';
  signal  reset_tb      : std_logic        := '0';  
  signal  D_tb 			: std_logic        := '0';  
  signal  Q_tb  			: std_logic;  
  
  
  signal Clk : std_logic := '1'; -- Clock
 
 
 begin   
  -- component instantiation  
  DUT : entity work.Flip_Flop_D  
   port map (  
    clock    => clock_tb,  
    reset    => reset_tb,  
    D_in => D_tb,  
    Q  => Q_tb);  
 
 -- clock generation  
  
  Clk  <= not Clk after 5 ns;  
  clock_tb <= Clk;  
  
  process  
  begin  
  
		reset_tb <= '1'; -- Inicia os FFs com 000
      
		wait for 10 ns;	  
      
		reset_tb <= '0'; 
		D_tb <= '0';
      
		wait for 10 ns;  
      
		D_tb <= '1';  
      
		wait for 10 ns;  
      
		D_tb <= '0';  
   
	wait;  
  end process;  
 end architecture tb;  