LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Tb_ULA_4bits IS
END Tb_ULA_4bits;
 
ARCHITECTURE behavior OF Tb_ULA_4bits IS 
 
 --– Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT ULA_4bits
 PORT(
 A : IN signed(3 downto 0);
 B : IN signed(3 downto 0);
 Seletor : IN std_logic_vector(2 downto 0);
 Saida : OUT signed(3 downto 0)
 );
 END COMPONENT;
 

 --– Inputs
 signal A : signed(3 downto 0) := (others => '0');
 signal B : signed(3 downto 0) := (others => '0');
 signal Seletor : std_logic_vector(2 downto 0) := (others => '0');

 --– Outputs
 signal Saida : signed(3 downto 0);
 
BEGIN
 
 --– Instantiate the Unit Under Test (UUT)
 uut: ULA_4bits PORT MAP (
 A => A,
 B => B,
 Seletor => Seletor,
 Saida => Saida
 );

 --– Stimulus process
 stim_proc: process
 begin 
 --– hold reset state for 100 ns.
 wait for 100 ns;

 --– insert stimulus here 

 A <= "1001";
 B <= "0101";
 
	Seletor <= "000";  -- adição
	wait for 100 ns;
		 Seletor <= "001";  -- – subtracão 
	wait for 100 ns;  
		 Seletor <= "010"; -- -- – sub 1 
	wait for 100 ns;
		 Seletor <= "011";  -- – add 1 
	
	
 end process;

END;