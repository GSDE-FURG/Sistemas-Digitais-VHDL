library ieee;  
 use ieee.std_logic_1164.all;  
 
 entity tb_Full_Adder is  
 end entity tb_Full_Adder;  

 architecture tb of tb_Full_Adder is  
 
  signal  A_tb      : std_logic;  
  signal  B_tb      : std_logic        := '0';  
  signal  Cin_tb 	  : std_logic        := '0';  
  signal  S_tb 			  : std_logic        := '0';  
  signal  Cout_tb			  : std_logic        := '0';  
  
  
 -- signal Clk : std_logic := '1'; -- Clock
  
 
begin 

 C2 : entity  work.Full_Adder port map (A_tb, B_tb , Cin_tb , S_tb, Cout_tb);
  
 -- clock generation  
 
  -- Clk  <= not Clk after 5 ns;  
  -- clock_tb <= Clk;  
  
	
  
  process is
  
  
  begin  
		
		A_tb <= '0';
		B_tb <= '0';
		Cin_tb <= '0';
     
		wait for 10 ns;	  
		
		A_tb <= '0';
		B_tb <= '0';
		Cin_tb <= '1';
      
		
      
		wait for 10 ns;  
		
		A_tb <= '0';
		B_tb <= '1';
		Cin_tb <= '0';
      
		
		wait for 10 ns;	  
		
		A_tb <= '0';
		B_tb <= '1';
		Cin_tb <= '1';
      
		
      
		wait for 10 ns;  
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
      
		
		wait for 10 ns;	  
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '1';
      
		
      
		wait for 10 ns;  
		
		A_tb <= '1';
		B_tb <= '1';
		Cin_tb <= '0';
      
		
		wait for 10 ns;	  
		
		A_tb <= '1';
		B_tb <= '1';
		Cin_tb <= '1';
 
		
   
	wait;  
  end process;  
 end architecture tb;  